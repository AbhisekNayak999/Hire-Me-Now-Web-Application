package com.jobapp.model;


import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

//import lombok.AllArgsConstructor;
//import lombok.Data;
//import lombok.NoArgsConstructor;
//
//
//@Data
//@NoArgsConstructor
//@AllArgsConstructor
@Component
@Scope("prototype")
public class JobPost 
{
	private int postId;
	
	private String postProfile;
	
	private String postDesc;
	
	private int reqExperience;
	
	private String[] postTechStack;

	public int getPostId() {
		return postId;
	}

	public void setPostId(int postId) {
		this.postId = postId;
	}

	public String getPostProfile() {
		return postProfile;
	}

	public void setPostProfile(String postProfile) {
		this.postProfile = postProfile;
	}

	public String getPostDesc() {
		return postDesc;
	}

	public void setPostDesc(String postDesc) {
		this.postDesc = postDesc;
	}

	public int getReqExperience() {
		return reqExperience;
	}

	public void setReqExperience(int reqExperience) {
		this.reqExperience = reqExperience;
	}

	public String[] getPostTechStack() {
		return postTechStack;
	}

	public void setPostTechStack(String[] postTechStack) {
		this.postTechStack = postTechStack;
	}

	public JobPost(int postId, String postProfile, String postDesc, int reqExperience, String[] postTechStack) {
		super();
		this.postId = postId;
		this.postProfile = postProfile;
		this.postDesc = postDesc;
		this.reqExperience = reqExperience;
		this.postTechStack = postTechStack;
	}

	public JobPost() {
	}

	@Override
	public String toString() {
		return "JobPost [postId=" + postId + ", postProfile=" + postProfile + ", postDesc=" + postDesc
				+ ", reqExperience=" + reqExperience + ", postTechStack=" + postTechStack + "]";
	}
	
	
	
}
