<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- путь проекта -->
<% String contextPath = request.getContextPath(); %>
<!-- menu -->
<div class="menu_left">
  <nav class="navbar nav_bottom">
    <!-- Отображение кнопки списка на мобильных устройствах -->
    <div class="navbar-header nav_2">
	  <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
		<span class="sr-only">Toggle navigation</span> 
		<span class="icon-bar"></span> 
		<span class="icon-bar"></span> <span class="icon-bar"></span>
	  </button>
	</div> 
	
	<!--//Отображение кнопки списка на мобильных устройствах -->
	<!-- Элементы меню -->
	<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
	  <ul class="nav navbar-nav nav_1">
		<li class="dropdown mega-dropdown active">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Здесь будет каталог (группа товаров) 1<span class="caret"></span></a>				
		  <div class="dropdown-menu mega-dropdown-menu goods_menu">
			<div class="menu">
			  <ul>	
			    <li><a href="">Подкаталог 1</a></li>
				<li><a href="">Подкаталог 2</a></li>
			  </ul>
			</div>                  
		  </div>				
		</li>
		<li class="dropdown mega-dropdown active">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown">Здесь будет каталог (группа товаров) 2<span class="caret"></span></a>				
		  <div class="dropdown-menu mega-dropdown-menu goods_menu">
		    <div class="menu">
			  <ul>	
			    <li><a href="">Подкаталог 3</a></li>
			    <li><a href="">Подкаталог 4</a></li>
			  </ul>
		    </div>                  
		  </div>				
	    </li>
	  </ul>
	</div>
	<!--// Элементы меню -->
  </nav>
</div>
<!-- // menu -->