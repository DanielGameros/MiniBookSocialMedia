package social.dao;

import java.io.IOException;
import java.sql.SQLException;

public class Test {
	
	public static void main(String[] args){
		try {
			OracleConnection.getConnection();
		} catch (ClassNotFoundException | IOException | SQLException e) {
			System.out.println(e.getMessage());
		}
	}

}
