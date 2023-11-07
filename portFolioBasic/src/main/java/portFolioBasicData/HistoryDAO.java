package portFolioBasicData;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;
import portFolioBasicData.HistoryBean;

public class HistoryDAO {
	private Connection con;
	private PreparedStatement pstmt;
	private DataSource dataFactory;

	public HistoryDAO() {
		try {
			Context ctx = new InitialContext();
			Context envContext = (Context) ctx.lookup("java:/comp/env");
			dataFactory = (DataSource) envContext.lookup("jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//C:\Users\microsoft\Downloads\portfoliogenuinekey
	//ssh -i "portfoliogenuinekey.pem" ubuntu@ec2-52-78-173-13.ap-northeast-2.compute.amazonaws.com
	public List listMembers() {
		List list = new ArrayList();	
		try {
				con = dataFactory.getConnection();
				String query = "SELECT * FROM profilegenuine order by id1 asc";
				pstmt = con.prepareStatement(query);
				ResultSet rs = pstmt.executeQuery();
				while (rs.next()) {
					int id1 = rs.getInt("id1");
					Date id2 = rs.getDate("id2");
					Date id3 = rs.getDate("id3");
					String id4 = rs.getString("id4");
					String id5 = rs.getString("id5");
					HistoryBean vo = new HistoryBean();
					vo.setId1(id1);
					vo.setId2(id2);
					vo.setId3(id3);
					vo.setId4(id4);
					vo.setId5(id5);
					list.add(vo);
				}
				rs.close();
				pstmt.close();
				con.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
			return list;
		}
	
	public void addMember(HistoryBean memberBean) {
		try {
			Connection con = dataFactory.getConnection();
			int id1 = memberBean.getId1();
			Date id2 = memberBean.getId2();
			Date id3 = memberBean.getId3();
			String id4 = memberBean.getId4();
			String id5 = memberBean.getId5();
			String query = "insert into profileGenuine";
			query += " (id1,id2,id3,id4,id5)";
			query += " values(?,?,?,?,?)";
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, id1);
			pstmt.setDate(2, id2);
			pstmt.setDate(3, id3);
			pstmt.setString(4, id4);
			pstmt.setString(5, id5);
			pstmt.executeUpdate();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}