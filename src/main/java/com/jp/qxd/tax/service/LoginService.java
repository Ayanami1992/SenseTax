package com.jp.qxd.tax.service;

import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.UserMapper;
import com.jp.qxd.tax.mapper.YearMapper;
import com.jp.qxd.tax.model.User;
import com.jp.qxd.tax.model.YearModel;
import com.jp.qxd.tax.utils.JsonWebTokenUtils;

@Service
public class LoginService {

	@Autowired
	private UserMapper userMapper;
	@Autowired
	private JavaMailSender javaMailSender;
	@Autowired
	private YearMapper yearMapper;

	public List<User> getUsers(User user) {
		return userMapper.getUsers(user);
	}

	public List<YearModel> getYear() {
		return yearMapper.getYears();
	}

	public List<User> getAvailableUsers(User user) {
		user.setStatus("1");
		return userMapper.getUsers(user);
	}

	@Transactional
	public User createUser(User user) {
		user.setName("user");
		user.setStatus("0");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		user.setPassword(encoder.encode(user.getPassword()));
		userMapper.createUsers(user);
		user = this.getUsers(user).get(0);
		user.setAuth_key(JsonWebTokenUtils.createToken(user.getId()));
		userMapper.updateUserAuthKey(user);
		userMapper.createUserAuthority(user);
		return user;
	}

	public int updateUserStatus(User user) {
		List<User> users = userMapper.getUsers(user);
		if (users == null || users.size() == 0) {
			return 0;
		}
		return userMapper.activeUser(users.get(0));
	}

	public void sendMail(User user, String url) {
		StringBuilder stringBuilder=new StringBuilder();
		stringBuilder.append("<html><head><title>You're almost there!</title></head><body>");
		stringBuilder.append("<p>Hi there</p>" +
				"\r\n" +
				"<p>We've received your request for a new account.</p>" +
				"\r\n" +
				"<p>Please click the following link within 7 days.</p>");
		stringBuilder.append("</br><a href='http://");
		stringBuilder.append(url);
		stringBuilder.append("/verifyAccount?auth_key=");
		stringBuilder.append(user.getAuth_key());
		stringBuilder.append("'>[法人税]Please verify your account</a></body><html>");
		MimeMessage mimeMessage=javaMailSender.createMimeMessage();
		//multipart模式
		try {
			MimeMessageHelper mimeMessageHelper=new MimeMessageHelper(mimeMessage, true);
			mimeMessageHelper.setTo(user.getEmail());//收件人邮箱user.getMail()
			mimeMessageHelper.setFrom("475129036@qq.com");//发件人邮箱
			mimeMessage.setSubject("sign up confirmation");
			//启用html
			mimeMessageHelper.setText(stringBuilder.toString(),true);
			javaMailSender.send(mimeMessage);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}

}
