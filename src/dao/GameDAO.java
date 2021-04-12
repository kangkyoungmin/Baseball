package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import util.JDBCUtil;
import vo.Count;
import vo.Game;

public class GameDAO {
	public List<Game> getGameSchedule(String yy, String mm, String dd) {
		List<Game> list = new ArrayList<Game>();

		String sql = "select home_id,away_id,game_date,home_result,away_result,location_id,time from gameinfo_plus where year=? and month=? and day=?";
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		System.out.println("I'm DAO");

		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql); // sql
			ps.setString(1, yy);
			ps.setString(2, mm);
			ps.setString(3, dd);

			rs = ps.executeQuery(); // select
			// 결과값핸들링

			while (rs.next()) {
				Game vo = new Game();
				vo.setHome_id(rs.getString("home_id"));
				vo.setAway_id(rs.getString("away_id"));
				vo.setGame_date(rs.getString("game_date"));
				vo.setHome_result(rs.getString("home_result"));
				vo.setAway_result(rs.getString("away_result"));
				vo.setLocation_id(rs.getString("location_id"));
				vo.setTime(rs.getString("time"));

				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, rs);
		}
		return list;
	}

	public List<Count> getCount(int rank) {
		List<Count> list = new ArrayList<Count>();

		String sql = "select rank,team,victory,draw,defeat,vic_st from count_2 where rank=?";
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		System.out.println("I'm DAO");

		try {
			con = JDBCUtil.getConnection();
			ps = con.prepareStatement(sql); // sql
			ps.setInt(1, rank);
			rs = ps.executeQuery(); // select
			// 결과값핸들링
			while (rs.next()) {
				Count co = new Count();
				co.setRank(Integer.parseInt(rs.getString("rank")));
				co.setTeam(Integer.parseInt(rs.getString("team")));
				co.setVictory(Integer.parseInt(rs.getString("victory")));
				co.setDraw(Integer.parseInt(rs.getString("draw")));
				co.setDefeat(Integer.parseInt(rs.getString("defeat")));
				co.setVic_st(Double.parseDouble(rs.getString("vic_st")));

				list.add(co);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(con, ps, rs);
		}
		return list;
	}

}
