package com.wyu.test;

import com.alibaba.fastjson.JSON;
import com.wyu.pojo.User;
import org.junit.Test;

import javax.management.monitor.StringMonitor;
import java.util.*;

/**
 * Created with IntelliJ IDEA.
 * User: 陈卓信
 * Date: 2019/10/24
 * Time: 21:13
 */
public class testUser {

    @Test
    public void testDemo() {
//        String str="陈卓信";
//        System.out.println(str);
//        System.out.println("MRCHEN");
//
//        List<String> list=new ArrayList();
//        list.add("MRCHNE");
//        list.add("MRCHNE");
//        list.add("MRCHNE");
//        list.add("MRCHNE");
//
//        String string = JSON.toJSONString(list);
//        System.out.println(string);
//
//        List<String> list1 = JSON.parseArray("[\"MRCHNE\",\"MRCHNE\",\"MRCHNE\",\"MRCHNE\"]", String.class);
//        System.out.println(list1);
//

        List<Stu> lis = new ArrayList<>();

        lis.add(new Stu("AAA1", 1));
        lis.add(new Stu("AAA2", 1));
        lis.add(new Stu("AAA3", 1));
        System.out.println(lis.toString());
        String string1 = JSON.toJSONString(lis);
        System.out.println("string1---------"+string1);

//        List<Stu> parse = (List<Stu>) JSON.parse(string1);
        List<Stu> parse = JSON.parseArray(string1,Stu.class);
        System.out.println(parse.toString());
        System.out.println(parse.get(1).getAge());
//        String strJson = "[{\"age\":1,\"name\":\"AAA1\"},{\"age\":1,\"name\":\"AAA2\"},{\"age\":1,\"name\":\"AAA3\"}]";
        List<Stu> stus = JSON.parseArray("[{\"age\":1,\"name\":\"AAA1\"},{\"age\":1,\"name\":\"AAA2\"},{\"age\":1,\"name\":\"AAA3\"}]", Stu.class);
        System.out.println(stus);

        System.out.println("-----------------------");
        Map<String,Stu> map=new HashMap<>();
        map.put("str1",new Stu("stu1",10));
        map.put("str2",new Stu("stu1",10));
        map.put("str3",new Stu("stu1",10));
        String stringMap = JSON.toJSONString(map);
        System.out.println(stringMap);

        Map<String,Stu> parse1 = (Map)JSON.parse(stringMap);
        System.out.println(parse1);

        List<Stu> sts = JSON.parseArray("[{\"age\":1,\"name\":\"AAA1\"},{\"age\":1,\"name\":\"AAA2\"},{\"age\":1,\"name\":\"AAA3\"}]",Stu.class);
        System.out.println("sts======"+sts);
//        JSON.parseArray()
        List<Stu> stus1 = JSON.parseArray("[{\"name\":\"AAA1\",\"age\":1},{\"name\":\"AAA2\",\"age\":1},{\"name\":\"AAA3\",\"age\":1}]", Stu.class);
        System.out.println(stus1);
//        JSON.parse
        System.out.println(stus);
    }

}

class Stu {
    String name;
    int age;

    public Stu(String name, int age) {
        this.name = name;
        this.age = age;
    }

    public Stu() {
    }

    @Override
    public String toString() {
        return "Stu{" +
                "name='" + name + '\'' +
                ", age=" + age +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }
}
