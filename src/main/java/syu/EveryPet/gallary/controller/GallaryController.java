package syu.EveryPet.gallary.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import syu.EveryPet.gallary.service.GallaryService;

@Controller
@RequestMapping("/gallary")
public class GallaryController {

	@Autowired
	GallaryService service;

	@RequestMapping("/gallary.do")
	public void gallary() {

	}
}
