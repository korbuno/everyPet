package syu.EveryPet.map;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import syu.EveryPet.repository.domain.MapDomain;
import syu.EveryPet.repository.domain.helper.MapData;

@Controller
@RequestMapping("/map")
public class MapController {
	
	@RequestMapping("/map.do")
	ModelAndView map(@RequestParam(required=false) Integer code) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("map/map");
		return mav.addObject("code", code);
	}

	@ResponseBody
	@RequestMapping("/reqDataHosptl.do")
	List<MapDomain> reqDataHosptl() throws IOException {
		return new MapData().getJsonFromUrl("https://openapi.gg.go.kr/Animalhosptl?Key=b4540e4dd7aa4346805641a7c0857063&Type=json&pSize=1000&pIndex=", 1, "Animalhosptl");
	}
	
	@ResponseBody
	@RequestMapping("/reqDataMedicene.do")
	List<MapDomain> reqDataMedicene() throws IOException {
		return new MapData().getJsonFromUrl("https://openapi.gg.go.kr/AnimalPharmacy?Key=b4540e4dd7aa4346805641a7c0857063&Type=json&pSize=1000&pIndex=", 1, "AnimalPharmacy");
	}
	@ResponseBody
	@RequestMapping("/reqDataCenter.do")
	List<MapDomain> reqDataCenter() throws IOException {
		return new MapData().getJsonFromUrl("https://openapi.gg.go.kr/OrganicAnimalProtectionFacilit?Key=b4540e4dd7aa4346805641a7c0857063&Type=json&pSize=1000&pIndex=", 1, "OrganicAnimalProtectionFacilit");
	}
	@ResponseBody
	@RequestMapping("/reqDataRescue.do")
	List<MapDomain> reqDataRescue() throws IOException {
		return new MapData().getJsonFromUrl("https://openapi.gg.go.kr/WldnsRescueMedicalTreatInst?Key=b4540e4dd7aa4346805641a7c0857063&Type=json&pSize=1000&pIndex=", 1, "WldnsRescueMedicalTreatInst");
	}
}
