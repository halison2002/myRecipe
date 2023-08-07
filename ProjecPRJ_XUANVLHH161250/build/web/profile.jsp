<%-- 
    Document   : profile
    Created on : 07-Mar-2023, 23:33:24
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
        <title>Profile</title>
        <link href="assets/css/index.css" rel="stylesheet" />
    </head>

    <body>
        <div id="container">
            <jsp:include page="header.jsp"></jsp:include>
            <c:choose>
                <c:when test="${sessionScope.acc != null}">

                    <div id="content">
                        <div id="content-left">
                            <h3 style="font-weight: normal;">Welcome, ${acc.name}</h3>
                            <h3>Account</h3>
                            <ul>
                                <a href="profile.jsp"><li>Personal information</li></a>
                            </ul>
                            <h3>Action</h3>
                            <ul>
                                <a href="favorite"><li>My favorite list</li></a>
                                <a href="editRecipe"><li>Edit your recipes</li></a>
                                        <c:if test="${sessionScope.acc.role == 1}">
                                    <a href="manageUsers.jsp"><li>Manage</li></a>
                                        </c:if>
                            </ul>
                        </div>
                        <div id="content-right">
                            <div class="path">Personal information</b></div>
                            <div class="content-main">
                                <div id="profile-content">
                                    <div class="profile-content-col">
                                        <div>Name: <br/>${sessionScope.acc.name}</div>
                                        <div>Phone: <br/> ${sessionScope.acc.phone}</div>
                                        <div>
                                            <button> <a href="LoadUser1?uid=${sessionScope.acc.id}" class="edit">Edit Info</a>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="profile-content-col">
                                        <div>Role: <br/>
                                            <c:if test="${sessionScope.acc.role == 1}">
                                                Admin
                                            </c:if>
                                            <c:if test="${sessionScope.acc.role == 0}">
                                                User
                                            </c:if>
                                        </div>
                                        <div>Address: <br/>${sessionScope.acc.address}</div>
                                    </div>
                                    <div class="profile-content-col">
                                        <div>Email: <br/>${sessionScope.acc.email}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </c:when>
                <c:otherwise>
                    <h3 style="color: red;">You need sign-in to access this Page</h3>
                </c:otherwise>
            </c:choose>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
