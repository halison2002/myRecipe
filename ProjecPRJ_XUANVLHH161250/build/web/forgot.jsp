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
                <h3 style="padding: 20px;">Forgot your account password?</h3>
                <div style="padding: 0px 20px 10px;">
                    Please enter the email address registered with us to create a new password. We will send an email to the email address provided and require verification before we can generate a new password
                </div>
                <div id="form-content">
                    <form action="" method="post">
                        <label>Enter your registered email address<span style="color: red;">*</span></label><br/>
                        <input type="text"/><br/>
                        <input type="submit" value="GET PASSWORD" style="margin-bottom: 30px;"/><br/>
                    </form>
                </div>
                <div  style="padding: 20px;">
                    <a href="forgotQS.jsp">
                        Or you can use Question Security >>
                    </a>
                </div>
            </div>
        </div>
  <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>
