package kr.green.portfolio.service;

import java.util.ArrayList;

import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.PremierLeagueVO;
import kr.green.portfolio.vo.TeamVO;

public interface LeagueService {

	ArrayList<PremierLeagueVO> getSchedule(PremierLeagueVO plVo, Integer roundNum);

	ArrayList<TeamVO> getTeamInfo(TeamVO tVo, String team);

	ArrayList<PlayerVO> getPlayerInfo(PlayerVO pVo, String player);

	
}
