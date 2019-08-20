package kr.green.portfolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.TeamVO;

public interface TeamDAO {

	TeamVO getTeamInfo(@Param("team")String team);

	ArrayList<PlayerVO> getPlayerInfo(@Param("team")String team);

	PlayerVO getPlayer(@Param("player")String player);

}
