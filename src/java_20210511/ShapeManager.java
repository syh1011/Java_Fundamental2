package java_20210511;

public class ShapeManager {
	
	private static ShapeManager single;
	
	//외부에서 객체를 생성할 수 없음.
	private ShapeManager() {
	}

	public static ShapeManager getInstance() {
		if (single == null) {
			single = new ShapeManager();
		}
		return single;
	}
	public void run(Shape s) {
		s.draw();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
