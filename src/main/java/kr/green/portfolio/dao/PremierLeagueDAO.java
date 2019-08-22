package kr.green.portfolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.PremierLeagueVO;
import kr.green.portfolio.vo.TeamVO;

public interface PremierLeagueDAO {

	ArrayList<PremierLeagueVO> getFirstSchedule(@Param("plVo")PremierLeagueVO plVo, @Param("roundNum")Integer roundNum);
	
	ArrayList<PremierLeagueVO> getSchedule(@Param("plVo")PremierLeagueVO plVo, @Param("roundNum")Integer roundNum);

	ArrayList<TeamVO> getTeamTable(@Param("tVo")TeamVO tVo);
	
}
