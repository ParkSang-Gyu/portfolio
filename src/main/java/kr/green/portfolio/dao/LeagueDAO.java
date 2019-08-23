package kr.green.portfolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.LeagueVO;
import kr.green.portfolio.vo.TeamVO;

public interface LeagueDAO {

	ArrayList<LeagueVO> getFirstSchedule(@Param("plVo")LeagueVO plVo, @Param("roundNum")Integer roundNum);
	
	ArrayList<LeagueVO> getSchedule(@Param("plVo")LeagueVO plVo, @Param("roundNum")Integer roundNum);

	ArrayList<TeamVO> getTeamTable(@Param("tVo")TeamVO tVo);
	
}
