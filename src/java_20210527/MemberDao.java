package java_20210527;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDao {
	// 1. MemberDao 변수인 single을 static 변수로 설정
	private static MemberDao single;

	// 2. 생성자의 접근한정자를 private으로 설정
	// 이유 : 외부에서 객체생성 못하게 하기 위함
	private MemberDao() {
	}

	// MemberDao의 객체는 getInstance() 메서드로만 생성
	// getInstance() 메서드의 구현은 MemberDao 객체를 한개만 생성할 수
	// 있도록 만들어야함.
	// static 메서드로 구현한 이유는 MemberDao객체를 외부에서 생성할 수
	// 없기 때문
	public static MemberDao getInstance() {
		if (single == null) {
			single = new MemberDao();
		}
		return single;
	}

	public boolean insert(int num, String name, String addr) {
		boolean success = false;
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			System.out.println("드라이버로드 성공");
		} catch (ClassNotFoundException e) {
			System.err.println("드라이버로드 실패 : " + e.getMessage());
		}

		Connection con = null;
		PreparedStatement pstmt = null;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/kpc", // url
					"kpc12", // user
					"kpc1212");// password
			StringBuilder sql = new StringBuilder();
			sql.append("INSERT INTO member(num, NAME, addr) ");
			sql.append("VALUES (?,?,?)");

			pstmt = con.prepareStatement(sql.toString());
			int index = 1;
			pstmt.setInt(index++, num);
			pstmt.setString(index++, name);
			pstmt.setString(index, addr);

			pstmt.executeUpdate();
			success = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if (con != null)
					con.close();
				if (pstmt != null)
					pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return success;
	}

	public boolean update() {
		return true;
	}

	public boolean delete() {
		return true;
	}

	public ArrayList select() {
		ArrayList<MemberDto> list = new ArrayList<MemberDto>();

		return list;
	}
}
