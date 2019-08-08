package kr.green.portfolio;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.vo.LeagueVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value= {"/"})
	public ModelAndView openTilesView(ModelAndView mv) throws Exception{
	    mv.setViewName("/main/home");
	    
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
	@RequestMapping(value = "/comparison",method = RequestMethod.GET)
	public ModelAndView comparisonGet(ModelAndView mv) {
		mv.setViewName("/comparison/comparison");
		return mv;
	}
	@RequestMapping(value = "/leagues",method = RequestMethod.GET)
	public String leaguesGet(LeagueVO lVo) {
		
		return "/leagues/league";
	}
	@RequestMapping(value = "/tournaments",method = RequestMethod.GET)
	public String tournamentsGet() {
		return "/tournaments/tournament";
	}
}
