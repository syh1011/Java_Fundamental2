package java_20210511;

public class ShapeDemo {
	public static void main(String[] args) {
		ShapeManager manager = ShapeManager.getInstance();
		Circle t = new Circle();
		manager.run(t);
		
		String str ="hello";
		String str1 = "hello";
		String str3 = new String("hello");
		String str4 = new String("hello");
		System.out.println(str==str1);
		System.out.println(str3==str4);
		System.out.println(str==str4);
	}
}
