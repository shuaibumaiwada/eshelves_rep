<?php 
//include('db_connect.php'); 
session_start();

// if (!isset($_SESSION['admin_user'])) {
//      header('location: index.html');
// }

require_once("include/connection.php");
if(isset($_GET['id'])){
$qry = $conn->query("SELECT * FROM folders where id=".$_GET['id']);
	if($qry->num_rows > 0){
		foreach($qry->fetch_array() as $k => $v){
			$meta[$k] = $v;
		}
	}
}
?>
 <style>
          select[multiple], select[size] {
    height: auto;
    width: 20px;
}
.pull-right {
    float: right;
    margin: 2px !important;
}

    .map-container{
overflow:hidden;
padding-bottom:56.25%;
position:relative;
height:0;
}
.map-container iframe{
left:0;
top:0;
height:100%;
width:100%;
position:absolute;
}

input[type=file] {
    border: 2px dotted #999;
    border-radius: 10px;
    margin-left: 9px;
    width: 231px!important;
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


  </style>
<div class="container-fluid">
	<form action="" id="manage-folder">
		<input type="hidden" name="id" value="<?php echo isset($_GET['id']) ? $_GET['id'] :'' ?>">
		<input type="hidden" name="parent_id" value="<?php echo isset($_GET['fid']) ? $_GET['fid'] :'' ?>">

		<div class="form-group" id="msg"></div>

	</form>
    <!-- <center> -->
    <?php 

//require_once("include/connection.php");


  $id = mysqli_real_escape_string($conn,$_SESSION['admin_user']);


 $r = mysqli_query($conn,"SELECT * FROM admin_login where id = '$id'") or die (mysqli_error($con));

 $row = mysqli_fetch_array($r);

  $id=$row['admin_user'];
  $admin_status=$row['admin_status'];
   $name=$row['name'];
  // $lname=$row['lname'];

?>
  <div class="container-fluid">
<div class="card">
<h5 class="card-header primary-color white-text text-center">
  <strong>Sending file(s) to another office <?php if(isset($_GET['filesid'])){
   $filesidarray=$_GET['filesid']; 
  }
   if(isset($_GET['folderid'])){
   $folderid=$_GET['folderid'];
   $_SESSION['foldersession']=$folderid;
 
} ?>
</strong>
  </h5>
  <div class="card-body px-lg-5 pt-0 container-fluid">

    <div class="container">
      <div class="row"><br><br>
        <form action="send_viewers_fileprocess.php" method="post" enctype="multipart/form-data" id='uni_modal2' >
          <div class="col-md-11 container-fluid">
            <div class=''><?php $filesidarrayval=explode(',',$filesidarray); 
        $counter=1;
                foreach($filesidarrayval as $file){
                    if($file>0){
                print"$counter  .<input type='checkbox' value='$file' name='fileid[]' class='card-body px-sm-5 pt-10' /> ";
                }
                $counter++;
            }
            print"<input type='hidden' value='$folderid' name='folderid' /> ";
            ?></div>
              <div class="md-form mb-0">
                <input type="hidden" name= "email" value="<?php echo ucwords(htmlentities($name)); ?>" class="form-control" readonly="">
              </div>
            </div>
            <div class=''>
            <!-- <span ><font size="2" color=""><b>Choose Recipient:</b></font></span> -->
                                   

                                   <select name='recipient' class='form-control pt-10'><option>Select Recipient</option>
            <?php 

 $r = mysqli_query($conn,"SELECT * FROM admin_login ") or die (mysqli_error($con));

 while( $row = mysqli_fetch_array($r)){

  //$id=$row['admin_user'];
  $id=$row['id'];
  $admin_status=$row['admin_status'];
  $name=$row['name'];
  // $lname=$row['lname'];
  print "<option value='$id' >$name</option>";
 }
?>
</select>


            <!-- <div>
           <label for="subject" class="">Upload File</label>       
          <input type="file" name="filenames" > </div> -->
          <button  type="submit" class="btn btn-primary card-body  pt-20"  name="save" type="submit" id='submit'>SEND....</button>
        
        </form>
      </div>
      </div>
      <footer style="font-size: 12px; float:right"><b>File Type:</b><font color="red"><i>.pdf</i></font></footer>
    </div>
  </div>
</div>

<!-- Material form login -->

</div>
 <!-- </center> -->
</div>
<script>
	$(document).ready(function(){
		$('#manage-folder').submit(function(e){
			e.preventDefault()
			start_load();
		$('#msg').html('')
		$.ajax({
			url:'../fms_2/ajax.php?action=save_folder',
			method:'POST',
			data:$(this).serialize(),
			success:function(resp){
				if(typeof resp != undefined){
					resp = JSON.parse(resp);
					if(resp.status == 1){
						alert_toast("New Folder successfully added.",'success')
						setTimeout(function(){
							location.reload()
						},1500)
					}else{
						$('#msg').html('<div class="alert alert-danger">'+resp.msg+'</div>')
						end_load()
					}
				}
			}
		})
		})
	})
</script>