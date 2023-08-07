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
        <title>Search</title>
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
                        <c:forEach items="${listK}" var="k" >
                            <a href="#">
                                <li>${k.name}</li>
                            </a>
                        </c:forEach>

                    </ul>
                </div>
                <div id="content-right">
                    <div class="path">Search Recipe</b></div>

                    <div class="content-main" style="display:flex">
                        <c:forEach  items="${listS}" begin="${page.begin}" end="${page.end}" var="o" >
                            <div class="product">
                                <a href="Detail?rid=${o.id}"><img src="assets/img/${o.picture}" width="100%"/></a>
                                <div class="name"><a href="Detail?rid=${o.id}">${o.name}</a></div>
                                <div class="price" style="color: #ffcccc">${o.time} minutes</div>
                                <div class="description"> ${o.description}</div>
                                <div><a href="Detail?rid=${o.id}">See more</a></div>
                            </div>
                        </c:forEach>
                    </div>
                <c:if test="${page.index!=0}">
                    <span class='btn'><a href ="search?nrpp=${page.nrpp}&index=0">Home</a></span>
                    <span class='btn'><a href ="search?nrpp=${page.nrpp}&index=${page.index-1}">Pre</a></span>
                </c:if>
                    
                    <c:forEach var ="p" begin = "${0}" end ="${page.totalPage-1}">
                        <span class ='btn'><a href="search?nrpp=${page.nrpp}&index=${p}">${p+1}</a></span>
<!--                        <span class ='btn'><a href="#">p</a></span>-->
                    </c:forEach>
                 <c:if test="${page.index!=page.totalPage-1}">
                    <span class='btn'><a href ="search?nrpp=${page.nrpp}&index=${page.index+1}">Next</a></span>
                    <span class='btn'><a href ="search?nrpp=${page.nrpp}&index=0">End</a></span>
                </c:if>

                    
                    
                    <!--                   <div class="content-main" style="display:flex">
                    <c:forEach  items="${listS}" begin="1" end="6" var="o" >
                        <div class="product">
                            <a href="Detail?rid=${o.id}"><img src="assets/img/${o.picture}" width="100%"/></a>
                            <div class="name"><a href="Detail?rid=${o.id}">${o.name}</a></div>
                            <div class="price" style="color: #ffcccc">${o.time} minutes</div>
                            <div class="description"> ${o.description}</div>
                            <div><a href="Detail?rid=${o.id}">See more</a></div>
                        </div>
                    </c:forEach>
                </div>
                <div class="content-main" style="display:flex">

                    <c:forEach  items="${listS}" begin="7" end="12" var="o">
                        <div class="product">
                            <a href="Detail?rid=${o.id}"><img src="assets/img/${o.picture}" width="100%"/></a>
                            <div class="name"><a href="Detail?rid=${o.id}">${o.name}</a></div>
                            <div class="price" style="color: #ffcccc">${o.time} minutes</div>
                            <div class="description"> ${o.description}</div>
                            <div><a href="Detail?rid=${o.id}">See more</a></div>
                        </div>
                    </c:forEach>
                </div>
                <div class="content-main" style="display:flex">

                    <c:forEach  items="${listS}" begin="13" end="18" var="o">
                        <div class="product">
                            <a href="Detail?rid=${o.id}"><img src="assets/img/${o.picture}" width="100%"/></a>
                            <div class="name"><a href="Detail?rid=${o.id}">${o.name}</a></div>
                            <div class="price" style="color: #ffcccc">${o.time} minutes</div>
                            <div class="description"> ${o.description}</div>
                            <div><a href="Detail?rid=${o.id}">See more</a></div>
                        </div>
                    </c:forEach>
                </div>-->

                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>

        </div>
    </body>

</html>
