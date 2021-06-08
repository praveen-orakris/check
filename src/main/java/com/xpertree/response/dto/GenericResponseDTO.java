package com.xpertree.response.dto;

public class GenericResponseDTO<T> {
	private T response;
	private Status status;
	
	public T getResponse() {
		return response;
	}
	public void setResponse(T response) {
		this.response = response;
	}
	public Status getStatus() {
		return status;
	}
	public void setStatus(Status status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "GenericResponseDTO [response=" + response + ", status=" + status + "]";
	}
	
	

}
