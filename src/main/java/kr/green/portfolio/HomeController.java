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
import kr.green.portfolio.vo.ScheduleVO;

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
	
	@RequestMapping(value= {"/admin-insert"},method = RequestMethod.POST)
	public ModelAndView adminInsertPost(ModelAndView mv,Integer leagueNum,Integer seasonStart,Integer roundNum, String date,
			String time,String homeTeam,String awayTeam,String stadium){
		
		mv.addObject("leagueNum", leagueNum);
		mv.addObject("seasonStart", seasonStart);
		mv.addObject("roundNum", roundNum);
		mv.addObject("date", date);
		mv.addObject("time", time);
		mv.addObject("homeTeam", homeTeam);
		mv.addObject("stadium", stadium);
		mv.setViewName("/admin");
	    
		leagueService.getScheduleInsert(leagueNum,seasonStart,roundNum,date,time,homeTeam,awayTeam,stadium);
		
		return mv;
	}
	@RequestMapping(value= {"/admin-update"},method = RequestMethod.POST)
	public String adminUpdatePost(ScheduleVO sVo){
		
		leagueService.getScheduleUpdate(sVo);
		
		return "/admin";
	}
	
}
