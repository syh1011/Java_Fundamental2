package java_20210511;

public class Parent {
	String name;
	String address;
	int age;
	//alt + shift + s -> c =>  디폴트 생성자
	public Parent() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	//alt + shift + s -> o =>  매개변수 있는 생성자
	public Parent(String name, String address, int age) {
		super();
		this.name = name;
		this.address = address;
		this.age = age;
	}

	
}
