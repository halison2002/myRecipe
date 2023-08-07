<%-- 
    Document   : forgot
    Created on : 07-Mar-2023, 23:31:05
    Author     : Le Vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forgot the password?</title>
    <link href="assets/css/index.css" rel="stylesheet"/>
</head>
<body>
    <div id="container">
        <jsp:include page="header.jsp"></jsp:include>
        <div id="content">
            <div id="form">
                <h3 style="padding: 20px;">Change your account password:</h3>
                <div id="form-content">
                    <form action="changePass" method="post">
                       
                    <label for="email">Email Address:</label><br/>
                    <input type="email" name="email" value="${userEmail}">
                    <br/>
                    <div role="alert" style="background-color:#ffcccc ;color: red; padding-right:50px">
                            ${mess}
                        </div>
                    <label for="password">Password:</label><br/>
                    <input type="password" name="pass" id="password" required>
                    <br/>
                    <label for="repassword">Re-Password:</label><br/>
                    <input type="password" name="repass" id="password" required>
                    <br/>               
                        <input type="submit" value="Change PASSWORD" style="margin-bottom: 30px;"/><br/>
                    </form>
                </div>
            </div>
        </div>
  <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>
