package kr.green.portfolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.LeagueDAO;
import kr.green.portfolio.dao.TeamDAO;
import kr.green.portfolio.vo.AssistStandingsVO;
import kr.green.portfolio.vo.GoalStandingsVO;
import kr.green.portfolio.vo.LeagueVO;
import kr.green.portfolio.vo.PlayerVO;
import kr.green.portfolio.vo.RatingStandingsVO;
import kr.green.portfolio.vo.ScheduleVO;
import kr.green.portfolio.vo.TeamVO;

@Service
public class LeagueServiceImp implements LeagueService{

	@Autowired
	LeagueDAO leagueDao;
	@Autowired
	TeamDAO teamDao;
	
	@Override
	public ArrayList<ScheduleVO> getSchedule(ScheduleVO sVo,Integer roundNum) {
		
		return leagueDao.getSchedule(sVo,roundNum);
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
		
		return leagueDao.getTeamTable(tVo);
	}

	@Override
	public ArrayList<GoalStandingsVO> getGoals(GoalStandingsVO gVo) {
		
		return leagueDao.getGoals(gVo);
	}

	@Override
	public ArrayList<AssistStandingsVO> getAssists(AssistStandingsVO aVo) {
		
		return leagueDao.getAssists(aVo);
	}

	@Override
	public ArrayList<RatingStandingsVO> getRating(RatingStandingsVO rVo) {
		
		return leagueDao.getRating(rVo);
	}

	@Override
	public ArrayList<LeagueVO> getSeasonList(String season) {
		
		return leagueDao.getSeasonList(season);
	}


}
