package kr.green.portfolio.service;

import java.util.ArrayList;

import kr.green.portfolio.vo.AssistStandingsVO;
import kr.green.portfolio.vo.GoalStandingsVO;
import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.RatingStandingsVO;
import kr.green.portfolio.vo.ScheduleVO;
import kr.green.portfolio.vo.TeamVO;

public interface LeagueService {

	ArrayList<ScheduleVO> getFirstSchedule(ScheduleVO sVo, Integer roundNum);
	
	ArrayList<ScheduleVO> getSchedule(ScheduleVO sVo, Integer roundNum);

	TeamVO getTeamInfo(String team);

	ArrayList<PlayerVO> getPlayerInfo(String team);

	PlayerVO getPlayer(String player);

	ArrayList<TeamVO> getTeamTable(TeamVO tVo);

	ArrayList<GoalStandingsVO> getGoals(GoalStandingsVO gVo);

	ArrayList<AssistStandingsVO> getAssists(AssistStandingsVO aVo);

	ArrayList<RatingStandingsVO> getRating(RatingStandingsVO rVo);

	

	
}
