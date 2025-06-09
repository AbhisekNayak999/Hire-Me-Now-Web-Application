package com.jobapp.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jobapp.model.JobPost;
import com.jobapp.service.JobService;

@Controller
public class JobController 
{
	
	@Autowired
	public JobService service;

	@GetMapping({"/", "home"})
	public String home()
	{
		return "home";
	}

	
	
	
	@GetMapping("addjob")
	public String addjob(Model model)
	{
		// Create a new JobPost object to bind the form
        model.addAttribute("jobPost", new JobPost());
		
		
	    List<String> techStackOptions = Arrays.asList(
	            "Java", "JavaScript", "SpringBoot", "TypeScript", "Go", "Kotlin", "Rust", "PHP",
	            "HTML5", "CSS3", "GraphQL", "Raspberry Pi", "Arduino", "IoT (Internet of Things)",
	            "Apache Kafka", "Elasticsearch", "Unity", "Game Development", "Vue.js", "Angular",
	            "React Native", "Flutter","React", "Node.js", "Express.js", "Django", "Flask", "Ruby on Rails",
	            "Laravel", "TensorFlow", "PyTorch", "Kubernetes", "Docker", "Jenkins", "AWS (Amazon Web Services)",
	            "Azure", "Google Cloud", "DevOps", "Blockchain", "Machine Learning", "Artificial Intelligence",
	            "Cybersecurity", "CISSP", "CompTIA Security+", "Certified Ethical Hacker (CEH)",
	            "Scrum", "Agile", "Kanban"
	        );

	        model.addAttribute("techStackOptions", techStackOptions);
		
		return "addjob";
	}

	
	
	
	@GetMapping("viewalljobs")
	public ModelAndView viewAllJob(ModelAndView mv)
	{
		List<JobPost> jobs =  service.getAllJob();
		
//		System.out.println("=============");
//		
//		for(JobPost job : jobs)
//		{
//			System.out.println(job);
//			
//		}
//		System.out.println("==============");
		
		mv.addObject("jobPosts", jobs);
		mv.setViewName("viewalljob");

		return mv;
	}
	
	
	
	
	@PostMapping("handleForm")
	public String handleForm(JobPost job, Model model)
	{
		service.addJob(job);
		
		model.addAttribute("jobPost", job);

		return "success";
	}
	


	@GetMapping("contact")
	public String Contact()
	{
		return "contact";
	}
	
	
	@PostMapping("submitContact")
	public String submitContact()
	{
		return "submitContact";
	}
	
}







