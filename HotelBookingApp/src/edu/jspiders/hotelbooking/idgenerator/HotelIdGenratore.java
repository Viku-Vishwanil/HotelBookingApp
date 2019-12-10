package edu.jspiders.hotelbooking.idgenerator;


import java.io.Serializable;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.SQLException;

import org.hibernate.HibernateException;
import org.hibernate.engine.spi.SessionImplementor;
import org.hibernate.id.IdentifierGenerator;

public class HotelIdGenratore implements IdentifierGenerator
	{
		@Override
		public Serializable generate(SessionImplementor arg0, Object arg1) 
				throws HibernateException 
		{
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			
			try 
			{
				Class.forName("com.mysql.jdbc.Driver");
				
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel_app_db?user=root&password=root");
				
				stmt = con.createStatement();
				
				rs = stmt.executeQuery("Select max(sl_no) from hotel_table");
				
				if(rs.next())
				{
					return rs.getInt(1)+1;
				}
				
			} 
			catch (ClassNotFoundException | SQLException e) 
			{
				e.printStackTrace();
			}
			return 1;
		}
}
