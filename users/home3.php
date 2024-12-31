<!DOCTYPE html>
<html lang="en">
<?php

// include('admin/include/connection.php');
ob_start();
session_start();

if(!isset($_SESSION["email_address"])){
    header("location:../login.html");

} 

?>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>User File Management System</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="css/style.css" rel="stylesheet">


<!-- 
<link href="css/addons/datatables.min.css" rel="stylesheet">
<script href="js/addons/datatables.min.js" rel="stylesheet"></script>
<link href="css/addons/datatables-select.min.css" rel="stylesheet">
<script href="js/addons/datatables-select.min.js" rel="stylesheet"></script> -->


<!-- <link rel="stylesheet" id="font-awesome-style-css" href="http://phpflow.com/code/css/bootstrap3.min.css" type="text/css" media="all">
<script type="text/javascript" charset="utf8" src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.1.min.js"></script> -->
    <script src="js/jquery-1.8.3.min.js"></script>
   
    <link rel="stylesheet" type="text/css" href="media/css/dataTable.css" />
    <script src="media/js/jquery.dataTables.js" type="text/javascript"></script>
    <!-- <script src="https://cdn.ckeditor.com/ckeditor5/11.0.1/classic/ckeditor.js"></script> -->
  

    <!-- end table-->
    <script type="text/javascript" charset="utf-8">
  $(document).ready(function(){
      $('#dtable').dataTable({
                "aLengthMenu": [[5, 10, 15, 25, 50, 100 , -1], [5, 10, 15, 25, 50, 100, "All"]],
                "iDisplayLength": 10
                //"destroy":true;
            });
  });

    </script>
    <style type="text/css">

#editor1 {
  white-space: pre-wrap; /* Ensures spaces are preserved */
  overflow: auto;        /* Allows scrolling if necessary */
}
      select[multiple], select[size] {
    height: auto;
    width: 20px;
}
.pull-right {
    float: right;
    margin: 2px !important;
}
    #loader{
        position: fixed;
        left: 0px;
        top: 0px;
        width: 100%;
        height: 100%;
        z-index: 9999;
        background: url('img/lg.flip-book-loader.gif') 50% 50% no-repeat rgb(249,249,249);
        opacity: 1;
    }
 /*   #dtable{
 display: block;

  overflow-x: scroll;
  width: 600px;
    }*/



  </style>
  <style>
  .folder-item{
		cursor: pointer;
	}
	.folder-item:hover{
		background: #eaeaea;
	    color: black;
	    box-shadow: 3px 3px #0000000f;
	}
	.custom-menu {
        z-index: 1000;
	    position: absolute;
	    background-color: #ffffff;
	    border: 1px solid #0000001c;
	    border-radius: 5px;
	    padding: 8px;
	    min-width: 13vw;
}
a.custom-menu-list {
    width: 100%;
    display: flex;
    color: #4c4b4b;
    font-weight: 600;
    font-size: 1em;
    padding: 1px 11px;
}
.file-item{
	cursor: pointer;
}
a.custom-menu-list:hover,.file-item:hover,.file-item.active {
    background: #80808024;
}
table th,td{
	/*border-left:1px solid gray;*/
}
a.custom-menu-list span.icon{
		width:1em;
		margin-right: 5px
}

</style>

    <script src="jquery.min.js"></script>
<script type="text/javascript">
  $(window).on('load', function(){
    //you remove this timeout
    setTimeout(function(){
          $('#loader').fadeOut('slow');  
      });
      //remove the timeout
      //$('#loader').fadeOut('slow'); 
  });
</script>

</head>

<body style="padding:0px; margin:0px; background-color:#fff;font-family:arial,helvetica,sans-serif,verdana,'Open Sans'">
  <?php 

     require_once("include/connection.php");


   $id = mysqli_real_escape_string($conn,$_SESSION['email_address']);


  $r = mysqli_query($conn,"SELECT * FROM login_user where id = '$id'") or die (mysqli_error($con));

  $row = mysqli_fetch_array($r);

  $useremail=$row['email_address'];

   //$filetoview=$row['file_to_view'];
   // $lname=$row['lname'];

?>
  <!-- Start your project here-->
