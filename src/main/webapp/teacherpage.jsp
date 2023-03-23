<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.min.css">
    <link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/semantic.css">
    <script src="Semantic-UI-CSS-master/semantic.min.js"></script>
    <script src="Semantic-UI-CSS-master/semantic.js"></script>
    <script src="jquery-3.6.3.min.js"></script>
    <link rel="stylesheet" href="css/teacher.css">
    <!-- UIkit CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/uikit@3.16.1/dist/css/uikit.min.css" />

<!-- UIkit JS -->
<script src="https://cdn.jsdelivr.net/npm/uikit@3.16.1/dist/js/uikit.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/uikit@3.16.1/dist/js/uikit-icons.min.js"></script>
</head>
<body>


    <div class="all">
        
     <div class="ui small menu " style="margin: 0px;">
        <a class="avatar  item">
            <img src="img/logo1.png">
        </a>
        <a class="item">
          Teacher session
        </a>
       
        <div class="right menu">
         
          <div class="item">
              <div class="ui teal button"  uk-toggle="target: #modal-example">Create new +</div>
          </div>
          <div class="item">
            <button class="ui right labeled icon button">
                <i class="right arrow icon"></i>
                <a " href="teacherlogoutservlet?islogout=true">log out</a>
              </button>
          </div>

        </div>
      </div>
      
      
      <%
      
     
     Connection con=null;
	  
     try{
    	 
    	 Class.forName("com.mysql.jdbc.Driver");
		 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/coursescollege?useSSL=false","root","");
		 
		 PreparedStatement pst=con.prepareStatement("SELECT * FROM `category` WHERE id_professor='"+session.getAttribute("id")+"';");
		 ResultSet rs1=pst.executeQuery();
    	 String cid;
		 while(rs1.next()){
			 String cid1=rs1.getString("id_category");
		         %>

      <div class="itemsteacher">

        <div class="card categorys">
            <div class="content">
              <img class="right floated mini ui image" src="img/logo1.png">
              <div class="header">
                <%=rs1.getString("semester")%>
              </div>
              <div class="meta">
                <%=rs1.getString("name_cours")%>
              </div>
              <div class="description">
                 <img src="img/pdf.png" alt="">
                 <a href="files/<%=rs1.getString("doc_file")%>" ><%=rs1.getString("title_cours")%></a>
              </div>
            </div>
            <div class="extra content">
            
          <div class="ui three buttons">
                <button class="ui button"><a href="DeleteCategory?id=<%=rs1.getString("id_category")%>">Delete</a></button>
                <div class="or" data-text="ou"></div>
                <button class="ui positive button">Update</button>
          </div>
            </div>
          </div>                    

      </div>
      <% 
		 }
      }catch(Exception e){
    	 
     }
    	 

     %>
      

    </div>

    


    <div id="modal-example" uk-modal>
        <div class="uk-modal-dialog uk-modal-body brbr">
            <div class="addsection">
            <h1>upload files to Classroom</h1>
            <form action="teacherservlet" method="POST" enctype="multipart/form-data">
               
                     <div class=" required field">
                          <label>title</label>
                          <input name="atitle" type="text">
                     </div>
                     <div class=" required field">
                          <label>Files</label>
                          <input name="afile" type="file">
                     </div>
                     <div class="field required">
                          <label>Type</label>
                          <select name="atype" class="ui dropdown">
                           <option value="Cources">Cources</option>
                           <option value="Exercises">Exercises</option>
                           <option value="Practical work">Practical work</option>
                         </select>
                    </div>
                    <div class="field required">
                         <label>Module</label>
                         <input name="amodule" type="text">
                    </div>
                    <div class="field required">
                          <label>Branche</label>
                          <select name="abranche" class="ui dropdown">
                           <option value="Genie Informatique">Génie Informatique</option>
                           <option value="Langues Etrangeres Appliquees">Langues Etrangères Appliquées</option>
                           <option value="Agro-BV-GEDD">Agro-BV-GEDD</option>
                           <option value="Economie et Gestion">Economie et Gestion</option>
                           <option value="Sciences de la vie">Sciences de la vie</option>
                         </select>
                    </div>
                    <div class="field required">
                          <label>Semester</label>
                          <select name="asemester" class="ui dropdown">
                           <option value="S1">S1</option>
                           <option value="S2">S2</option>
                           <option value="S3">S3</option>
                           <option value="S4">S4</option>
                           <option value="S5">S5</option>
                           <option value="S6">S6</option>
                         </select>
                    </div>
                     <button class="ui primary button" type="submit" name="upload" tabindex="0">upload</button>       
                          
            </form>
            
            </div>
            <p class="uk-text-right">
                <button class="ui button uk-modal-close" type="button">Cancel</button>
                <button class="ui teal button" type="button">Save</button>
            </p>
        </div>
    </div>

<script>
   
   function com(String cid){
	   Connection con1=null;
	   try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/coursescollege?useSSL=false","root","");
			
           PreparedStatement pst1 = con1.prepareStatement("DELETE FROM category WHERE `category`.`id_category` ='"+cid+"';");			
			ResultSet rs1=pst.executeQuery();
			
			 		
			
		}catch(Exception e) {
			System.out.print(e);
		}
   }
    
  if(${sessionScope.isLogin}){
	  console.log('yes is login')
	  console.log(`${sessionScope.username}`)
	  console.log(`${sessionScope.id}`)
  }else{
	  console.log('no is not login')
  }

</script>
</body>
</html>