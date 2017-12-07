package com.luv2code.springdemo.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	@RequestMapping("/showForm")
	public String showForm()
	{
		return "helloWorld-form";
	}
	
	/*@RequestMapping("/processForm")
	public String processForm()
	{
		return "helloWorld";
	}*/
	
	/*@RequestMapping("/processFormVersionTwo")
	public String processForm(HttpServletRequest request, Model model)
	{
		String theName = request.getParameter("studentName");
		theName = theName.toUpperCase();
		String result = "Yo! " + theName;
		model.addAttribute("message",result);
		return "helloWorld";
	}*/
	
	@RequestMapping("/processFormVersionThree")
	public String processForm(@RequestParam("studentName") String theName, Model model)
	{
		
		theName = theName.toUpperCase();
		String result = "Yo!! " + theName;
		model.addAttribute("message",result);
		return "helloWorld";
	}
}