<!--Navbar -->
<nav class="mb-1 navbar navbar-expand-lg navbar-dark  fixed-top" style='background-color:#004;'>
    <a class="navbar-brand" href="#"><img src="js/img/Files_Download.png" width="33px" height="33px"> <font color="#F0B56F">D</font>ocument <font color="#F0B56F">M</font>anagement <font color="#F0B56F">S</font>ystem</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent-4"
    aria-controls="navbarSupportedContent-4" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarSupportedContent-4">
    <ul class="navbar-nav ml-auto">
      <!-- <li class="nav-item active">

        <a class="nav-link" href="#">
          <i class="fab fa-facebook-f"></i> Facebook
          <span class="sr-only">(current)</span>
        </a>
      </li>-->
   
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-4" data-toggle="dropdown"
          aria-haspopup="true" aria-expanded="false">
           <font color="grey">Welcome!,</font> <?php echo ucwords(htmlentities($useremail)); ?> <i class="fas fa-user-circle"></i> Login </a>
        <div class="dropdown-menu dropdown-menu-right dropdown-info" aria-labelledby="navbarDropdownMenuLink-4">
          <a class="dropdown-item" href="history_log.php"> <i class="fas fa-chalkboard-teacher"></i> User Logged</a>
          <a class="dropdown-item" href="Logout.php"><i class="fas fa-sign-in-alt"></i> LogOut</a>

        </div>
      </li>
    </ul>
  </div>
</nav>
<br>
<!--/.Navbar -->
<br><Br><br>
<!-- Card -->
<div class="container">
  <div class="row">
  <div class="col-md-3" style="border-top: 4px solid #004;border-radius: 4px;  box-shadow: 0px 1px 1px 0px  #6c757d;"><br>
  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#pills-home" role="tab"
      aria-controls="pills-home" aria-selected="true">Profile</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#pills-profile" role="tab"
      aria-controls="pills-profile" aria-selected="false">About</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-contact-tab" data-toggle="pill" href="#pills-contact" role="tab"
      aria-controls="pills-contact" aria-selected="false">Contact</a>
  </li>
</ul>
<div class="tab-content pt-2 pl-1" id="pills-tabContent">
  <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
    <img src="img/shu_pic.jpg" class="rounded" alt="..."><hr>
    <div class="">
     
     <div class=""><p><b style="font-size: 1.1em">Full Name:</b>Shuaibu Maiwada.</p></div>
     <div class=""><p><b style="font-size: 1.1em">Position:</b>Principal System Analyst</p></div>

  </div>
  <hr>
  </div>
  <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
   <h6 style="font-size: 1.1em">file management system (fMS)</h6><Hr>
  is a system (based on computer programs in the case of the management of digital documents) used to track, manage and store documents and reduce paper. Most are capable of keeping a record of the various versions created and modified by different users (history tracking).</div>
  <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab"><h6 style="font-size: 1.1em">Contact Number</h6><Hr><br><div class=""><p><b style="font-size: 1.1em">Phone Number #:</b>07036121981</p></div><p><b style="font-size: 1.1em">Address :</b>IAIICT Software Development Unit</p>
</div><hr><br>
<!--   <div class="card">
  <ul class="list-group list-group-flush">
    <li class="list-group-item">Cras justo odio</li>
    <li class="list-group-item">Dapibus ac facilisis in</li>
    <li class="list-group-item">Vestibulum at eros</li>
  </ul>
</div><br> -->
   <!-- Card -->
<div class="card" style="border-top: 4px solid #004;border-radius: 4px;">

  <!-- Card image -->
  <div class="view overlay">

      <div class="mask rgba-white-slight"></div>
    </a>
  </div>

  <!-- Card content -->
  <div class="card-body">

    <!-- Title -->
    <h4 class="card-title">File Document</h4><hr>
    <!-- Text -->

    <ul>
      <li> <p>Ensuring changes and revisions are clearly identified</p></li>
      <li> <p>Ensuring that documents remain legible and identifiable</p></li>
      <li> <p>Preventing “unintended” use of obsolete documents</p></li>
    </ul>
    <!-- Button -->
<!--     <a href="#" class="btn btn-primary">Button</a> -->

  </div>

</div>
<!-- Card -->

 </div>
</div>

     <div class="col-md-9 card mb-4 wow fadeIn">

