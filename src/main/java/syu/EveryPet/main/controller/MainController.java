package syu.EveryPet.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import syu.EveryPet.main.service.MainService;

@Controller
@RequestMapping("/main")
public class MainController {
	
	@Autowired
	MainService service;
	
	@RequestMapping("/main.do")
	public void main() {
	}
	
}
