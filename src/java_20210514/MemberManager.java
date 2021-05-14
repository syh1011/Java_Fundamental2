package java_20210514;

import java.util.ArrayList;

public class MemberManager {
	private ArrayList list;
	public MemberManager() {
		list = new ArrayList();
	}
	
	public void insert(String id, String name, int age) {
		list.add(new Member(id,name,age));
	}
	public void update() {
		
	}
	public void delete() {
		
	}
	public ArrayList select() {
		return list;
	}
	public void select(String id) {
		
	}
	
	
	
}
