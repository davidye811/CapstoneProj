package cs595.capstone.test;

import java.io.File;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.junit.Test;

import com.alibaba.fastjson.JSON;

import cs595.capstone.domain.Cast;
import cs595.capstone.domain.Group;
import cs595.capstone.domain.User;

public class JsonTest {
	@Test
	public void testJson() {
		File a = new File("C:\\Users\\hasee\\Documents\\WeChat Files\\yedawei1\\Files");
		File[] as = a.listFiles();
		for(File v:as) {
			if(v.getName().contains("jpg")) {
				String newName=v.getName();
				 Pattern pattern = Pattern.compile("[^0-9]");
			        Matcher matcher = pattern.matcher(newName);
			        String all = matcher.replaceAll("");
			       all="movie"+all+"_1";
			       File m=new File("C:/Users/hasee/Documents/WeChat Files/yedawei1/Files/"+all+".jpg");
			    System.out.println( v.renameTo(m));
			}
		}
	}
	@Test 
	public void testHash() {
		for(int i = 0 ; i<5;i++)
		System.out.println( "ydaed".hashCode());
	}
}
