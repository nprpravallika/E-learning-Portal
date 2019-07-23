package onlineportal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FacLoginDb {
String sql="select * from instructor where iid=? and password=?";
String url="jdbc:oracle:thin:@localhost:1521:orcl";
public boolean check(String uname,String pass) {
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con=DriverManager.getConnection(url,"system","prudhvi239");
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,uname);
		ps.setString(2,pass);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			return true;
		}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	return false;
}
}