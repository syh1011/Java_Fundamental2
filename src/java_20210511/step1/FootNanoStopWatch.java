package java_20210511.step1;
//1 요구사항 : 밀리 세컨드로 경과 시간을 만들어 주세요.
//2 요구사항 : 나노 세컨드로 경과 시간을 만들어 주세요.
public class FootNanoStopWatch {
	long startTime;
	long endTime;
	public double getElapsedTime() {
		return (double)(endTime - startTime)/1000000000;
	}
	public static void main(String[] args) {
		FootNanoStopWatch f = new FootNanoStopWatch();
		//1970년 1월 1일 부터 현재까지의 시간을 밀리세컨드로 반환
		f.startTime = System.nanoTime();
		
		for(long i = 0;i<300_000_000_000l;i++) {
			
		}
		
		f.endTime = System.nanoTime();
		double elapsedTime = f.getElapsedTime();
		System.out.printf("경과시간 : %,.9f", elapsedTime);
	}
}
