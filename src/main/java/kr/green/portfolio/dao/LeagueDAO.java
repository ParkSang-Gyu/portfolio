package kr.green.portfolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.AssistStandingsVO;
import kr.green.portfolio.vo.GoalStandingsVO;
import kr.green.portfolio.vo.RatingStandingsVO;
import kr.green.portfolio.vo.ScheduleVO;
import kr.green.portfolio.vo.TeamVO;

public interface LeagueDAO {

	ArrayList<ScheduleVO> getFirstSchedule(@Param("plVo")ScheduleVO sVo, @Param("roundNum")Integer roundNum);
	
	ArrayList<ScheduleVO> getSchedule(@Param("plVo")ScheduleVO sVo, @Param("roundNum")Integer roundNum);

	ArrayList<TeamVO> getTeamTable(@Param("tVo")TeamVO tVo);

	ArrayList<GoalStandingsVO> getGoals(@Param("gVo")GoalStandingsVO gVo);

	ArrayList<AssistStandingsVO> getAssists(@Param("aVo")AssistStandingsVO aVo);

	ArrayList<RatingStandingsVO> getRating(@Param("rVo")RatingStandingsVO rVo);
	
}
