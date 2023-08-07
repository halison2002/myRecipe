<%-- 
    Document   : EditRecipe
    Created on : 13-Mar-2023, 23:00:47
    Author     : Le Vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <jsp:useBean id="a" class="DAO.DAO" scope="request"></jsp:useBean>
            <title>Edit Recipe</title>
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
            <div>
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="updateAccount" method="post">

                            <div class="modal-header">						
                                <h4 class="modal-title">EDit User</h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><a href="manageUsers.jsp">&times;</a></button>
                            </div>
                            <div class="modal-body">					

                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${user.id}" name="id" class="form-control" readonly="" required>
                            </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input value="${user.email}" name="email" type="email" class="form-control" readonly="" required>
                            </div>
                            <div class="form-group">
                                <label for="password">Password:</label><br/>
                                <input value="${user.pass}" type="password" name="pass" id="password" required>
                            </div>

                            <div class="form-group">
                                <label for="repassword">Re-Password:</label><br/>
                                <input value="${user.pass}" type="password" name="repass" id="password" required>
                            </div>
                            <div class="form-group">
                                <label>Name</label>
                                <input value="${user.name}" name="name" type="text" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input value="${user.phone}" name="phone" type="text" class="form-control" required>
                            </div>	
                            <div class="form-group">
                                <label>Address</label>
                                <textarea name="address" class="form-control" required>${user.address}</textarea>
                            </div>				
                            <div class="form-group">
                                <label>Active</label>
                                <input type="radio" id="true" name="active" value="Yes">
                                  <label for="true">Yes</label><br>
                                  <input type="radio" id="false" name="active" value="No">
                                  <label for="false">No</label><br>
                            </div>				
                            <div class="form-group">
                                <label for="securityQuestion">Security Question:</label><br/>
                                <select value="${user.questionSecurity}" name="securityQuestion" id="securityQuestion">
                                    <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
                                    <option value="What is your favorite color?">What is your favorite color?</option>
                                    <option value="What is your pet's name?">What is your pet's name?</option>
                                </select><br/>
                                <input value="${user.answer}" type="text" name="securityAnswer" id="securityAnswer" required> 
                            </div>					
                        </div>
                        <div class="modal-footer">
                            <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
                            <input type="submit" class="btn btn-success" value="Update">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
