import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import usertbl.UserTblDAO;

class UserTblDAOTest {

	@Disabled // 테스트 막는 용도
	@Test
	public void delete() {
		UserTblDAO dao = new UserTblDAO();
		dao.delete("이승기T"); // request.getParm.. 으로 받아
	}

}
