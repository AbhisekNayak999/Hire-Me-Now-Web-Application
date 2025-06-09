package com.jobapp.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jobapp.model.JobPost;
import com.jobapp.repo.JobRepo;

@Service
public class JobService 
{

	@Autowired
	public JobRepo repo;

	public void addJob(JobPost jobPost)
	{
		repo.addJobPost(jobPost);
	}
	
	public List<JobPost> getAllJob()
	{
		List<JobPost> jobs = repo.returnAllJobPosts();
		
		return jobs;
	}
}