<hr>
  <table id="dtable" class = "table table-striped" style="">
     <thead>

    <th>Filename</th>
    <th>Foldername</th>
    <!-- <th>Uploader</th>  
    <th>Status</th>  -->
     <th>Date/Time Upload</th>
     <!-- <th>Downloads</th> -->
    <th>Action</th>

</thead>
<tbody>

    
    <tr>
        <?php 
   
        require_once("include/connection.php");

    //   $query = mysqli_query($conn,"SELECT ID,NAME,SIZE,EMAIL,ADMIN_STATUS,TIMERS,DOWNLOAD FROM upload_files group by NAME DESC") or die (mysqli_error($conn));
    //   while($file=mysqli_fetch_array($query)){
    //      $id =  $file['ID'];
    //      $name =  $file['NAME'];
    //      $size =  $file['SIZE'];
    //      $uploads =  $file['EMAIL'];
    //       $status =  $file['ADMIN_STATUS'];
    //      $time =  $file['TIMERS'];
    //      $download =  $file['DOWNLOAD'];
    
    $query = mysqli_query($conn,"SELECT users_allocation.id As id,userid,fileid,folderid,createdDate, file_type, file_path, files.name As filesname,folders.name As foldername  FROM users_allocation 
    INNER JOIN files ON files.id=fileid 
    INNER JOIN folders ON folders.id=folderid WHERE userid= '$id' group by filesname DESC") or die (mysqli_error($conn));
    while($file=mysqli_fetch_array($query)){
       $id =  $file['id'];
       $name =  $file['filesname'];
       $nametype =  $file['file_type'];
       $size =  $file['foldername'];
       $filepath=$file['file_path'];
    //    $uploads =  $file['EMAIL'];
    //     $status =  $file['ADMIN_STATUS'];
       $time =  $file['createdDate'];
    //    $download =  $file['DOWNLOAD'];
    
      ?>
           <!-- <iframe src="https://docs.google.com/gview?url=/../fms_2/assets/uploads/1705779900_CERT_COURSES.docx&embedded=true"></iframe> -->

      <td width="17%"><?php echo  $name.'.'.$nametype; ?></td>
      <td><?php echo $size; ?></td>
      <!-- <td><?php //echo floor($size / 1000) . ' KB'; ?></td> -->
      <!-- <td><?php //echo $uploads; ?></td>
      <td><?php //echo $status; ?></td> -->
      <td><?php echo $time; ?></td>
      <!-- <td><?php //echo $download; ?></td> -->
<?php 
//print "<a href='../../vendor/autoload.php'>ddddd</a>";
//exit();




// $pdf = new Fpdf();
    
// $pdf->AddPage();
// $pdf->SetFont('Arial','',10);
// $pdf->Cell(0,10,"Hello",1,0,'C');
// //$pdf->Output();
// $pdf->Output('C:/xampp/htdocs/meetingapp/fms_2/assets/uploads/1600330200_sample.pdf', 'I');

//$file = 'C:/xampp/htdocs/meetingapp/fms_2/assets/uploads/1709053320_A review of insider.pdf';
//$filename = 'C:/xampp/htdocs/meetingapp/fms_2/assets/uploads/1709053320_A review of insider.pdf';

?>

    

		<td>
		<a href='../fms_2/assets/uploads/<?php echo $filepath ?>' name='openSideWindow' class="openSideWindowFile"><button><i class="fa fa-file"></i></button></a>|

        <a href='downloads.php?file_id=<?php echo $id; ?>'><button><i class="fa fa-download"></i></button></a><button class='desc' value='<?php echo $id; ?>, <?php echo $filepath ?>' data-id=''><i class="fa fa-comments" aria-hidden="true">jkmkl</i></button></td>
    </tr>
   
<?php 


} ?>

</tbody>

   </table><div class='descform' style='display:none;'>
   <form action='' name='commentsForm' method='post'>
   <table><br><br>
    <tr><td colspan='4'> <textarea name="content" id="editor1" class='editor1' contenteditable="true">

    </textarea><input type='text' id='myid'/><input type='submit' value='Save' id='save_comment' style='margin-left:700px;' class='btn btn-primary' /></div></td></tr>
</table>
</form>
    </div>
   
    </div>
    <script src="js/ckeditor.js"></script>
    <script>
      
  document.getElementById('editor1').addEventListener('keydown', function (e) {
  if (e.key !== ' ') {
    e.preventDefault(); // Prevent default for other keys if needed
  }
});
        ClassicEditor
            .create( document.querySelector( '.editor1' ) )
            .catch( error => {
                console.error( error );
            } );
    </script>
</script>
<!-- Card -->
  <!-- /Start your project here-->
    <script>
// $(document).ready(function(){
//$(".descform").hide();
  $(".desc").click(function(){
    var filid=$(this).val();
    //alert(filid);
   //var filenamet=('.desc').find('.desc').attr('data-id',$(this).attr('data-id'));
   $("#myid").val(filid);
   //$("#editor").val(filid);
   //$('input').attr("value").append(1);
   $(".descform").show(); 
   // alert(filid);
  });

// });
$("#save_comment").click(function(){
  var filid=$('.editor1').val();
  
  alert(filid);
  $.ajax({
				url:'comment.php',
				method:'POST',
				//data:{id:$(this).attr('data-id'),name:$(this).val()},
        data: ($('[name=commentsForm]').serializeArray()),
				success:function(data){
          alert(data);
          $(".descform").show(); 
					if(typeof resp != undefined){
						resp = JSON.parse(resp);
						if(resp.status== 1){
								_this.siblings('large').find('b').html(resp.new_name);
								end_load();
								_this.hide()
								_this.siblings('large').show()
						}
					}
				}
			})
    });

</script>


  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/jquery-3.4.0.min.js"></script>

  <script type="text/javascript" src="js/popper.min.js"></script>

  <script type="text/javascript" src="js/bootstrap.min.js"></script>

  <script type="text/javascript" src="js/mdb.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.9/css/jquery.dataTables.min.css"/>   
<script type="text/javascript" src="https://cdn.datatables.net/1.10.9/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/1.0.3/css/dataTables.responsive.css">
<script type="text/javascript" language="javascript" src="https://cdn.datatables.net/responsive/1.0.3/js/dataTables.responsive.js"></script>

</body>
</html>
<script>
 
// $('#Add_viewers_folder').click(function(){
// 		uni_modal2('','add_viewers_file.php?filesid=<?php //echo $myrowid ?>&folderid=<?php //echo $folder_parent ?>');
// 	})
// 	$('#new_folder').click(function(){
// 		uni_modal('','manage_folder.php?fid=<?php //echo $folder_parent ?>');
// 	})
// 	$('#new_file').click(function(){
// 		uni_modal('','../fms_2/manage_files.php?fid=<?php //echo $folder_parent ?>')
// 	})
// 	$('.folder-item').dblclick(function(){
// 		location.href = 'add_document.php?page=files&fid='+$(this).attr('data-id')
// 	})
// 	$('.folder-item').bind("contextmenu", function(event) { 
//     event.preventDefault();
//     $("div.custom-menu").hide();
//     var custom =$("<div class='custom-menu'></div>")
//         custom.append($('#menu-folder-clone').html())
//         custom.find('.edit').attr('data-id',$(this).attr('data-id'))
//         custom.find('.delete').attr('data-id',$(this).attr('data-id'))
//     custom.appendTo("body")
// 	custom.css({top: event.pageY + "px", left: event.pageX + "px"});

// 	$("div.custom-menu .edit").click(function(e){
// 		e.preventDefault()
// 		uni_modal('Rename Folder','manage_folder.php?fid=<?php //echo $folder_parent ?>&id='+$(this).attr('data-id') )
// 	})
// 	$("div.custom-menu .delete").click(function(e){
	
// 		e.preventDefault();
// 		//alert("DDD");
// 		_conf("Are you sure to delete this Folder?",'delete_folder',[$(this).attr('data-id')]);
// 	})
// })

// 	//FILE
// 	$('.file-item').bind("contextmenu", function(event) { 
//     event.preventDefault();

//     $('.file-item').removeClass('active')
//     $(this).addClass('active')
//     $("div.custom-menu").hide();
//     var custom =$("<div class='custom-menu file'></div>")
//         custom.append($('#menu-file-clone').html())
//         custom.find('.edit').attr('data-id',$(this).attr('data-id'))
//         custom.find('.delete').attr('data-id',$(this).attr('data-id'))
//         custom.find('.download').attr('data-id',$(this).attr('data-id'))
//     custom.appendTo("body")
// 	custom.css({top: event.pageY + "px", left: event.pageX + "px"});

// 	$("div.file.custom-menu .edit").click(function(e){
// 		e.preventDefault()
// 		$('.rename_file[data-id="'+$(this).attr('data-id')+'"]').siblings('large').hide();
// 		$('.rename_file[data-id="'+$(this).attr('data-id')+'"]').show();
// 	})
// 	$("div.file.custom-menu .delete").click(function(e){
// 		e.preventDefault()
// 		_conf("Are you sure to delete this file?",'delete_file',[$(this).attr('data-id')])
// 	})
// 	$("div.file.custom-menu .download").click(function(e){
// 		e.preventDefault()
// 		window.open('download.php?id='+$(this).attr('data-id'))
// 	})

// 	$('.rename_file').keypress(function(e){
// 		var _this = $(this)
// 		if(e.which == 13){
// 			start_load()
// 			$.ajax({
// 				url:'ajax.php?action=file_rename',
// 				method:'POST',
// 				data:{id:$(this).attr('data-id'),name:$(this).val(),type:$(this).attr('data-type'),folder_id:'<?php //echo $folder_parent ?>'},
// 				success:function(resp){
// 					if(typeof resp != undefined){
// 						resp = JSON.parse(resp);
// 						if(resp.status== 1){
// 								_this.siblings('large').find('b').html(resp.new_name);
// 								end_load();
// 								_this.hide()
// 								_this.siblings('large').show()
// 						}
// 					}
// 				}
// 			})
// 		}
// 	})

// })
//FILE


	$('.file-item').click(function(){
        alert("sdfsdf");
		if($(this).find('input.rename_file').is(':visible') == true)
    	return false;
		uni_modal($(this).attr('data-name'),'../fms_2/manage_files.php?<?php echo $folder_parent ?>&id='+$(this).attr('data-id'))
	})
	$(document).bind("click", function(event) {
    $("div.custom-menu").hide();
    $('#file-item').removeClass('active')

});
	$(document).keyup(function(e){

    if(e.keyCode === 27){
        $("div.custom-menu").hide();
    $('#file-item').removeClass('active')

    }

});
	$(document).ready(function(){
		$('#search').keyup(function(){
			var _f = $(this).val().toLowerCase()
			$('.to_folder').each(function(){
				var val  = $(this).text().toLowerCase()
				if(val.includes(_f))
					$(this).closest('.card').toggle(true);
					else
					$(this).closest('.card').toggle(false);

				
			})
			$('.to_file').each(function(){
				var val  = $(this).text().toLowerCase()
				if(val.includes(_f))
					$(this).closest('tr').toggle(true);
					else
					$(this).closest('tr').toggle(false);

				
			})
		})
	})
	function delete_folder($id){
		start_load();
		
		$.ajax({
			url:'../fms_2/ajax.php?action=delete_folder',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp == 1){
					alert_toast("Folder successfully deleted.",'success')
						setTimeout(function(){
							location.reload()
						},1500)
				}
			}
		})
	}
	function delete_file($id){
		start_load();
		$.ajax({
			url:'ajax.php?action=delete_file',
			method:'POST',
			data:{id:$id},
			success:function(resp){
				if(resp == 1){
					alert_toast("Folder successfully deleted.",'success')
						setTimeout(function(){
							location.reload()
						},1500)
				}
			}
		})
	}
</script>  
<script>
  $('.openSideWindowFile').click(function(event) {
  event.preventDefault(); // Prevent default behavior
  //const linkText = $(this).text(); // Get text content
  const hrefValue = $(this).attr('href'); // Get href attribute
  //console.log(`HREF: ${hrefValue}`);
    // Get the dimensions of the parent window
    const parentWindowWidth = window.outerWidth;
    const parentWindowHeight = window.outerHeight;
    const parentWindowX = window.screenX; // X coordinate of the parent window
    const parentWindowY = window.screenY; // Y coordinate of the parent window

    // Set the size of the new window
    const newWindowWidth = Math.floor(parentWindowWidth / 2); // Half the width of the parent
    const newWindowHeight = parentWindowHeight;

    // Open the new window on the right side of the parent window
    window.open(
      hrefValue, // URL to open
      '_blank', // Target
      `width=${newWindowWidth},height=${newWindowHeight},top=${parentWindowY},left=${parentWindowX + newWindowWidth}`
    );
  });

</script>  