package customer;

import java.util.List;

import common.MybatisConnection;

public class CustomerDAO extends MybatisConnection{
		
	// 초기 데이터 베이스 연결 테스트 3을 조회하는 쿼리를 넣어두고 실행결과 3을 조회 후 결과로 가지고 오는지 TEST
	public void test() {
		int result = sql.selectOne("cu.test");
		System.out.println(result);
	}
	
	public List<CustomerVO> select(){
		return sql.selectList("cu.select");
	}
	
	public void delete(int customer_id) {
		System.out.println(sql.delete("cu.delete" , customer_id));
	}
	
	public void insert(CustomerVO vo) {
		System.out.println("인서트 : " + sql.insert("cu.insert",vo));
	}
	
	public void update(CustomerVO vo) {
		System.out.println("update : " + sql.update("cu.update",vo));
	}
}
