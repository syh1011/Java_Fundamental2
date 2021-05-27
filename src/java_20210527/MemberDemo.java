package java_20210527;

public class MemberDemo {
	public static void main(String[] args) {
		MemberDao dao = MemberDao.getInstance();
		int num = 12;
		String name = "김범수";
		String addr = "한국";
		boolean success = dao.insert(num, name, addr);
		if(success) {
			System.out.println("insert 성공");
		}else {
			System.out.println("insert 실패");
		}
		
	}
}
