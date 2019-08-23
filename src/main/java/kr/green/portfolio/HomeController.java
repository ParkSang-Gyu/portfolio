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
import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.LeagueVO;
import kr.green.portfolio.vo.TeamVO;

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
	public String leagueGet(Model model,LeagueVO plVo,Integer roundNum,TeamVO tVo) {
		ArrayList<LeagueVO> firstSchedule = leagueService.getFirstSchedule(plVo,roundNum);
		ArrayList<LeagueVO> schedule = leagueService.getSchedule(plVo,roundNum);
		ArrayList<TeamVO> teamTable = leagueService.getTeamTable(tVo);
		model.addAttribute("firstSchedule",firstSchedule);
		model.addAttribute("schedule",schedule);
		model.addAttribute("roundNum", roundNum);
		model.addAttribute("teamTable",teamTable);
		return "/leagues/league";
	}
	@RequestMapping(value = "/championsLeague",method = RequestMethod.GET)
	public String championsLeagueGet() {
		return "/tournaments/tournament";
	}
	@RequestMapping(value = "/europaLeague",method = RequestMethod.GET)
	public String europaLeagueGet() {
		return "/tournaments/tournament";
	}
	@RequestMapping(value = "/statistics",method = RequestMethod.GET)
	public String statisticsGet() {
		return "/statistics/statistics";
	}
	@RequestMapping(value = "/comparison",method = RequestMethod.GET)
	public ModelAndView comparisonGet(ModelAndView mv) {
		mv.setViewName("/comparison/comparison");
		return mv;
	}
	@RequestMapping(value = "/teams",method = RequestMethod.GET)
	public ModelAndView teamsGet(ModelAndView mv,String team) {
		TeamVO teamInfo = leagueService.getTeamInfo(team);
		ArrayList<PlayerVO> playerInfo = leagueService.getPlayerInfo(team);
		mv.addObject("teamInfo",teamInfo);
		mv.addObject("playerInfo",playerInfo);
		mv.addObject("name",team);
		mv.setViewName("/teams/team");
		return mv;
	}
	@RequestMapping(value = "/players",method = RequestMethod.GET)
	public ModelAndView playersGet(ModelAndView mv,String player) {
		PlayerVO playerInfo = leagueService.getPlayer(player);
		mv.addObject("playerInfo",playerInfo);
		mv.addObject("player",player);
		mv.setViewName("/players/player");
		return mv;
	}
	
}
