<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
    <title>Админка</title>
  </head>
  <body>
    <c:if test = "${errorDB}">
      <p>Ошибка в подключении к БД<p>
    </c:if>
    <p>Каталоги</p>
    <table width="50%" height="30%" border='1'>
	  <c:forEach items="${catalogList}" var="catalog">
	    <tr>
		  <td>${catalog.id_catalog}</td>
		  <td>${catalog.catalog_main_name}</td>
		  <td>${catalog.subcat1}</td>
		  <td>${catalog.subcat2}</td>
		  <td><a href="delete?type=catalog&id=${catalog.id_catalog}">Удалить</a></td>
		</tr>	
	  </c:forEach>
    </table>
    <p>Создать каталог</p>
    <form id="addCatalog" action="add" method="POST">
      <table width="50%" height="30%" border='1'>
        <tr>
		  <td>Корневой каталог</td>
		  <td>Вложенный каталог 1</td>
		  <td>Вложенный каталог 2</td>
		</tr>	
		<tr>
		  <td> 
		    <c:if test = "${errorField1}">
              <p>Это поле должно быть заполнено </p>
            </c:if>
			<input type="text" name="catalog_main" >
		  </td> 
		  <td><input type="text" name="subcat1" ></td>
		  <td><input type="text" name="subcat2" ></td>
	    </tr>  	  
	  </table>
	  <input type="hidden" name="type" value="catalog">
	  <input type="submit" value="Сохранить" >
    </form>
  </body>
</html>