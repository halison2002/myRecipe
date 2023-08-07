<%-- 
    Document   : signup
    Created on : 07-Mar-2023, 23:36:50
    Author     : Le Vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link href="assets/css/index.css" rel="stylesheet" />
</head>

<body>
  <div id="container">
    <jsp:include page="header.jsp"></jsp:include>

        <div id="content">
            <div id="form">
                <div id="form-title">
                    <span><a href="signup.jsp" style="color: red;">SIGN UP</a></span>
                    <span><a href="signin.jsp">SIGN IN</a></span>
                </div>
                <div id="form-content" style="padding: 10px;">
                  <form method="post" action="signup">
                      <div role="alert" style="background-color:#ffcccc ;color: red; padding-right:50px">
                            ${mess1}
                        </div>
                    <label for="email">Email Address:</label><br/>
                    <input type="email" name="email" id="email" required>
                    <br/>
                    <label for="password">Password:</label><br/>
                    <input type="password" name="pass" id="password" required>
                    <br/>
                     <div role="alert" style="background-color:#ffcccc ;color: red; padding-right:50px">
                            ${mess2}
                        </div>
                    <label for="repassword">Re-Password:</label><br/>
                    <input type="password" name="repass" id="password" required>
                    <br/>
                    <label for="phone">Name: </label><br/>
                    <input type="text" name="name" id="name" required>
                    <br/>
                    <label for="phone">Phone Number:</label><br/>
                    <input type="text" name="phone" id="phone">
                    <br/>
                    <label for="address">Address:</label><br/>
                    <textarea name="address" id="address"></textarea>
                    <br/>
                    <label for="securityQuestion">Security Question:</label><br/>
                    <select name="securityQuestion" id="securityQuestion">
                        <option value="What is your mother's maiden name?">What is your mother's maiden name?</option>
                        <option value="What is your favorite color?">What is your favorite color?</option>
                        <option value="What is your pet's name?">What is your pet's name?</option>
                    </select><br/>
                    <input type="text" name="securityAnswer" id="securityAnswer" required>                        
                    <br/>
                    <button type="submit" style="display: block;width: 100px; background-color: rgb(198, 59, 87);margin-left: 90px;">Sign Up</button>
                </form>
                </div>
            </div>
        </div>
         <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>
