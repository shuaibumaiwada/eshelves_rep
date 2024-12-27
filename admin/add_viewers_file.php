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
  <div class="">
<div class="card">
<h5 class="card-header info-color white-text text-center">
  <strong>Upload Meeting Members <?php if(isset($_GET['filesid'])){
   $filesidarray=$_GET['filesid']; 
  }
   if(isset($_GET['folderid'])){
   $folderid=$_GET['folderid'];
   $_SESSION['foldersession']=$folderid;
 
} ?>
</strong>
  </h5>
  <div class="card-body px-lg-5 pt-0">

    <div class="container">
      <div class="row"><br><br>
        <form action="add_viewers_fileprocess.php" method="post" enctype="multipart/form-data" id='uni_modal2' >
          <div class="col-md-11">
            <div><?php $filesidarrayval=explode(',',$filesidarray); 
        $counter=1;
                foreach($filesidarrayval as $file){
                    if($file>0){
                print"$counter  .<input type='checkbox' value='$file' name='fileid[]' /> ";
                }
                $counter++;
            }
            print"<input type='hidden' value='$folderid' name='folderid' /> ";
            ?></div>
              <div class="md-form mb-0">
                <input type="hidden" name= "email" value="<?php echo ucwords(htmlentities($name)); ?>" class="form-control" readonly="">
                <input type="text"  value="<?php echo ucwords(htmlentities($admin_status)); ?>" class="form-control" readonly="">
              </div>
            </div>
            <div>
            <p>

                                    <span ><font size="2" color=""><b>First Record Row:</b></font></span>
                                    <span style="background-color:; ">
                                        <select  name="firstrecordrow">
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                            <option value="6">6</option>
                                            <option value="7">7</option>
                                            <option value="8">8</option>
                                            <option value="9">9</option>
                                            <option value="10">10</option>
                                            <option value="11">11</option>
                                            <option value="12">12</option>
                                            <option value="13">13</option>
                                            <option value="14">14</option>
                                            <option value="15">15</option>
                                        </select></span>

                                    <span ><font size="2" color=""><b>Excel Sheet:</span></font></td>
                                    <span>
                                        <select  name="sheet">
                                            <option selected value="0">sheet1</option>
                                            <option value="1">sheet2</option>
                                            <option value="2">sheet3</option>
                                            <option value="3">sheet4</option>
                                            <option value="4">sheet5</option>
                                            <option value="5">sheet6</option>
                                            <option value="6">sheet7</option>
                                            <option value="7">sheet8</option>
                                            <option value="8">sheet9</option>
                                            <option value="9">sheet10</option>
                                            <option value="10">sheet11</option>
                                            <option value="11">sheet12</option>
                                            <option value="12">sheet13</option>
                                            <option value="13">sheet14</option>
                                            <option value="14">sheet15</option>
                                            <option value="15">sheet16</option>
                                            <option value="16">sheet17</option>
                                            <option value="17">sheet18</option>
                                            <option value="18">sheet19</option>
                                            <option value="19">sheet20</option>
                                            <option value="20">sheet21</option>
                                        </select></span>
                            

</p>
</div>
            <div>
           <label for="subject" class="">Upload File</label>       
          <input type="file" name="filenames" > </div>
          <button  type="submit" class="btn btn-info btn-rounded btn-block my-4 waves-effect z-depth-0"  name="save" type="submit" id='submit'>UPLOAD</button>
         <footer style="font-size: 12px"><b>File Type:</b><font color="red"><i>.xlsx</i></font></footer>
        </form>
      </div>
    </div>
  </div>
</div>

<!-- Material form login -->

</div>
 <!-- </center> -->
</div>
<script>
	// $(document).ready(function(){
	// 	$('#manage-folder').submit(function(e){
	// 		e.preventDefault()
	// 		start_load();
	// 	$('#msg').html('')
	// 	$.ajax({
	// 		url:'../fms_2/ajax.php?action=save_folder',
	// 		method:'POST',
	// 		data:$(this).serialize(),
	// 		success:function(resp){
	// 			if(typeof resp != undefined){
	// 				resp = JSON.parse(resp);
	// 				if(resp.status == 1){
	// 					alert_toast("New Folder successfully added.",'success')
	// 					setTimeout(function(){
	// 						location.reload()
	// 					},1500)
	// 				}else{
	// 					$('#msg').html('<div class="alert alert-danger">'+resp.msg+'</div>')
	// 					end_load()
	// 				}
	// 			}
	// 		}
	// 	})
	// 	})
	// })
</script>