package java_20210518;

import java.io.File;

public class FileDemo {
	public static void main(String[] args) {
		File f1 = new File("c:\\dev\\test\\2021\\05\\18");
		
		if(f1.mkdirs()) {
			System.out.println("디렉토리를 생성 했습니다.");
		}else {
			System.out.println("이미 디렉토리가 존재합니다.");
		}
		
		File f2 = new File(
				"c:\\dev\\test\\2021\\05\\18\\eclipse.zip");
		long len = f2.length();
		System.out.printf("%,dKB%n", len/1024);
		boolean isFile = f2.isFile();//isDirectory()
		if(isFile) {
			String path = f2.getPath();
			if(path.endsWith("zip")) {
				System.out.println("압축파일");
			}else if(path.endsWith("txt")) {
				System.out.println("텍스트파일");
			}else if(path.endsWith("java")) {
				System.out.println("자바파일");
			}
			
		}else {
			System.out.println("디렉토리 입니다.");
		}
		
		
		
		
		
		
		
		
		
		
	}
}
