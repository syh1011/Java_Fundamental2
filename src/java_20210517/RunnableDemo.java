package java_20210517;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;

public class RunnableDemo implements Runnable{
	@Override
	public void run() {
		// TODO Auto-generated method stub
		for(int i=0;i<1000;i++) {
			String threadName = Thread.currentThread().getName();
			System.out.printf("%s : %d%n",threadName, i);
		}
	}
	public static void main(String[] args) throws IOException {
		System.out.println("start");
		
		RunnableDemo r1 = new RunnableDemo();
		Thread t1 = new Thread(r1, "첫번째 스레드");
		t1.start();
		
		RunnableDemo r2 = new RunnableDemo();
		Thread t2 = new Thread(r2, "두번째 스레드");
		t2.start();
		
		System.out.println("end");
		
		URL url = new URL(
				"https://kslovee.tistory.com/entry/JScrollPane");
		InputStream is = url.openStream();
		// 1. InputStream을 InputStreamReader로 바꾼다.
		// 2. InputStreamReader을 BufferedReader 바꾼다.(stream chaining)
		// 3. BufferedReader로 읽은 정보(html)를
		// c:\dev\test\navercafe.html 파일 저장한다.

		InputStreamReader ir = null;
		BufferedReader br = null;
		FileWriter fw = null;
		BufferedWriter bw = null;
		PrintWriter pw = null;

		ir = new InputStreamReader(is);
		br = new BufferedReader(ir);

		fw = new FileWriter("C:\\Users\\3-20\\navercafe.html");
		bw = new BufferedWriter(fw);
		pw = new PrintWriter(bw,true);

		String readLine = null;
		while ((readLine = br.readLine()) != null) {
			//System.out.println(readLine);
			pw.println(readLine);
		}
		
	}
}





