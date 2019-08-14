package kr.green.portfolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.PremierLeagueVO;

public interface PremierLeagueDAO {

	ArrayList<PremierLeagueVO> getSchedule(@Param("plVo")PremierLeagueVO plVo, @Param("roundNum")Integer roundNum);
	
	
}
