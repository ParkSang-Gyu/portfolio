package kr.green.portfolio;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.LeagueService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	LeagueService leagueService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value= {"/"})
	public ModelAndView openTilesView(ModelAndView mv) throws Exception{
	    mv.setViewName("/main/home");
	    return mv;
	}
	
	@RequestMapping(value= {"/admin"},method = RequestMethod.GET)
	public String adminGet(Model model){
	    return "admin";
	}
	
	@RequestMapping(value= {"/admin"},method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> adminPost(Model model,Integer leagueNum,Integer seasonStart,Integer seasonEnd,Integer roundNum,
			String date,String time,String status,String homeTeam,String awayTeam,String stadium){
		Map<Object, Object> map = new HashMap<Object, Object>();
		
		map.put("leagueNum", leagueNum);
		map.put("seasonStart", seasonStart);
		map.put("seasonEnd", seasonStart);
		map.put("roundNum", roundNum);
		map.put("date", date);
		map.put("time", time);
		map.put("status", status);
		map.put("homeTeam", homeTeam);
		map.put("awayTeam", awayTeam);
		map.put("stadium", stadium);
		
		leagueService.getScheduleData(leagueNum, seasonStart, seasonEnd, roundNum, date, time, status, homeTeam, 
				awayTeam, stadium);
	    return map;
	}
}
