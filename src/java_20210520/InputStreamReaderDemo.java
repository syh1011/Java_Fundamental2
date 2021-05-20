package java_20210520;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

public class InputStreamReaderDemo {
	public static void main(String[] args) throws IOException {
		/*
		InputStream in = System.in;//source가 키보드인 경우
		byte[] b = new byte[100];
		
		int readByteCount = 0;
		System.out.print("입력하세요>");
		while((readByteCount = in.read(b)) != -1) {
			String message = new String(b,0,readByteCount);
			if(message != null && message.trim().equals("quit")) break;
			System.out.print(message);
			System.out.print("입력하세요>");
		}
		*/
		InputStream in = System.in;
		InputStreamReader isr = new InputStreamReader(in);
		BufferedReader br = new BufferedReader(isr);
		
		FileWriter fw = new FileWriter(
				"C:\\Users\\3-20\\message.txt",true);
		BufferedWriter bw = new BufferedWriter(fw);
		
		String readLine = null;
		System.out.print("입력하세요>");
		while((readLine = br.readLine()) != null) {
			if(readLine != null && readLine.equals("quit")) break;
			System.out.println(readLine);
			bw.write(readLine);
			bw.newLine();
			System.out.print("입력하세요>");
		}
		bw.flush();
	}
}
