package kr.green.portfolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.AssistStandingsVO;
import kr.green.portfolio.vo.GoalStandingsVO;
import kr.green.portfolio.vo.LeagueVO;
import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.RatingStandingsVO;
import kr.green.portfolio.vo.ScheduleVO;
import kr.green.portfolio.vo.TeamVO;

public interface LeagueDAO {
	
	ArrayList<ScheduleVO> getSchedule(@Param("sVo")ScheduleVO sVo,@Param("roundNum")Integer roundNum,@Param("leagueNum")Integer leagueNum);

	ArrayList<TeamVO> getTeamTable(@Param("tVo")TeamVO tVo,@Param("leagueNum")Integer leagueNum);

	ArrayList<GoalStandingsVO> getGoals(@Param("gVo")GoalStandingsVO gVo);

	ArrayList<AssistStandingsVO> getAssists(@Param("aVo")AssistStandingsVO aVo);

	ArrayList<RatingStandingsVO> getRating(@Param("rVo")RatingStandingsVO rVo);

	ArrayList<String> getSeasonList(@Param("league")String league);

	void getScheduleData(@Param("leagueNum")Integer leagueNum,@Param("seasonStart")Integer seasonStart,
			@Param("seasonEnd")Integer seasonEnd,@Param("roundNum")Integer roundNum,@Param("date")String date,
			@Param("time")String time,@Param("status")String status,@Param("homeTeam")String homeTeam,
			@Param("awayTeam")String awayTeam,@Param("stadium")String stadium);

	
}
