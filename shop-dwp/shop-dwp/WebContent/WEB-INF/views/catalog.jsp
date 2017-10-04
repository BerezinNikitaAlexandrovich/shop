<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Каталог товаров</title>
    <!--  CSS JS links, meta-->
    <jsp:include page="/components/jsp/static_links.jsp"></jsp:include>
    <!-- // CSS JS links, meta-->
  </head>	
  <body>
    <!-- header -->
    <jsp:include page="/components/jsp/header.jsp"></jsp:include>
    <!-- //header -->
    <!-- products-breadcrumb -->
	<div class="view_name">
	  <div class="container">
	    <ul>
		  <li><i class="fa fa-home" aria-hidden="true"></i><a href="${pageContext.servletContext.contextPath}">На главную</a><span>|</span></li>
		  <li>${catalogName}</li>
	    </ul>
	  </div>
	</div>
<!-- //products-breadcrumb -->
    <!-- menu -->
    <jsp:include page="/components/jsp/menu.jsp"></jsp:include>
    <!-- //menu -->
    <!-- footer -->
    <jsp:include page="/components/jsp/footer.jsp"></jsp:include>   
    <!-- //footer -->
  </body>
</html>

