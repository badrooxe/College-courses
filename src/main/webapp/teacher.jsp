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
            <img src="C (2).png">
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

      <div class="itemsteacher">

        <div class="card categorys">
            <div class="content">
              <img class="right floated mini ui image" src="C (2).png">
              <div class="header">
                Semester 6
              </div>
              <div class="meta">
                analyse de donner
              </div>
              <div class="description">
                
              </div>
            </div>
            <div class="extra content">
             
          <div class="ui three buttons">
                <button class="ui button">Delete</button>
                <div class="or" data-text="ou"></div>
                <button class="ui positive button">Update</button>
          </div>
            </div>
          </div>

          <div class="card categorys">
            <div class="content">
              <img class="right floated mini ui image" src="C (2).png">
              <div class="header">
                Semester 6
              </div>
              <div class="meta">
                analyse de donner
              </div>
              <div class="description">
                
              </div>
            </div>
            <div class="extra content">
             
          <div class="ui three buttons">
                <button class="ui button">Delete</button>
                <div class="or" data-text="ou"></div>
                <button class="ui positive button">Update</button>
          </div>
            </div>
          </div>
          
          

      </div>
      


    </div>

    


    <div id="modal-example" uk-modal>
        <div class="uk-modal-dialog uk-modal-body brbr">
            <div class="addsection">

            </div>
            <p class="uk-text-right">
                <button class="ui button uk-modal-close" type="button">Cancel</button>
                <button class="ui teal button" type="button">Save</button>
            </p>
        </div>
    </div>


</body>
</html>