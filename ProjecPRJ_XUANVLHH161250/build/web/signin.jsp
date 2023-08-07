<%-- 
    Document   : signin
    Created on : 07-Mar-2023, 23:36:20
    Author     : Le Vu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign In</title>
    <link href="assets/css/index.css" rel="stylesheet" />
</head>

<body>
  <div id="container">
      <jsp:include page="header.jsp"></jsp:include>
        <div id="content">
            <div id="form">
                <div id="form-title">
                    <span><a href="signup.jsp">SIGN UP</a></span>
                    <span><a href="signin.jsp" style="color: red;">SIGN IN</a></span>
                </div>
                <div id="form-content">
                    <form action="login" method="post">
                        <div role="alert" style="background-color:#ffcccc ;color: red; padding-right:50px">
                            ${mess}
                        </div>
                        <label>Email<span style="color: red;">*</span></label><br/>
                        <input name="user" type="text" required=""/><br/>
                        <label>Password<span style="color: red;">*</span></label><br/>
                        <input name ="pass" type="password" required/><br/>
                        <div><a href="forgot.jsp">Forgot password?</a></div>
                        <input type="submit" value="SIGN IN"/><br/>
                        <input type="button" value="FACEBOOK LOGIN" style="background-color: #3b5998;"/><br/>
                        <input type="button" value="GOOGLE LOGIN" style="background-color: #FFC107;margin-bottom: 30px;"/>
                    </form>
                </div>
            </div>
        </div>
  <jsp:include page="footer.jsp"></jsp:include>
    </div>
</body>
</html>
