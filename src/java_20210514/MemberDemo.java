package java_20210514;

import java.util.ArrayList;

public class MemberDemo {
	public static void main(String[] args) {
		MemberManager m = new MemberManager();
		m.insert("syh1011","성영한1",10);
		m.insert("syh2022","성영한2",20);
		m.insert("syh3033","성영한3",30);
		m.insert("syh4044","성영한4",40);
		
		ArrayList list = m.select();
		for(int i=0;i<list.size();i++) {
			Member m2 = (Member)list.get(i);
			System.out.printf("%s, %s, %d %n",
					m2.getId(), m2.getName(), m2.getAge());
		}
		
		
		
	}
}
