<%@ page language="java" contentType="text/html; charset=windows-1256"
    pageEncoding="windows-1256"%>
    <%@ page import="java.sql.*" %>
   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="windows-1256">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
    <link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.css">
    <script src="Semantic-UI-CSS-master/semantic.min.js"></script>
    <script src="Semantic-UI-CSS-master/semantic.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bulma@0.9.4/css/bulma-rtl.min.css">
    <link rel="stylesheet" href="css/uikit.min.css" />
        <script src="js/uikit.min.js"></script>
        <script src="js/uikit-icons.min.js"></script>
    <link rel="stylesheet" href="css/plateform.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
</head>
<body>

    
    <div class="all">
      
             
     
      <div class="sectionss">
        <div class="nav-bar">
          <aside class="menu">
        
            <ul class="menu-list">
              <li><a>CollegeCourses</a></li>
              <li>
                <!-- <a class="is-active" style="background-color: #2185d0;">your gategory</a> -->
                <ul>
                  <li><a></a></li>
                  <li><a class="cours-tab" style="display:flex;flex-direction: row;align-items: center;"><i class="uil uil-book-open"></i> <div style="margin-left:10px ;">Courses</div></a></li>
                  <li><a></a></li>
                  <li><a class="exercise-tab" style="display:flex;flex-direction: row;align-items: center;"><i class="uil uil-notes"></i> <div style="margin-left:10px ;">Exercises</div></a></li>
                  <li><a></a></li>
                  <li><a class="work-tab" style="display:flex;flex-direction: row;align-items: center;"><i class="uil uil-telescope"></i> <div style="margin-left:10px ;">Practical work</div></a></li>
                  <li><a></a></li>
                  <li><a class="account-tab" style="display:flex;flex-direction: row;align-items: center;"><i class="uil uil-user-circle"></i> <div style="margin-left:10px ;">My account</div></a></li>
                  <li><a></a></li>
                  <li><a class="about-tab" style="display:flex;flex-direction: row;align-items: center;"><i class="uil uil-question-circle"></i> <div style="margin-left:10px ;">About as</div></a></li>
                </ul>
              </li>
             
            </ul>
            
          </aside>
        </div>
        <div class="menuu">

          <div class="ui small menu " style="margin: 0px;">
            <a class="avatar  item">
                <img src="img/logo1.png">
            </a>
            <a class="item navtext">
              Home
            </a>
          <p class="item">
               
               <div class="ui compact menu">
                   <div class="ui simple dropdown item">
                       Semester
                   <i class="dropdown icon"></i>
                         <div class="menu">
                             <a class="item" href="loginservlet?SES=S1">S1</a>
                             <a class="item" href="loginservlet?SES=S2">S2</a>
                             <a class="item" href="loginservlet?SES=S3">S3</a>
                             <a class="item" href="loginservlet?SES=S4">S4</a>
                             <a class="item" href="loginservlet?SES=S5">S5</a>
                             <a class="item" href="loginservlet?SES=S6">S6</a>
                         </div>
                    </div>
                 </div>
           
          </p>
     
            <div class="right menu">
              <div class="item">
                  <div class="ui primary button "><a style="color: white;" href="logoutservlet?islogout=true">log out</a></div>
              </div>
            </div>
          </div>


          <div class="Courses">
            
               <div class="titlenav">
                      <div class="navtitle"><h1>Courses</h1></div>
                       
               </div>
     <!-- ---------------------------------------------------------------------------------------------------- ---> 
     
     
     
     
     <%
     
     Connection con=null;
	  
     try{
    	 
    	 Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coursescollege?useSSL=false","root","");
		 
		 PreparedStatement pst=con.prepareStatement("select * from category c,professor p where p.id_professor=c.id_professor and type_of='cours' and semester='"+session.getAttribute("semester")+"' and Filiere='"+session.getAttribute("bronch")+"';");
		 ResultSet rs=pst.executeQuery();
    	 String cid;
		 while(rs.next()){
			 cid=rs.getString("id_category");
			 %>
			 
			  <div class="categoryitem">
                   <div class="teachercat">
                       <div class="imgg"><img src="img/user.jpg" alt=""></div>
                    <div class="infocat">
                        <div class="namecat"><%=rs.getString("first_name")%> <%=rs.getString("last_name")%></div>
                        <div class="datecat"><%=rs.getString("date_info")%></div>
                   </div>
                   </div>

                   <div class="contentcat">
                      <div class="textcat">
                        <div><%=rs.getString("title_cours")%></div>
                      </div>
                      <div class="filecat">
                        
                        <div class="catpdffile">
                            <img src="img/pdf.png" alt="">
                            <a href="files/<%=rs.getString("doc_file")%>" ><%=rs.getString("name_cours")%></a>
                        </div>
  
                      </div>
                      <div class="commentinput">
                      
                        <form action="commentservlet" method="GET"  class="ui form" style="flex-grow:1; margin-right: 10px;">
                           <input type="text" value="<%=rs.getString("id_category")%>" hidden name="catID">
                           <input type="text" value="${sessionScope.ID}" hidden name="studID">
                          <div class="field">
                            <input type="text" name="Ucomment" placeholder="write something ...">
                          </div>
                        
                        <button onclick="com()" type="submit" class="ui primary button">
                          Send
                        </button>
                        </form>
                        
                      </div>
                      <div class="comments">
                      
                      <%   
                          PreparedStatement pst2=con.prepareStatement("select * from comment c ,student s where c.id_student=s.id_student and c.id_category='"+cid+"';");
             		      ResultSet rs2=pst2.executeQuery();
             		      
                 		  while(rs2.next()){
                 			 %>
                 			 
                 			  <div class="comm">
                              <div class="teachercat2">
                                <div class="imgg2"><img src="img/user.jpg" alt=""></div>
                             <div class="infocat2">
                                 <div class="namecat2"><%=rs2.getString("first_name")%></div>
                                 <div class="datecat2"><%=rs2.getString("date_info")%></div>
                            </div>
                            </div>

                            <div class="textcat2">
                              <div><%=rs2.getString("title")%></div>
                            </div>
                             </div>
                 			 
                 			 <%
                 		  }
                 		
                      %>
                            
 
                      </div>
                   </div>
                  
               </div>
			 
			 <%	 
		 }
    	 
     }catch(Exception e){
    	 
     }
    	 

     %>
     
              
        <!-- --------------------------------------------------------------------------------------------- --->  
        
        
        
        
          </div>
          
          
          <div class="Exercises">
            <div class="titlenav" style="background-color:rgba(77, 174, 74, 0.468) ;">
              <div class="navtitle"><h1 style="color:rgba(51, 117, 48, 0.979)  ;">Exercises</h1></div>
           
            </div>

       <div class="categoryitem">
           <div class="teachercat">
               <div class="imgg"><img src="img/user.jpg" alt=""></div>
            <div class="infocat">
                <div class="namecat">Hamza Agourrame</div>
                <div class="datecat">Today at 5:42PM</div>
           </div>
           </div>

           <div class="contentcat">
              <div class="textcat">
                <div>Comments can hide extra information unless a user shows intent to interact with a comment.</div>
              </div>
              <div class="filecat">
                
                <div class="catpdffile">
                    <img src="pdf.png" alt="">
                    <a href="" >Coures number 1 secssion 34</a>
                </div>

                <div class="catpdffile">
                  <img src="pdf.png" alt="">
                  <a href="" >Coures number 1 secssion 34</a>
              </div>
                
              </div>
              <div class="commentinput">
                <form class="ui form" style="flex-grow:1; margin-right: 10px;">
                  <div class="field">
                    <input type="text" name="first-name" placeholder="write something ...">
                  </div>
                </form>
                <button class="ui primary button">
                  Send
                </button>
              </div>
              <div class="comments">
                     <div class="comm">

                      <div class="teachercat2">
                        <div class="imgg2"><img src="user.jpg" alt=""></div>
                     <div class="infocat2">
                         <div class="namecat2">Hamza Agourrame</div>
                         <div class="datecat2">Today at 5:42PM</div>
                    </div>
                    </div>

                    <div class="textcat2">
                      <div>Comments can hide extra information unless a user shows intent to interact with a comment.interact with a comment
                        Comments can hide extra information unless a user shows intent to interact with a comment.
                      </div>
                    </div>

                     </div>

                   
                    
              </div>
           </div>
          
       </div>
          </div>
          <div class="Practical">
            <div class="titlenav" style="background-color:rgba(174, 74, 74, 0.468) ;">
              <div class="navtitle"><h1 style="color:rgba(117, 48, 48, 0.979)  ;">Practical work</h1></div>
              <!-- <div class="titlenavimg"><img src="exercice.png" alt=""></div> -->
            </div>

       <div class="categoryitem">
           <div class="teachercat">
               <div class="imgg"><img src="user.jpg" alt=""></div>
            <div class="infocat">
                <div class="namecat">Hamza Agourrame</div>
                <div class="datecat">Today at 5:42PM</div>
           </div>
           </div>

           <div class="contentcat">
              <div class="textcat">
                <div>Comments can hide extra information unless a user shows intent to interact with a comment.</div>
              </div>
              <div class="filecat">
                
                <div class="catpdffile">
                    <img src="pdf.png" alt="">
                    <a href="" >Coures number 1 secssion 34</a>
                </div>

                <div class="catpdffile">
                  <img src="pdf.png" alt="">
                  <a href="" >Coures number 1 secssion 34</a>
              </div>
                
              </div>
              <div class="commentinput">
                <form class="ui form" style="flex-grow:1; margin-right: 10px;">
                  <div class="field">
                    <input type="text" name="first-name" placeholder="write something ...">
                  </div>
                </form>
                <button class="ui primary button">
                  Send
                </button>
              </div>
              <div class="comments">
                     <div class="comm">

                      <div class="teachercat2">
                        <div class="imgg2"><img src="user.jpg" alt=""></div>
                     <div class="infocat2">
                         <div class="namecat2">Hamza Agourrame</div>
                         <div class="datecat2">Today at 5:42PM</div>
                    </div>
                    </div>

                    <div class="textcat2">
                      <div>Comments can hide extra information unless a user shows intent to interact with a comment.interact with a comment
                        Comments can hide extra information unless a user shows intent to interact with a comment.
                      </div>
                    </div>

                     </div>

                   
                    
              </div>
           </div>
          
       </div>
          </div>
          <div class="account">
            
          </div>
          <div class="About"><h1>About</h1></div>


        </div>
      </div>




    </div>




<script src="js/plateform.js"></script>

<script>
   
   function com(){
	   alert((String)request.getAttribute("commentnull"))
   }
    
  if(${sessionScope.isLogin}){
	  console.log('yes is login')
	  console.log(`${sessionScope.bronch}`)
	  console.log(`${sessionScope.ID}`)
  }else{
	  console.log('no is not login')
  }

</script>
</body>
</html>






<!-- <aside class="menu">
        
  <ul class="menu-list">
    <li><a>Team Settings</a></li>
    <li>
      <a class="is-active">Manage Your Team</a>
      <ul>
        <li><a>Members</a></li>
        <li><a>Plugins</a></li>
        <li><a>Add a member</a></li>
      </ul>
    </li>
   
  </ul>
  
</aside> -->