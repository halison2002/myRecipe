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
                    Please enter the email address registered with us. 
                    Enter the correct question security and correct answer to create new password.
                </div>
                <div id="form-content">
                    <form action="forgot" method="post">
                         <div role="alert" style="background-color:#ffcccc ;color: red; padding-right:50px">
                            ${mess1}
                        </div>
                        <label for="email">Email Address:</label><br/>
                    <input type="email" name="email" id="email" required>
                    <br/>
                    <div role="alert" style="background-color:#ffcccc ;color: red; padding-right:50px; margin-top: 10px">
                            ${mess2}
                        </div>
                        <label for="securityQuestion">Security Question:</label><br/>
                    <select name="securityQuestion" id="securityQuestion">
                        <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
                        <option value="What is your favorite color?">What is your favorite color?</option>
                        <option value="What is your pet's name?">What is your pet's name?</option>
                    </select><br/>
                    <input type="text" name="securityAnswer" id="securityAnswer" required>                        
                    <br/>                
                        <input type="submit" value="GET PASSWORD" style="margin-bottom: 30px;"/><br/>
                    </form>
                </div>
                <div style="padding: 20px;">
                    <a href="forgot.jsp">
                        Or you can use Email OTP >>
                    </a>
                </div>
            </div>
        </div>
  <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>
