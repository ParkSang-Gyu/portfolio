package kr.green.portfolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.TeamVO;

public interface TeamDAO {

	ArrayList<TeamVO> getTeamInfo(@Param("tVo")TeamVO tVo, @Param("team")String team);

	ArrayList<PlayerVO> getPlayerInfo(@Param("pVo")PlayerVO pVo, @Param("player")String player);

}
