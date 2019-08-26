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
import kr.green.portfolio.vo.AssistStandingsVO;
import kr.green.portfolio.vo.GoalStandingsVO;
import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.RatingStandingsVO;
import kr.green.portfolio.vo.ScheduleVO;
import kr.green.portfolio.vo.TeamVO;

/**
 * Handles requests for the application home page.
 */
@Controller
public class StatController {
	
	@Autowired
	LeagueService leagueService;
	
	private static final Logger logger = LoggerFactory.getLogger(StatController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/premierleague",method = RequestMethod.GET)
	public String leagueGet(Model model,ScheduleVO sVo,Integer roundNum,TeamVO tVo,GoalStandingsVO gVo,
			AssistStandingsVO aVo,RatingStandingsVO rVo,Integer leagueNum) {
		
		ArrayList<ScheduleVO> firstSchedule = leagueService.getFirstSchedule(sVo,roundNum);
		ArrayList<ScheduleVO> schedule = leagueService.getSchedule(sVo,roundNum);
		ArrayList<TeamVO> teamTable = leagueService.getTeamTable(tVo);
		ArrayList<GoalStandingsVO> goals = leagueService.getGoals(gVo);
		ArrayList<AssistStandingsVO> assists = leagueService.getAssists(aVo);
		ArrayList<RatingStandingsVO> rating = leagueService.getRating(rVo);
		
		model.addAttribute("firstSchedule",firstSchedule);
		model.addAttribute("schedule",schedule);
		model.addAttribute("roundNum", roundNum);
		model.addAttribute("teamTable",teamTable);
		model.addAttribute("goals", goals);
		model.addAttribute("assists", assists);
		model.addAttribute("rating", rating);
		model.addAttribute("leagueNum",leagueNum);
		
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
