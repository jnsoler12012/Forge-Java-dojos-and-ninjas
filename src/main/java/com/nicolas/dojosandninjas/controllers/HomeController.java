package com.nicolas.dojosandninjas.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nicolas.dojosandninjas.models.Dojo;
import com.nicolas.dojosandninjas.models.Ninja;
import com.nicolas.dojosandninjas.services.ApiService;

import jakarta.validation.Valid;

@Controller
public class HomeController {
    @Autowired
	private ApiService apiService;


	
	@RequestMapping("/dojos")
	public String dojos(Model model) {
		List<Dojo> dojos = apiService.findAllDojos();
		model.addAttribute("dojos", dojos);
		return "dojos";
	}
	
	
	@RequestMapping("/dojos/new")
	public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
		return "newDojo";
	}
	
	@RequestMapping("/ninjas/new")
	public String newNinja(@ModelAttribute("ninja") Ninja ninja, Model model) {
		List<Dojo> dojos = apiService.findAllDojos();
		model.addAttribute("dojos", dojos);
		return "newNinja";
	}
	
	@RequestMapping(value="/dojos", method=RequestMethod.POST)
	public String createDojo(
			@Valid @ModelAttribute("dojo") Dojo dojo,
			BindingResult result) {
		if (result.hasErrors()) {
			return "newDojo";
		} else {
			apiService.createDojo(dojo);
			return "redirect:/dojos";
		}
	}
	
	@RequestMapping(value="/ninjas", method=RequestMethod.POST)
	public String createNinja(
			@Valid @ModelAttribute("ninja") Ninja ninja,
			BindingResult result) {
		if (result.hasErrors()) {
			return "newNinja";
		} else {
			apiService.createNinja(ninja);
			return "redirect:/ninjas";
		}
	}
}
