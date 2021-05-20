package java_20210520;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;

public class PrintStreamDemo {
	public static void main(String[] args) {
		FileInputStream fis = null;
		BufferedInputStream bis = null;
		FileOutputStream fos = null;
		BufferedOutputStream bos = null;
		PrintStream ps = null;//file
		PrintStream ps1 = null;//모니터
		
		ps1 = System.out;
		ps1.println("Hello");
		ps1.println("안녕하세요");
		
		try {
			fis = new FileInputStream(
"C:\\dev\\test\\2021\\05\\18\\apache-tomcat-9.0.46.zip");
			bis = new BufferedInputStream(fis);//stream chaining
			
			fos = new FileOutputStream(
"C:\\dev\\test\\2021\\05\\18\\apache-tomcat-9.0.46-copy1.zip");
			bos = new BufferedOutputStream(fos);//stream chaining
			
			//PrintStream
			//1. PrintStream의 메서드는 IOException 발생하지 않는다.
			//2. auto flush 기능을 가지 있음. => true
			ps = new PrintStream(bos, true);//stream chaining
			
			int readByte = 0;
			while((readByte = bis.read()) != -1) {
				ps.write(readByte);
			}
			//ps.flush();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				if(fis != null) fis.close();
				if(bis != null) bis.close();
				
				if(fos != null) fos.close();
				if(ps != null) ps.close();
				if(bos != null) bos.close();
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
		
		
		
		
	}
}
