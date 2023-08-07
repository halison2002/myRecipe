<%-- 
    Document   : profile1
    Created on : 07-Mar-2023, 23:34:55
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
    <title>My Recipes</title>
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
</head>

<body>
    <div id="container">
        <jsp:include page="header.jsp"></jsp:include>
        <div id="content">
            <div id="content-left">
                <h3 style="font-weight: normal; font-size: 20px">Welcome, Halison</h3>
                <h3 style="font-size: 20px">Account</h3>
                <ul>
                    <a href="profile.jsp">
                        <li>Personal information</li>
                    </a>
                </ul>
                <h3 style="font-size: 20px">Action</h3>
                <ul>
                    <a href="favorite"><li>My favorite list</li></a>
                    <a href="editRecipe"><li>Edit your recipes</li></a>
                    <c:if test="${sessionScope.acc.role == 1}">
                        <a href="manageUsers.jsp"><li>Manage</li></a>
                    </c:if>
                </ul>
            </div>
            <div id="content-right" style="border: 1px #ec9393; padding: 5px;">
                <div class="path">List Of My Recipes</b></div>
                <div style="margin-left:10px; margin-bottom: 5px">
                    <a href="#addRecipeModal" class="btn btn-success" data-toggle="modal"><i class="material-icons" >&#xE147;</i> <span>Add New Recipe</span></a>
                </div>
                <div class="content-main">
                <c:forEach items="${listR}" var="o">
                    <div class="Recipe" style="margin-bottom:5px">
                        <div style="display: flex">
                            <div style="flex: 1">
                                <a href="Detail?rid=${o.id}"><img src="assets/img/${o.picture}" width="40%"
                                        style="margin-left: 18px" /></a>
                            </div>
                            <div style="flex: 1">
                                <div><a href="Detail?rid=${o.id}">${o.name}</a> </div>
                                <a href="loadRecipe?id=${o.id}" class="edit" ><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                    <a href="deleteRecipe?rid=${o.id}" class="delete" ><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
					
                                <div style="color:#ec9393">${o.time} minutes</div>
                                <div>${o.description}</div>
                            </div>
                        </div>
                    </div>
                </c:forEach>  
                </div>
            </div>
            <!-- Add Modal HTML -->
<div id="addRecipeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
                    <form action="addRecipe" method="post">
				<div class="modal-header">						
					<h4 class="modal-title">Add Recipe</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>Name</label>
						<input name="name" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Kind</label><br/>
                            <select name="kind">
                                <option value="catid1">--- Select ---</option>
                                <c:forEach items="${listK}" var="k" >
                                    <option value="${k.id}">${k.name}</option>
                                </c:forEach>
                            </select>
                            <br/>
					</div>					
                    <div class="form-group">
                        <label>Picture</label>
                                    <input name="picture" type="file" class="form-control-file" required>

<!--                        <textarea name="picture" class="form-control" required></textarea>-->
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Time</label>
						<input name="time" type="text" class="form-control" required>
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
<!-- Edit Modal HTML -->

        </div>
  <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>

</html>
