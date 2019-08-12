package kr.green.portfolio.service;

import java.util.ArrayList;

import kr.green.portfolio.vo.PremierLeagueVO;

public interface LeagueService {

	ArrayList<PremierLeagueVO> getSchedule(PremierLeagueVO plVo);

}
