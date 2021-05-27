package java_20210528;

import java.util.ArrayList;

public class EmpDao {
	private static EmpDao sung;
	private EmpDao() {
		
	}
	public static EmpDao getInstance() {
		if(sung == null) {
			sung = new EmpDao();
		}
		return sung;
	}
	public boolean insert(EmpDto you) {
		boolean success = false;
		
		return success;
	}
	public boolean update(EmpDto you) {
		boolean success = false;
		
		return success;
	}
	public boolean delete(int no) {
		boolean success = false;
		
		return success;
	}
	
	public ArrayList<EmpDto> select(int start, int len){
		ArrayList<EmpDto> list = new ArrayList<EmpDto>();
		
		return list;
	}
	
}





