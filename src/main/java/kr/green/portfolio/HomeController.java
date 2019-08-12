package kr.green.portfolio;

import java.util.ArrayList;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.LeagueService;
import kr.green.portfolio.vo.BundesligaVO;
import kr.green.portfolio.vo.LaLigaVO;
import kr.green.portfolio.vo.PremierLeagueVO;
import kr.green.portfolio.vo.SerieAVO;

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
	@RequestMapping(value = "/premierleague",method = RequestMethod.GET)
	public String premierleagueGet(Model model,PremierLeagueVO plVo) {
		ArrayList<PremierLeagueVO> schedule = leagueService.getSchedule(plVo);
		model.addAttribute("schedule",schedule);
		return "/leagues/premierleague";
	}
	@RequestMapping(value = "/laliga",method = RequestMethod.GET)
	public String laligaGet(LaLigaVO lVo) {
		return "/leagues/laliga";
	}
	@RequestMapping(value = "/bundesliga",method = RequestMethod.GET)
	public String bundesligaGet(BundesligaVO lVo) {
		return "/leagues/bundesliga";
	}
	@RequestMapping(value = "/seriea",method = RequestMethod.GET)
	public String serieaGet(SerieAVO lVo) {
		return "/leagues/seriea";
	}
	@RequestMapping(value = "/championsleague",method = RequestMethod.GET)
	public String championsleagueGet() {
		return "/tournaments/championsleague";
	}
	@RequestMapping(value = "/europaleague",method = RequestMethod.GET)
	public String europaleagueGet() {
		return "/tournaments/europaleague";
	}
	@RequestMapping(value = "/statistics",method = RequestMethod.GET)
	public String statisticssGet() {
		return "/statistics/statistics";
	}
	@RequestMapping(value = "/comparison",method = RequestMethod.GET)
	public ModelAndView comparisonGet(ModelAndView mv) {
		mv.setViewName("/comparison/comparison");
		return mv;
	}
	@RequestMapping(value = "/teams",method = RequestMethod.GET)
	public String teamsGet() {
		return "/teams/team";
	}
	@RequestMapping(value = "/players",method = RequestMethod.GET)
	public String playersGet() {
		return "/players/player";
	}
	
}
