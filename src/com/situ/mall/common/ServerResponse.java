package com.situ.mall.common;

import java.io.Serializable;

public class ServerResponse<T> implements Serializable {

	//状态码 成功返回0 失败返回1
	private Integer status;
	//状态信息 
	private String msg;
	// 返回的值Object
	private T data;
	
	public ServerResponse() {
		super();
		
	}

	public ServerResponse(Integer status) {
		super();
		this.status = status;
	}

	public ServerResponse(Integer status, String msg) {
		super();
		this.status = status;
		this.msg = msg;
	}

	public ServerResponse(Integer status, String msg, T data) {
		super();
		this.status = status;
		this.msg = msg;
		this.data = data;
	}

	public ServerResponse(String msg, T data) {
		super();
		this.msg = msg;
		this.data = data;
	}

	public ServerResponse(Integer status, T data) {
		super();
		this.status = status;
		this.data = data;
	}
	
	//告诉前台，返回的状态
	public static<T> ServerResponse<T> createSuccess() {
		return new ServerResponse<>(ResponseCode.SUCCESS.getCode());
	}
	//告诉前台，返回status msg
	public static<T> ServerResponse<T> createSuccess(String msg) {
		return new ServerResponse<>(ResponseCode.SUCCESS.getCode(), msg);
	}
	//告诉前台返回 status msg data
	public static<T> ServerResponse<T> createSuccess(String msg,T data) {
		return new ServerResponse<>(ResponseCode.SUCCESS.getCode(), msg, data );
	}
	//告诉前台返回错的状态
	public static<T> ServerResponse<T> createError() {
		return new ServerResponse<>(ResponseCode.ERROR.getCode());
	}
	//告诉前台返回的状态 msg
	public static<T> ServerResponse<T> createError(String msg) {
		return new ServerResponse<>(ResponseCode.ERROR.getCode(), msg);
	}

	/**
	 * @return the status
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * @return the msg
	 */
	public String getMsg() {
		return msg;
	}

	/**
	 * @return the data
	 */
	public T getData() {
		return data;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * @param msg the msg to set
	 */
	public void setMsg(String msg) {
		this.msg = msg;
	}

	/**
	 * @param data the data to set
	 */
	public void setData(T data) {
		this.data = data;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "ServerResponse [status=" + status + ", msg=" + msg + ", data=" + data + "]";
	}
	
	
	
	
	
	
}
