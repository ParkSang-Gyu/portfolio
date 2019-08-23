package kr.green.portfolio.service;

import java.util.ArrayList;

import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.LeagueVO;
import kr.green.portfolio.vo.TeamVO;

public interface LeagueService {

	ArrayList<LeagueVO> getFirstSchedule(LeagueVO plVo, Integer roundNum);
	
	ArrayList<LeagueVO> getSchedule(LeagueVO plVo, Integer roundNum);

	TeamVO getTeamInfo(String team);

	ArrayList<PlayerVO> getPlayerInfo(String team);

	PlayerVO getPlayer(String player);

	ArrayList<TeamVO> getTeamTable(TeamVO tVo);

	

	
}
