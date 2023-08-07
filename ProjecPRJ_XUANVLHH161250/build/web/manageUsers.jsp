<%-- 
    Document   : manageUser
    Created on : 07-Mar-2023, 23:32:03
    Author     : Le Vu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Manage Accounts</title>
        <jsp:useBean id="a" class="DAO.DAO" scope="request"></jsp:useBean>
            <link href="assets/css/index.css" rel="stylesheet" />
            <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
            <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
            <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
           <style>
                body {
                    color: #b44848;
                    background: #f5f5f5;
                    font-family: 'Varela Round', sans-serif;
                    font-size: 13px;
                }
                .table-responsive {
                    margin: 30px 0;
                }
                .table-wrapper {
                    background: #fff;
                    padding: 20px 25px;
                    border-radius: 3px;
                    min-width: 1000px;
                    box-shadow: 0 1px 1px rgba(0,0,0,.05);
                }
                .table-title {
                    padding-bottom: 15px;
                    background: #b44848;
                    color: #fff;
                    padding: 16px 30px;
                    min-width: 100%;
                    margin: -20px -25px 10px;
                    border-radius: 3px 3px 0 0;
                }
                .table-title h2 {
                    margin: 5px 0 0;
                    font-size: 24px;
                }
                .table-title .btn-group {
                    float: right;
                }
                .table-title .btn {
                    color: #fff;
                    float: right;
                    font-size: 13px;
                    border: none;
                    min-width: 50px;
                    border-radius: 2px;
                    border: none;
                    outline: none !important;
                    margin-left: 10px;
                }
                .table-title .btn i {
                    float: left;
                    font-size: 21px;
                    margin-right: 5px;
                }
                .table-title .btn span {
                    float: left;
                    margin-top: 2px;
                }
                table.table tr th, table.table tr td {
                    border-color: #e9e9e9;
                    padding: 12px 15px;
                    vertical-align: middle;
                }
                table.table tr th:first-child {
                    width: 60px;
                }
                table.table tr th:last-child {
                    width: 100px;
                }
                table.table-striped tbody tr:nth-of-type(odd) {
                    background-color: #fcfcfc;
                }
                table.table-striped.table-hover tbody tr:hover {
                    background: #f5f5f5;
                }
                table.table th i {
                    font-size: 13px;
                    margin: 0 5px;
                    cursor: pointer;
                }
                table.table td:last-child i {
                    opacity: 0.9;
                    font-size: 22px;
                    margin: 0 5px;
                }
                table.table td a {
                    font-weight: bold;
                    color: #566787;
                    display: inline-block;
                    text-decoration: none;
                    outline: none !important;
                }
                table.table td a:hover {
                    color: #2196F3;
                }
                table.table td a.edit {
                    color: #FFC107;
                }
                table.table td a.delete {
                    color: #F44336;
                }
                table.table td i {
                    font-size: 19px;
                }
                table.table .avatar {
                    border-radius: 50%;
                    vertical-align: middle;
                    margin-right: 10px;
                }
                .pagination {
                    float: right;
                    margin: 0 0 5px;
                }
                .pagination li a {
                    border: none;
                    font-size: 13px;
                    min-width: 30px;
                    min-height: 30px;
                    color: #999;
                    margin: 0 2px;
                    line-height: 30px;
                    border-radius: 2px !important;
                    text-align: center;
                    padding: 0 6px;
                }
                .pagination li a:hover {
                    color: #666;
                }
                .pagination li.active a, .pagination li.active a.page-link {
                    background: #ffcccc;
                }
                .pagination li.active a:hover {
                    background: #ffcccc;
                }
                .pagination li.disabled i {
                    color: #ccc;
                }
                .pagination li i {
                    font-size: 16px;
                    padding-top: 6px
                }
                .hint-text {
                    float: left;
                    margin-top: 10px;
                    font-size: 13px;
                }
                /* Custom checkbox */
                .custom-checkbox {
                    position: relative;
                }
                .custom-checkbox input[type="checkbox"] {
                    opacity: 0;
                    position: absolute;
                    margin: 5px 0 0 3px;
                    z-index: 9;
                }
                .custom-checkbox label:before{
                    width: 18px;
                    height: 18px;
                }
                .custom-checkbox label:before {
                    content: '';
                    margin-right: 10px;
                    display: inline-block;
                    vertical-align: text-top;
                    background: white;
                    border: 1px solid #bbb;
                    border-radius: 2px;
                    box-sizing: border-box;
                    z-index: 2;
                }
                .custom-checkbox input[type="checkbox"]:checked + label:after {
                    content: '';
                    position: absolute;
                    left: 6px;
                    top: 3px;
                    width: 6px;
                    height: 11px;
                    border: solid #000;
                    border-width: 0 3px 3px 0;
                    transform: inherit;
                    z-index: 3;
                    transform: rotateZ(45deg);
                }
                .custom-checkbox input[type="checkbox"]:checked + label:before {
                    border-color: #03A9F4;
                    background: #ffcccc;
                }
                .custom-checkbox input[type="checkbox"]:checked + label:after {
                    border-color: #fff;
                }
                .custom-checkbox input[type="checkbox"]:disabled + label:before {
                    color: #b8b8b8;
                    cursor: auto;
                    box-shadow: none;
                    background: #ddd;
                }
                /* Modal styles */
                .modal .modal-dialog {
                    max-width: 400px;
                }
                .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                    padding: 20px 30px;
                }
                .modal .modal-content {
                    border-radius: 3px;
                    font-size: 14px;
                }
                .modal .modal-footer {
                    background: #ecf0f1;
                    border-radius: 0 0 3px 3px;
                }
                .modal .modal-title {
                    display: inline-block;
                }
                .modal .form-control {
                    border-radius: 2px;
                    box-shadow: none;
                    border-color: #dddddd;
                }
                .modal textarea.form-control {
                    resize: vertical;
                }
                .modal .btn {
                    border-radius: 2px;
                    min-width: 100px;
                }
                .modal form label {
                    font-weight: normal;
                }
            </style>
            <script>
                $(document).ready(function () {
                    // Activate tooltip
                    $('[data-toggle="tooltip"]').tooltip();

                    // Select/Deselect checkboxes
                    var checkbox = $('table tbody input[type="checkbox"]');
                    $("#selectAll").click(function () {
                        if (this.checked) {
                            checkbox.each(function () {
                                this.checked = true;
                            });
                        } else {
                            checkbox.each(function () {
                                this.checked = false;
                            });
                        }
                    });
                    checkbox.click(function () {
                        if (!this.checked) {
                            $("#selectAll").prop("checked", false);
                        }
                    });
                });
            </script>
        </head>
        <body>
            <div id="container">
                <div id="header">
                    <div id="logo-admin">
                        <a href="Home">Admin Role</a>
                    </div>
                    <div id="banner-admin">
                        <ul>
                        <c:if test="${sessionScope.acc != null}"> 
                            <li><a href="profile.jsp">Hello ${acc.name}</a></li>
                            <li><a href="logout">SignOut</a></li>
                            </c:if>
                    </ul>
                </div>
            </div>
    <c:choose>
        <c:when test="${sessionScope.acc != null && sessionScope.acc.role == 1}">

            <div id="content">
                <div id="content-left">
                    <ul>
                        <a href="Kinds.jsp"><li>Kinds</li></a>
                        <a href="Recipes.jsp"><li>Recipes</li></a>
                        <a href="manageUsers.jsp"><li>Users</li></a>
                    </ul>
                </div>
                <div id="content-right">

                    <div class="container-xl">
                        <div class="table-responsive">
                            <div class="table-wrapper">
                                <div class="table-title">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <h2>Manage Users</b></h2>
                                        </div>
                                        <div class="col-sm-6">
                                            <a href="#addUserModal" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Add New Admin</span></a>
                                        </div>
                                    </div>
                                </div>
                                <table class="table table-striped table-hover">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Role</th>
                                            <th>
                                                Active
                                            </th>
                                            <th>Address</th>
                                            <th>Phone</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${a.allUsers}" var="o">
                                            <tr>
                                                <td>${o.name}</td>
                                                <td>${o.email}</td>
                                                <td>${o.role==1?"Admin":"User"}</td>
                                                <td>
                                                    ${o.active==true?"active":"deactive"}
                                                </td>
                                                <td>${o.address}</td>
                                                <td>${o.phone}</td>
                                                <td>
                                                    <c:if test="${sessionScope.acc.getId()==o.id}">
                                                    <a href="LoadUser?uid=${o.id}" class="edit"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                    </c:if>
                                                    <a href="deleteUser?uid=${o.id}" class="delete"><i class="material-icons" title="Delete">&#xE872;</i></a>
                                                </td>
                                            </tr>

                                        </c:forEach>
                                    </tbody>
                                </table>
                                <div class="clearfix">
                                    <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                                    <ul class="pagination">
                                        <li class="page-item disabled"><a href="#">Previous</a></li>
                                        <li class="page-item"><a href="#" class="page-link">1</a></li>
                                        <li class="page-item"><a href="#" class="page-link">2</a></li>
                                        <li class="page-item active"><a href="#" class="page-link">3</a></li>
                                        <li class="page-item"><a href="#" class="page-link">4</a></li>
                                        <li class="page-item"><a href="#" class="page-link">5</a></li>
                                        <li class="page-item"><a href="#" class="page-link">Next</a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>        
                    </div>
                    <!-- Add Modal HTML -->
                    <div id="addUserModal" class="modal fade">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form action="addAdmin" method="post">

                                    <div class="modal-header">						
                                        <h4 class="modal-title">Add Admin</h4>
                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">					
                                       
                                        <div class="form-group">
                                            <label>Email</label>
                                            <input type="email" name="email" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Password:</label><br/>
                                            <input type="password" name="pass" id="password" required>
                                        </div>
                                        
                                        <div class="form-group">
                                            <label for="repassword">Re-Password:</label><br/>
                                            <input type="password" name="repass" id="password" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Name</label>
                                            <input type="text" name="name" class="form-control" required>
                                        </div>
                                        <div class="form-group">
                                            <label>Phone</label>
                                            <input type="text" name="phone" class="form-control" required>
                                        </div>	
                                        <div class="form-group">
                                            <label>Address</label>
                                            <textarea class="form-control" name="address" required></textarea>
                                        </div>				
                                        <div class="form-group">
                                            <label for="securityQuestion">Security Question:</label><br/>
                                            <select name="securityQuestion" id="securityQuestion">
                                                <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
                                                <option value="What is your favorite color?">What is your favorite color?</option>
                                                <option value="What is your pet's name?">What is your pet's name?</option>
                                            </select><br/>
                                            <input type="text" name="securityAnswer" id="securityAnswer" required> 
                                        </div>					
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                                        <input type="submit" class="btn btn-success" value="Add">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>   


        <script>
            function myalert() {
                if(${mess1}!==null)   alert(${mess1});
                else alert("Success add new admin!");
    }
        </script>
        </c:when>
            <c:otherwise>
                <h3 style="color: red;">Only Admin can access this Page</h3>
       </c:otherwise>
    </c:choose>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>