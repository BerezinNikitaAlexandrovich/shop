package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import entities.Catalog;

public class CatalogDAO {

	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost/shop_test?useUnicode=true&amp;characterEncoding=utf8";
		return DriverManager.getConnection(url, "root", "");
	}

	public static ArrayList<Catalog> getCatalog() throws ClassNotFoundException, SQLException {
		Connection c;

		ArrayList<Catalog> catalogList = null;
		try {
			c = getConnection();
			PreparedStatement ps = c.prepareStatement("select * from catalog");
			ResultSet rs = ps.executeQuery();
			catalogList = new ArrayList<>();
			while (rs.next()) {
				int id_catalog = rs.getInt("id_catalog");
				String catalog_main_name = rs.getString("catalog_main_name");
				String subcat1 = rs.getString("subcat_1");
				String subcat2 = rs.getString("subcat_2");
				catalogList.add(new Catalog(id_catalog, catalog_main_name, subcat1, subcat2));
			}

		} catch (ClassNotFoundException | SQLException e) {

		}
		return catalogList;
	}

	public static void addCatalog(String catalog_main_name, String subcat1, String subcat2) {
		Connection c;
		try {
			c = getConnection();
			String sql = "INSERT INTO catalog (catalog_main_name, subcat_1, subcat_2) VALUES ('" + catalog_main_name
					+ "', '" + subcat1 + "', '" + subcat2 + "')";
			PreparedStatement ps = c.prepareStatement(sql);
			ps.execute();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

	public static void deleteCatalog(int id_catalog) {
		Connection c;
		try {
			c = getConnection();
			String sql = "DELETE FROM catalog WHERE id_catalog = '"+id_catalog+"'";
			PreparedStatement ps = c.prepareStatement(sql);
			ps.execute();

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
