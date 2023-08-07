<%-- 
    Document   : newjsp
    Created on : 07-Mar-2023, 23:28:36
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
        <title>${detail.name}</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link href="assets/css/index.css" rel="stylesheet" />

    </head>
    <body>
        <div id="container">
            <jsp:include page="header.jsp"></jsp:include>
                <div id="content">
                    <div id="content-detail">
                        <div id="content-title">
                            <a href="Home">Home</a> >
                            <a href="kind?id=${detail.kindId}">${a.getKindById(detail.kindId).getName()}<a> >
                            <a href="#">${detail.name}</a>
                    </div>
                    <div id="product">
                        <div id="product-name">
                            <h2>${detail.name}</h2>
                            <div id="product-detail" >
                                <div id="product-detail-left" style="flex: 1">
                                    <div id="product-img">
                                        <img src="assets/img/${detail.picture}" width="100%"/>
                                    </div>
                                </div>
                                <div id="product-detail-right" style="flex:1; margin-left: 2px">
                                    <div id="product-detail-right-content">
                                        <div id="product-time">Cooking Time: ${detail.time} minutes</div>
                                        <c:if test="${sessionScope.acc != null}"> 
                                            <c:choose>
                                                <c:when test="${reci == null}">
                                                    <a href="addFavoriteRecipe?rid=${detail.id}"><i class="material-icons" data-toggle="tooltip" title="Like">&#xe87e;</i></a>
                                                </c:when>
                                                <c:otherwise>
                                                    <a href="deleteFavoriteRecipe1?rid=${detail.id}"><i class="material-icons" data-toggle="tooltip" title="UnLike">&#xe87d;</i></a>
                                                </c:otherwise>
                                            </c:choose>

                                        </c:if>

                                        <div>
                                            <h3>${detail.description}</h3>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="info-detail">
                        <div id="info-detail-title">
                            <div style="margin:10px auto;">
                                Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum, debitis. Asperiores soluta eveniet eos accusantium doloremque cum suscipit ducimus enim at sapiente mollitia consequuntur dicta quaerat, sunt voluptates autem. Quam!
                                <br/>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Rem illum autem veritatis maxime corporis quod quibusdam nostrum eaque laborum numquam quos unde eveniet aut, exercitationem voluptatum veniam fugiat, debitis esse?
                                <br/>Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio eligendi ratione vitae nobis numquam dolorum assumenda saepe enim cumque blanditiis, deleniti neque voluptate vel ducimus in omnis harum aut nisi.
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
        </div>
    </body>
</html>