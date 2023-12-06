package member;


public interface MemberService {
	
	// 회원가입 , 로그인 
	// 수정 , 삭제
	
	// member_join() : 파라메터 MemberVO를 입력받아 회원가입 처리 . 회원가입 로직 구현 시 아이디 중복 체크를 비동기로 해야함.
	// member_idCheck(String user_Id)
	int member_join(MemberVO vo);
	int member_idCheck(String user_id);
	
	MemberVO member_login(MemberVO vo);
	int member_update(MemberVO vo);
	int member_delete(MemberVO vo);
	
	// 진행 예정 x 
	void findPassWord(MemberVO vo);
	
}
