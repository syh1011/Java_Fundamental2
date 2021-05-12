package java_20210512;

import java.util.ArrayList;

public class WrapperDemo {
	public static void main(String[] args) {
		//ctl + shift + o -> auto import
		//자바 1.4 이전 버전에서는 primitive data type를 Collection에
		//저장할 수 없었기 때문에 primitive datat type을 객체화 할 수 있는
		//Wrapper Class으로 변환하여 저장해야 했다.
		//아래와 같이 1를 저장할 수 없음.
		ArrayList list = new ArrayList();
		list.add(1);
		list.add(new Integer(1));
		
		//1. primitive data type => wrapper class(valueOf(~))
		Integer i1 = Integer.valueOf(10);
		Integer i2 = Integer.valueOf(20);
		
		//2. wrapper class => primitive data type( intValue() )
		int i3 = i1.intValue();
		int i4 = i2.intValue();
		
		int i5 = i3 + i4;
		
		//3. 숫자로 구성된 String => primitive data type
		//Integer.parseInt("10");
		String s1 = "12345";
		int i6 = Integer.parseInt(s1);
		
		//4. auto-boxing : primitive data type -> wrapper class
		Integer i7 = 100;
		Integer i8 = 200;
		
		//5. auto-unboxing : wrapper class -> primitive data type
		int i9 = i7+i8;
		
		
		
		
	}
}



