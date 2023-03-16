/**
 * 
 */

 $(document).ready(function(){

    $('.navtext').text("Courses");

    $('.Courses').show();
    $('.Exercises').hide();
    $('.Practical').hide();
    $('.account').hide();
    $('.About ').hide();

    $('.cours-tab').click(()=>{
        $('.Courses').show();
        $('.Exercises').hide();
        $('.Practical').hide();
        $('.account').hide();
        $('.About ').hide();
        $('.navtext').text("Courses");
    })
    $('.exercise-tab').click(()=>{
        $('.Courses').hide();
        $('.Exercises').show();
        $('.Practical').hide();
        $('.account').hide();
        $('.About ').hide();
        $('.navtext').text("Exercises");
    })
    $('.work-tab').click(()=>{
        $('.Courses').hide();
        $('.Exercises').hide();
        $('.Practical').show();
        $('.account').hide();
        $('.About ').hide();
        $('.navtext').text("Practical work");
    })
    $('.account-tab').click(()=>{
        $('.Courses').hide();
        $('.Exercises').hide();
        $('.Practical').hide();
        $('.account').show();
        $('.About ').hide();
        $('.navtext').text("My account");
    })
    $('.about-tab').click(()=>{
        $('.Courses').hide();
        $('.Exercises').hide();
        $('.Practical').hide();
        $('.account').hide();
        $('.About ').show();
        $('.navtext').text("About as");
    })
        
    
  });



