<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="windows-1256">
    <link rel="stylesheet" href="css/loginpro.css">
     <link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
     <link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.css">
     <script src="Semantic-UI-CSS-master/semantic.min.js"></script>
     <script src="Semantic-UI-CSS-master/semantic.js"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
     
    <title>Student Log in</title>
</head>
<body>
    <div class="context">
        

        <h1>Student Log in</h1>
        <form class="ui form" action="loginservlet" method="POST">
            <div class="field">
              <label>CNE</label>
              <input type="text" name="UCNE" placeholder="D123....">
            </div>
            <div class="field">
              <label>Password</label>
              <input type="password" name="UCNI" placeholder="password">
            </div>
            <div class="field">
              <div class="ui">
                <label>Already have account? <a href="regester.jsp">sign up</a></label>
              </div>
            </div>
            <button class="ui primary button" type="submit">Log in</button>
          </form>

            

    </div>


<div class="area" >
  <button class="ui homebtn inverted basic button"><a href="home.jsp">Home</a></button>
            <ul class="circles">
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
            </ul>
    </div >

    <script src="js/loginpro.js"></script>
</body>
</html>