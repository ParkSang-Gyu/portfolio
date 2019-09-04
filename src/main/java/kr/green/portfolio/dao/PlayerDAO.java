package kr.green.portfolio.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.TeamVO;

public interface PlayerDAO {

	ArrayList<String> getPlayerList(@Param("team")String team);

	PlayerVO getPlayerStat(@Param("playerName")String playerName);

	

}
