<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!-- header -->
<div class="header">
  <!-- Поиск -->
  <div class="search">
	<!-- Обработка формы поиск товара -->
    <form action="#" method="post">
	  <input type="text" name="Product" value="Поиск товара..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Поиск товара...';}" required="">
	  <input type="submit" value=" ">
	</form>
	<!-- //Обработка формы поиск товара -->
	</div>
	<!-- //Поиск -->
    <!-- Контакты -->
	<div class="contact">
	  <h2><a href="">Контакты</a></h2>
	</div>
	<!-- //Контакты -->
	<!-- //Вход в корзину-->
    <div class="basket_entrance">  
	  <!-- Обработка формы входа в корзину -->
	  <form action="#" method="post">
        <fieldset>
          <input type="submit" name="submit" value="Корзина" class="button" />
        </fieldset>
      </form>
      <!-- //Обработка формы входа в корзину -->     
	</div>
	<!-- Вход пользователя в систему-->
	<div class="user_entrance">
      <ul>
		<li class="dropdown profile_details_drop">
		  <a href="#" class="dropdown-toggle" data-toggle="dropdown">
		    <i class="fa fa-user" aria-hidden="true"></i>
		    <span class="caret"></span>
		  </a>
		<div class="mega-dropdown-menu">
		  <div class="menu">
		    <ul class="dropdown-menu drp-mnu">
			  <!-- Обработка ссылок регистрация, войти -->
			  <li><a href="">Войти</a></li> 
			  <li><a href="">Регистрация</a></li>
			  <!-- //Обработка ссылок регистрация, войти -->	
			</ul>
		  </div>                  
	    </div>	
	  </li>
	</ul>
  </div>
  <div class="clearfix"></div>
</div>
<!-- Логотип -->
<div class="logo">
  <div class="container">
	<div class="logo_left">
	  <h1><a href=""><span>Магазин электротехнических изделий</span></a></h1>
    </div>
  </div>
</div>
<!-- //Логотип -->
<!-- //header -->