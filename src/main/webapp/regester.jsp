<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student regester</title>
    <meta charset="windows-1256">
    <link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
    <link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.css">
    <script src="Semantic-UI-CSS-master/semantic.min.js"></script>
    <script src="Semantic-UI-CSS-master/semantic.js"></script>
    <script src="jquery-3.6.3.min.js"></script>
    <link rel="stylesheet" href="css/regester.css">
</head>
<body>

       
              <div class="loginitem">

                   <div class="login">
                   
                    <form class="ui form"  method="POST" action="regesterservlet">
                        <h1 class="ui header">Student Sign in</h1>


                        <div class="two fields">
                            <div class=" required field">
                              <label>First name</label>
                              <input name="UFname" type="text" placeholder="First Name">
                            </div>
                            <div class=" required field">
                              <label>last name</label>
                              <input name="ULname" type="text" placeholder="last Name">
                            </div>
                            
                          </div>

                          
                          <div class="field">
                         <div class="ui form">
                            <div class="required field">
                             <label>Gmail</label>
                             <input name="Uemail" type="text" placeholder="Example@gmail.com">
                            </div>
                         </div>
                        </div>


                        <div class="field required">
                          <label>Branche</label>
                          <select name="Ubranch" class="ui dropdown">
                           <option value="Genie Informatique">Génie Informatique</option>
                           <option value="Langues Etrangeres Appliquees">Langues Etrangères Appliquées</option>
                           <option value="Agro-BV-GEDD">Agro-BV-GEDD</option>
                           <option value="Economie et Gestion">Economie et Gestion</option>
                           <option value="Sciences de la vie">Sciences de la vie</option>
                         </select>
                  </div>
                       

                         <div class="field">
                         <div class="ui form">
                            <div class="two fields">
                              <div class="field required">
                                <label>CNE</label>
                                <input name="Ucne" type="text" placeholder="D132.........">
                              </div>
                              <div class="field required">
                                <label>CNI</label>
                                <input name="Ucni" type="text" placeholder="JC.....">
                              </div>
                            </div>
                          </div>
                        </div>

                        <div class="field">
                            <div class="ui form">
                               <div class="two fields">
                                 <div class="field">
                                   <label>N° phone</label>
                                   <input name="Uphone" type="text" placeholder="+212 XXX">
                                 </div>
                                 <div class="field">
                                   <label>CNI</label>
                                   <select name="Usex" class="ui dropdown">
                                    <option value="M">Male</option>
                                    <option value="F">Female</option>
                                  </select>
                                 </div>
                               </div>
                             </div>
                           </div>
                   

                           <button class="ui primary button" type="submit" name="signin" tabindex="0">Sign in</button>
                           <button class="ui button" type="reset" tabindex="0">reset</button>

                      </form>
                   
                   </div>

                   <div class="backimage">

                    <p class="par">Create your own compt to get your courses</p>
                    <img class="plate1" src="img/Capture d’écran (168).png" alt="">
                    <img class="plate2" src="img/Capture d’écran (169).png" alt="">
              
              <div class="area" >
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

                   </div>

              </div>

           
     
</body>
</html>