<%-- 
    Document   : EditRecipe
    Created on : 13-Mar-2023, 23:00:47
    Author     : Le Vu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <jsp:useBean id="a" class="DAO.DAO" scope="request"></jsp:useBean>
    <title>Edit Account</title>
    <link href="assets/css/index.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

   
</head>
    <body>
        <div >
	<div>
		<div class="modal-content">
                    <form action="UpdateRecipe" method="post">
                        <div class="modal-header" style="background-color: #E96479;">						
					<h4 class="modal-title">Edit Recipe</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true"><a href="editRecipe">&times;</a></button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>ID</label>
                                                <input value="${detail.id}" name="id" type="text" readonly="">
					</div>
					<div class="form-group">
						<label>Name</label>
                                                <input value="${detail.name}" name="name" type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Kind</label><br/>
                            <select name="kind">
                                <option value=""${detail.kindId}>${a.getKindById(detail.kindId).getName()}</option>
                                <c:forEach items="${a.allKind}" var="k" >
                                    <option value="${k.id}">${k.name}</option>
                                </c:forEach>
                            </select>
                            <br/>
					</div>					
                    <div class="form-group">
                        <label>Picture</label>
                          <input value="${detail.picture}" name="picture" type="file" class="form-control-file" required>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control" required>${detail.description}</textarea>
                    </div>
                    <div class="form-group">
                        <label>Time</label>
						<input value="${detail.time}" name="time" type="text" class="form-control" required>
					</div>
				</div>
				<div class="modal-footer">
					<input type="submit" class="btn btn-success" value="Edit">
				</div>
			</form>
		</div>
	</div>
</div>
    </body>
</html>
