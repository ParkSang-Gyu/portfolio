package kr.green.portfolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.PremierLeagueDAO;
import kr.green.portfolio.dao.TeamDAO;
import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.PremierLeagueVO;
import kr.green.portfolio.vo.TeamVO;

@Service
public class LeagueServiceImp implements LeagueService{

	@Autowired
	PremierLeagueDAO premierLeagueDao;
	@Autowired
	TeamDAO teamDao;
	
	@Override
	public ArrayList<PremierLeagueVO> getFirstSchedule(PremierLeagueVO plVo, Integer roundNum) {
		
		return premierLeagueDao.getFirstSchedule(plVo,roundNum);
	}
	
	@Override
	public ArrayList<PremierLeagueVO> getSchedule(PremierLeagueVO plVo,Integer roundNum) {
		
		return premierLeagueDao.getSchedule(plVo,roundNum);
	}

	@Override
	public TeamVO getTeamInfo(String team) {
		
		return teamDao.getTeamInfo(team);
	}

	@Override
	public ArrayList<PlayerVO> getPlayerInfo(String team) {
		
		return teamDao.getPlayerInfo(team);
	}

	@Override
	public PlayerVO getPlayer(String player) {
		
		return teamDao.getPlayer(player);
	}

	@Override
	public ArrayList<TeamVO> getTeamTable(TeamVO tVo) {
		
		return premierLeagueDao.getTeamTable(tVo);
	}

}
