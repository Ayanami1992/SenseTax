package com.jp.qxd.tax.model.pdf;

public class Position {
	public Position(int x, int y, int ex, int ey, String type, int size, int spacing, int index, int interceptPosition) {
		this.x = x;
		this.y = y;
		this.ex = ex;
		this.ey = ey;
		this.type = type;
		this.size = size;
		this.spacing = spacing;
		this.index = index;
		this.interceptPosition = interceptPosition;
	}

	public Position(int x, int y, int ex, int ey) {
		this(x, y, ex, ey, "textArea", 8, 0, 0, 0);
	}

	public Position(int x, int y, int ex, int ey, int size) {
		this(x, y, ex, ey, "textArea", size, 0, 0, 0);
	}

	public Position(int x, int y, int ex, int ey, String type, int size) {
		this(x, y, ex, ey, type, size, 0, 0, 0);
	}

	public Position(int x, int y) {
		this(x, y, 0, 0, "text", 8, 0, 0, 0);
	}


	public Position(int x, int y, int size) {
		this(x, y, 0, 0, "text", size, 0, 0, 0);
	}

	public Position(int x, int y, int ex, int ey, String type, int size, int spacing, int index) {
		this(x, y, ex, ey, type, size, spacing, index, 0);
	}

	public Position(int x, int y, String type, int size, int spacing, int index) {
		this(x, y, 0, 0, type, size, spacing, index, 0);
	}

	public Position(int x, int y, String type, int size, int spacing, int index, int interceptPosition) {
		this(x, y, 0, 0, type, size, spacing, index, interceptPosition);
	}

	private int x;

	private int y;

	private int ex;

	private int ey;

	private Object value;

	private String type;

	private String direction;

	private int size;

	private int spacing;

	private int index;

	private int interceptPosition;

	public int getX() {
		return x;
	}

	public void setX(int x) {
		this.x = x;
	}

	public int getY() {
		return y;
	}

	public void setY(int y) {
		this.y = y;
	}

	public int getEx() {
		return ex;
	}

	public void setEx(int ex) {
		this.ex = ex;
	}

	public int getEy() {
		return ey;
	}

	public void setEy(int ey) {
		this.ey = ey;
	}

	public Object getValue() {
		return value;
	}

	public void setValue(Object value) {
		this.value = value;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public int getSpacing() {
		return spacing;
	}

	public void setSpacing(int spacing) {
		this.spacing = spacing;
	}

	public int getIndex() {
		return index;
	}

	public void setIndex(int index) {
		this.index = index;
	}

	public int getInterceptPosition() {
		return interceptPosition;
	}

	public void setInterceptPosition(int interceptPosition) {
		this.interceptPosition = interceptPosition;
	}

}
