
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div id="header">
      <div id="logo">
        <a href="Home"><img src="assets/img/logo.png" /></a>
      </div>
      <div id="banner">
        <ul>
            <c:if test="${sessionScope.acc == null}"> 
                <li><a href="signin.jsp">SignIn</a></li>
                <li><a href="signup.jsp">SignUp</a></li>
            </c:if>
            <c:if test="${sessionScope.acc != null}"> 
                <li><a href="profile.jsp">Hello ${acc.name}</a></li>
                <li><a href="logout">SignOut</a></li>
            </c:if>
          
        </ul>
          <form action="search?nrpp=6&index=1" method="post">
            <input type="text" name="txt" placeholder="Search...">
            <button type="submit">Search</button>
           </form>
      </div>
</div>