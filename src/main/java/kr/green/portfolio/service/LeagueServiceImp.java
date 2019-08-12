package kr.green.portfolio.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.portfolio.dao.PremierLeagueDAO;
import kr.green.portfolio.vo.PremierLeagueVO;

@Service
public class LeagueServiceImp implements LeagueService{

	@Autowired
	PremierLeagueDAO premierLeagueDao;
	
	@Override
	public ArrayList<PremierLeagueVO> getSchedule(PremierLeagueVO plVo) {
		
		return premierLeagueDao.getSchedule(plVo);
	}

}
