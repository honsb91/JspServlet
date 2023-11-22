import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import mybatis.MybatisTblDAO;
import mybatis.MybatisTblVO;

class MybatisTblDAOTest {

	@Test
	public void insert() {
		MybatisTblVO vo = new MybatisTblVO();
		vo.setCol1("a");
		vo.setCol2("b");
		vo.setCol3("c");
		//////////// controller에서도 같은 동작이 필요함
		
		
		MybatisTblDAO dao = new MybatisTblDAO();
		//dao.insert(vo); // test에서는 vo가 필요
		System.out.println(dao.insert(vo));
	}

}
