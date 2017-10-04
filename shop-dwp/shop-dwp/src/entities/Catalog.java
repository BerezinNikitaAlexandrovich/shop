package entities;

public class Catalog {
	private int id_catalog;
	private String catalog_main_name;
	private String subcat1;
	private String subcat2;

	public Catalog(int id_catalog, String catalog_main_name, String subcat1, String subcat2) {
		this.id_catalog=id_catalog;
		this.catalog_main_name=catalog_main_name;
		this.subcat1=subcat1;
		this.subcat2=subcat2;	
	}
	
	public Catalog() {
		
	}

	public int getId_catalog() {
		return id_catalog;
	}

	public String getCatalog_main_name() {
		return catalog_main_name;
	}

	public String getSubcat1() {
		return subcat1;
	}

	public String getSubcat2() {
		return subcat2;
	}

	public void setId_catalog(int id_catalog) {
		this.id_catalog = id_catalog;
	}

	public void setCatalog_main_name(String catalog_main_name) {
		this.catalog_main_name = catalog_main_name;
	}

	public void setSubcat1(String subcat1) {
		this.subcat1 = subcat1;
	}

	public void setSubcat2(String subcat2) {
		this.subcat2 = subcat2;
	}
}
