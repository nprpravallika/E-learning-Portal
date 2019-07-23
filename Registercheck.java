package onlineportal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Registercheck {
	String sql="select * from opstudlogin where sid=?";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	public boolean verify(String uname) {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con=DriverManager.getConnection(url,"system","prudhvi239");
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,uname);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				return false;
			}
			else {
				return true;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return true;
	}
}
