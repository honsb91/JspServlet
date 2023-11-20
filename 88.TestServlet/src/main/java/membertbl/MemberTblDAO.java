package membertbl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberTblDAO {

	private Connection conn; //JAVA와 DB를 연결해주는 객체
	private PreparedStatement ps; // SQL문을 실행시켜주는 객체
	private ResultSet rs; // statement 값을 저장해주는 객체
	
	public boolean isConnection() {
		String url = "jdbc:oracle:thin:@localhost:1521:xe";
		String user = "hanul";
		String pw = "0000";
		
		// 데이터베이스 연결
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(url, user, pw);
			if(!conn.isClosed()) // 연결객체가 닫혀있는 상황이 아니라면 이라는 뚯
				return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		return false;
	}		
	// 조회 화면 
	public ArrayList<MemberTblDTO> selectList(){
		ArrayList<MemberTblDTO> list = new ArrayList<>();
			
		if(!isConnection())
			return list;
		try {

			ps = conn.prepareStatement("SELECT * FROM MEMBERTBL ");
			rs = ps.executeQuery(); // SELECT 구문을 수행할 때 사용하는 함수
			while(rs.next()) {
				MemberTblDTO dto = new MemberTblDTO();
				dto.setBoardNum(rs.getInt("BOARDNUM"));
				dto.setUsername(rs.getString("USERNAME"));
				dto.setBirthyear(rs.getInt("BIRTHYEAR"));
				dto.setBload(rs.getString("BLOAD"));
				
				list.add(dto);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
			
		return list;
	}

}
