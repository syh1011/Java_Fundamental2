package java_20210514;

import java.util.ArrayList;

public class GenericDemo {
	public static void main(String[] args) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("1");
		list.add("2");
		list.add("3");
		list.add("4");
		
		for(int i=0;i<list.size();i++) {
			String value = list.get(i);
			System.out.println(value);
		}
		
		for(String value : list) {
			System.out.println(value);
		}
	}
}





