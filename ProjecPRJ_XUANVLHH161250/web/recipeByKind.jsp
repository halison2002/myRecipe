<%-- 
    Document   : LandiPage
    Created on : 07-Mar-2023, 23:00:31
    Author     : Le Vu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <jsp:useBean id="a" class="DAO.DAO" scope="request"></jsp:useBean>
  <title>${kind.name}</title>
  <link href="../assets/css/index.css" rel="stylesheet" />
  <link href="assets/css/index.css" rel="stylesheet" />
</head>

<body>
  <div id="container">
  <jsp:include page="header.jsp"></jsp:include>
    <div id="content">
      <div id="content-left">
        <h3>RECIPES</h3>
        <ul>
        <c:forEach items="${a.allKind}" var="k" >
                <a href="kind?id=${k.id}">
                    <li>${k.name}</li>
                </a>
            </c:forEach>
          
        </ul>
      </div>
      <div id="content-right">         
        <div class="path">${kind.name}</b></div>
        <div class="content-main" style="display:flex">
            <c:forEach  items="${list}" var="o">
                <div class="product">
                    <a href="Detail?rid=${o.id}"><img src="assets/img/${o.picture}" width="100%"/></a>
                    <div class="name"><a href="Detail?rid=${o.id}">${o.name}</a></div>
                    <div class="price" style="color: #E96479; font-size: 12px; font-style: italic ">${o.time} minutes</div>
                    <div class="description"> ${o.description}</div>
                    <div><a href="Detail?rid=${o.id}">See more</a></div>
                </div>
            </c:forEach>
        </div>
      </div>
    </div>
  <jsp:include page="footer.jsp"></jsp:include>

  </div>
</body>

</html>
