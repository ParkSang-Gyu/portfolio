package kr.green.portfolio.service;

import java.util.ArrayList;

import kr.green.portfolio.vo.AssistStandingsVO;
import kr.green.portfolio.vo.GoalStandingsVO;
import kr.green.portfolio.vo.LeagueVO;
import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.RatingStandingsVO;
import kr.green.portfolio.vo.ScheduleVO;
import kr.green.portfolio.vo.TeamVO;

public interface LeagueService {
	
	ArrayList<ScheduleVO> getSchedule(ScheduleVO sVo, Integer roundNum, Integer leagueNum);

	TeamVO getTeamInfo(String team);

	ArrayList<PlayerVO> getPlayerInfo(String team);

	PlayerVO getPlayer(String player);

	ArrayList<TeamVO> getTeamTable(TeamVO tVo, Integer leagueNum);

	ArrayList<GoalStandingsVO> getGoals(GoalStandingsVO gVo);

	ArrayList<AssistStandingsVO> getAssists(AssistStandingsVO aVo);

	ArrayList<RatingStandingsVO> getRating(RatingStandingsVO rVo);

	ArrayList<String> getSeasonList(String league);

	ArrayList<String> getTeamList(String season, String league);

	ArrayList<String> getPlayerList(String team, String season, String league);

	PlayerVO getPlayerStat(String playerName);

	PlayerVO getPlayerImg(String playerName);

	ArrayList<TeamVO> getRank(String league);

	void getScheduleInsert(Integer leagueNum, Integer seasonStart, Integer roundNum, String date, String time,
			String homeTeam, String awayTeam, String stadium);
	
	void getScheduleUpdate(ScheduleVO sVo);

	

	

	

	

	
}
