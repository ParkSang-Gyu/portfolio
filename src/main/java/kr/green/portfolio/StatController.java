package kr.green.portfolio;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.portfolio.service.LeagueService;
import kr.green.portfolio.vo.AssistStandingsVO;
import kr.green.portfolio.vo.GoalStandingsVO;
import kr.green.portfolio.vo.LeagueVO;
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

	@RequestMapping(value = "/PremierLeague", method = RequestMethod.GET)
	public String premierleagueGet(Model model, ScheduleVO sVo, Integer roundNum, TeamVO tVo, GoalStandingsVO gVo,
			AssistStandingsVO aVo, RatingStandingsVO rVo, Integer leagueNum) {
		leagueNum = 1;
		
		ArrayList<ScheduleVO> schedule = leagueService.getSchedule(sVo, roundNum, leagueNum);
		ArrayList<TeamVO> teamTable = leagueService.getTeamTable(tVo,leagueNum);
		ArrayList<GoalStandingsVO> goals = leagueService.getGoals(gVo);
		ArrayList<AssistStandingsVO> assists = leagueService.getAssists(aVo);
		ArrayList<RatingStandingsVO> rating = leagueService.getRating(rVo);
		
		model.addAttribute("schedule", schedule);
		model.addAttribute("roundNum", roundNum);
		model.addAttribute("teamTable", teamTable);
		model.addAttribute("goals", goals);
		model.addAttribute("assists", assists);
		model.addAttribute("rating", rating);
		model.addAttribute("leagueNum", leagueNum);
		
		return "/leagues/PremierLeague";
	}
	
	@RequestMapping(value = "/PremierLeague", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> premierleaguePost(String league) {
		
		Map<Object, Object> map = new HashMap<Object, Object>();
		 
		map.put("league", league);
		
		ArrayList<TeamVO> rank = leagueService.getRank(league);
		
		map.put("rank", rank);
		
		return map;
	}

	@RequestMapping(value = "/LaLiga", method = RequestMethod.GET)
	public String laligaGet(Model model, ScheduleVO sVo, Integer roundNum, TeamVO tVo, GoalStandingsVO gVo,
			AssistStandingsVO aVo, RatingStandingsVO rVo, Integer leagueNum) {
		leagueNum = 2;
		ArrayList<ScheduleVO> schedule = leagueService.getSchedule(sVo, roundNum, leagueNum);
		ArrayList<TeamVO> teamTable = leagueService.getTeamTable(tVo,leagueNum);
		ArrayList<GoalStandingsVO> goals = leagueService.getGoals(gVo);
		ArrayList<AssistStandingsVO> assists = leagueService.getAssists(aVo);
		ArrayList<RatingStandingsVO> rating = leagueService.getRating(rVo);

		model.addAttribute("schedule", schedule);
		model.addAttribute("roundNum", roundNum);
		model.addAttribute("teamTable", teamTable);
		model.addAttribute("goals", goals);
		model.addAttribute("assists", assists);
		model.addAttribute("rating", rating);
		model.addAttribute("leagueNum", leagueNum);

		return "/leagues/LaLiga";
	}
	
	@RequestMapping(value = "/BundesLiga", method = RequestMethod.GET)
	public String bundesligaGet(Model model, ScheduleVO sVo, Integer roundNum, TeamVO tVo, GoalStandingsVO gVo,
			AssistStandingsVO aVo, RatingStandingsVO rVo, Integer leagueNum) {
		leagueNum = 3;
		ArrayList<ScheduleVO> schedule = leagueService.getSchedule(sVo, roundNum, leagueNum);
		ArrayList<TeamVO> teamTable = leagueService.getTeamTable(tVo,leagueNum);
		ArrayList<GoalStandingsVO> goals = leagueService.getGoals(gVo);
		ArrayList<AssistStandingsVO> assists = leagueService.getAssists(aVo);
		ArrayList<RatingStandingsVO> rating = leagueService.getRating(rVo);

		model.addAttribute("schedule", schedule);
		model.addAttribute("roundNum", roundNum);
		model.addAttribute("teamTable", teamTable);
		model.addAttribute("goals", goals);
		model.addAttribute("assists", assists);
		model.addAttribute("rating", rating);
		model.addAttribute("leagueNum", leagueNum);

		return "/leagues/BundesLiga";
	}
	
	@RequestMapping(value = "/SerieA", method = RequestMethod.GET)
	public String serieaGet(Model model, ScheduleVO sVo, Integer roundNum, TeamVO tVo, GoalStandingsVO gVo,
			AssistStandingsVO aVo, RatingStandingsVO rVo, Integer leagueNum) {
		leagueNum = 4;
		ArrayList<ScheduleVO> schedule = leagueService.getSchedule(sVo, roundNum, leagueNum);
		ArrayList<TeamVO> teamTable = leagueService.getTeamTable(tVo,leagueNum);
		ArrayList<GoalStandingsVO> goals = leagueService.getGoals(gVo);
		ArrayList<AssistStandingsVO> assists = leagueService.getAssists(aVo);
		ArrayList<RatingStandingsVO> rating = leagueService.getRating(rVo);

		model.addAttribute("schedule", schedule);
		model.addAttribute("roundNum", roundNum);
		model.addAttribute("teamTable", teamTable);
		model.addAttribute("goals", goals);
		model.addAttribute("assists", assists);
		model.addAttribute("rating", rating);
		model.addAttribute("leagueNum", leagueNum);

		return "/leagues/SerieA";
	}
	
	@RequestMapping(value = "/comparison", method = RequestMethod.GET)
	public ModelAndView comparisonGet(ModelAndView mv) {
		
		mv.setViewName("/comparison/comparison");
		
		return mv;
	}

	@RequestMapping(value = "/comparison", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> comparisonPost(String league, String season, String team, String playerName) {
		
		Map<Object, Object> map = new HashMap<Object, Object>();

		try {
			if(team!=null)
			team = URLDecoder.decode(team, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try { 
			if(playerName!=null)
			playerName = URLDecoder.decode(playerName, "UTF-8"); ; 
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace(); 
		}
					 
		map.put("league", league);
		map.put("season", season);
		map.put("team", team);
		map.put("playerName", playerName);
		
		ArrayList<String> seasonList = leagueService.getSeasonList(league);
		ArrayList<String> teamList = leagueService.getTeamList(season,league);
		ArrayList<String> playerList = leagueService.getPlayerList(team,season,league);
		PlayerVO playerStat = leagueService.getPlayerStat(playerName);
		PlayerVO playerImg = leagueService.getPlayerImg(playerName);
		
		map.put("seasonList", seasonList);
		map.put("teamList", teamList);
		map.put("playerList", playerList);
		map.put("playerStat", playerStat);
		
		return map;
	}

	@RequestMapping(value = "/teams", method = RequestMethod.GET)
	public ModelAndView teamsGet(ModelAndView mv, String team) {
		TeamVO teamInfo = leagueService.getTeamInfo(team);
		ArrayList<PlayerVO> playerInfo = leagueService.getPlayerInfo(team);
		mv.addObject("teamInfo", teamInfo);
		mv.addObject("playerInfo", playerInfo);
		mv.addObject("name", team);
		mv.setViewName("/teams/team");
		return mv;
	}

	@RequestMapping(value = "/players", method = RequestMethod.GET)
	public ModelAndView playersGet(ModelAndView mv, String player) {
		PlayerVO playerInfo = leagueService.getPlayer(player);
		mv.addObject("playerInfo", playerInfo);
		mv.addObject("player", player);
		mv.setViewName("/players/player");
		return mv;
	}
}
