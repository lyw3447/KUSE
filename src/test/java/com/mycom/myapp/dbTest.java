package com.mycom.myapp;

import java.sql.Connection;
import java.sql.DriverManager;
import org.junit.Test;

public class dbTest{
@Test
public void test() throws Exception {
    Class.forName("com.mysql.jdbc.Driver");

    Connection con =     DriverManager.getConnection("jdbc:mysql://db202106.caebvenawp5m.ap-northeast-2.rds.amazonaws.com:3306/kubic","admin","db202106");
    System.out.println(con);
    }
}

