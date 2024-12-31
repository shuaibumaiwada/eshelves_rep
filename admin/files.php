<?php 
//ob_start();
//session_start();
//require_once("../fms_2/index.php");
require_once("include/connection.php");

//print $_GET['fid'] ;
//print $_GET['userid'] ;
//print $_SESSION['login_id'];
//exit();
$folder_parent = isset($_GET['fid'])? $_GET['fid'] : 0;
$folders = $conn->query("SELECT * FROM folders where parent_id = $folder_parent and user_id = '".$_SESSION['login_id']."'  order by name asc");


//$files = $conn->query("SELECT * FROM files");
$files = $conn->query("SELECT * FROM files where folder_id = $folder_parent and user_id = '".$_SESSION['login_id']."'  order by name asc");

?>
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
<style>
        .truncate-text {
            width: 2%; /* Set the desired width */
            white-space: nowrap; /* Prevent text wrapping */
            overflow: hidden; /* Hide overflowed text */
            text-overflow: ellipsis; /* Display ellipsis (...) for overflowed text */
        }
    </style>
<div class="container-fluid">
	<div class="col-lg-12">
		<div class="row">
			<div class="card col-lg-12">
				<div class="card-body" id="paths">
				<!-- <a href="index.php?page=files" class="">..</a>/ -->
				<?php 
				$id=$folder_parent;
				while($id > 0){

					$path = $conn->query("SELECT * FROM folders where id = $id  order by name asc")->fetch_array();
					echo '<script>
						$("#paths").prepend("<a href=\"add_document.php?page=files&fid='.$path['id'].'\">'.$path['name'].'</a>/")
					</script>';
					$id = $path['parent_id'];

				}
				echo '<script>
						$("#paths").prepend("<a href=\"add_document.php?page=files\">..</a>/")
					</script>';
				?>
					
				</div>
			</div>
		</div>

		<div class="row">
		<div class="col-sm-4">
			<button class="btn btn-primary btn-sm" id="new_folder"><i class="fa fa-plus"></i> New Folder</button>
			</div>
			<div class="col-sm-4">
			<button class="btn btn-primary btn-sm" id="new_file"><i class="fa fa-upload"></i> Upload File</button>
			</div>
			
			<div class="col-sm-4">
			<a href='add_document.php'><button class="btn btn-primary btn-sm" ><i class="fas fa-chevron-left"></i> Back</button></a>
			</div>
		
		</div>
		<div class="row">
			<div class="col-12 input-group">
	
				
  				<input type="text" class="form-control" id="search" aria-label="Small" aria-describedby="inputGroup-sizing-sm" placeholder="Search Folder">
  				<div class="input-group-append">
   					 <span class="input-group-text" id="inputGroup-sizing-sm"><i class="fa fa-search"></i></span>
  				</div>
			
			</div>
		</div>
		<div class="row">
			<div class="col-md-12"><h4><b>Folders</b></h4></div>
		</div>
		<div class="row">
			<?php 
			while($row=$folders->fetch_assoc()):
			?>
				<div class="card col-md-3 mt-2 ml-2 mr-2 mb-2 folder-item" data-id="<?php echo $row['id'] ?>">
					<div class="card-body">
							<large><span><i class="fa fa-folder"></i></span><b class="to_folder"> <?php echo $row['name'] ?></b></large>
					</div>
				</div>
			<?php endwhile; ?>
		</div>
		<hr>
		<div class="row">
		<div class="card-body px-0 pt-0 pb-2">
                            <div class="table-responsive p-0">
                                <table class="table align-items-center mb-0">
				
						<tr>
							<th width="40%" class="">Filename</th>
							<th width="20%" class="">Date</th>
							<th width="40%" class="">Description</th>
							<th width="20%" class="">Download</th> 
						
						</tr>
						<?php 
						$myrowid='';
					while($row=$files->fetch_assoc()):
						$myrowid.=$row['id'].',';
						$name = explode(' ||',$row['name']);
						$name = isset($name[1]) ? $name[0] ." (".$name[1].").".$row['file_type'] : $name[0] .".".$row['file_type'];
						$img_arr = array('png','jpg','jpeg','gif','psd','tif');
						$doc_arr =array('doc','docx');
						$pdf_arr =array('pdf','ps','eps','prn');
						$icon ='fa-file';
						if(in_array(strtolower($row['file_type']),$img_arr))
							$icon ='fa-image';
						if(in_array(strtolower($row['file_type']),$doc_arr))
							$icon ='fa-file-word';
						if(in_array(strtolower($row['file_type']),$pdf_arr))
							$icon ='fa-file-pdf';
						if(in_array(strtolower($row['file_type']),['xlsx','xls','xlsm','xlsb','xltm','xlt','xla','xlr']))
							$icon ='fa-file-excel';
						if(in_array(strtolower($row['file_type']),['zip','rar','tar']))
							$icon ='fa-file-archive';

					?>
						<tr >
							<td class='file-item' data-id="<?php echo $row['id'] ?>" data-name="<?php echo $name ?>"><large><span><i class="fa <?php echo $icon ?>"></i></span><b class="to_file"> <?php echo $name ?></b></large>
							<input type="text" class="rename_file" value="<?php echo $row['name'] ?>" data-id="<?php echo $row['id'] ?>" data-type="<?php echo $row['file_type'] ?>" style="display: none">
							

							</td>
							<td><i class="to_file"><?php echo date('Y/m/d h:i A',strtotime($row['date_updated'])) ?></i></td>
							<td class='text-cell'><i class="to_file"><?php echo $row['description'] ?></i></td>
							
							<td><a href="../private_user/downloads.php?file_id=<?php echo $row['id']; ?>"><button><i class="fa fa-download"></i></button></a>|
							<!-- <a href="../private_user/index.php?fl=../fms_2/assets/uploads/<?php //echo $row['file_path'] ?>&fln=../fms_2/assets/uploads/<?php //echo $row['file_path'] ?>" target='_blank'><button><i class="fa fa-file"></i></button></a>| -->
							<a href="../fms_2/assets/uploads/<?php echo $row['file_path'] ?>" target='_blank'><button><i class="fa fa-file"></i></button></a>|
							<a href='../users/users_description.php?userfileid=<?php echo $row['id'] ?>' name='openSideWindow' class="openSideWindowFile"><button><i class="fa fa-comments"></i></button></a>

							<!-- <input type='checkbox'  value="<?php //echo $myrowid ?>" name="viewers[]" /><a class="fa fa-eye"></a> -->
							</td>
						</tr>
					
					<?php endwhile; ?>
						</table>
						</div>
							<div class="row">
			
					<?php
					if($myrowid>0){
					print"<div class='col-sm-4'><button class='btn btn-primary btn-sm' id='Add_viewers_folder'><i class='fas fa-file-medical'></i>  Add Viewers</button>
					<button class='btn btn-primary btn-sm' id='send_viewers_folder'><i class='fas fa-file-medical'></i>Send Files</button>";
					

					}
					?>
				</div>
				
				</div>
			</div>
			
		</div>
	</div>
</div>
<div id="menu-folder-clone" style="display: none;">
	<a href="javascript:void(0)" class="custom-menu-list file-option edit">Rename</a>
	<a href="javascript:void(0)" class="custom-menu-list file-option delete">Delete</a>
</div>
<div id="menu-file-clone" style="display: none;">
	<a href="javascript:void(0)" class="custom-menu-list file-option edit"><span><i class="fa fa-edit"></i> </span>Rename</a>
	<a href="javascript:void(0)" class="custom-menu-list file-option download"><span><i class="fa fa-download"></i> </span>Download</a>
	<a href="javascript:void(0)" class="custom-menu-list file-option delete"><span><i class="fa fa-trash"></i> </span>Delete</a>
</div>
<script>
        // Limit text to 20 characters
        document.querySelectorAll('.text-cell').forEach(cell => {
            let text = cell.textContent;
            if (text.length > 20) {
                cell.textContent = text.substring(0, 20) + '...';
            }
        });
    </script>
	
<script>
	//Add file to Viewers Model
	$('#Add_viewers_folder').click(function(){
		uni_modal2('','add_viewers_file.php?filesid=<?php echo $myrowid ?>&folderid=<?php echo $folder_parent ?>');
	})
	//Send file to Viewers Model
	$('#send_viewers_folder').click(function(){
		uni_modal2('','send_viewers_file.php?filesid=<?php echo $myrowid ?>&folderid=<?php echo $folder_parent ?>');
	})
	$('#new_folder').click(function(){
	
    console.log("Folder Parent: <?php echo $folder_parent ?>");

		uni_modal('','manage_folder.php?fid=<?php echo $folder_parent ?>');
	})
	$('#new_file').click(function(){
		uni_modal('','manage_files.php?fid=<?php echo $folder_parent ?>')
	})
	$('.folder-item').dblclick(function(){
		location.href = 'add_document.php?page=files&fid='+$(this).attr('data-id')
	})
	$('.folder-item').bind("contextmenu", function(event) { 
    event.preventDefault();
    $("div.custom-menu").hide();
    var custom =$("<div class='custom-menu'></div>")
        custom.append($('#menu-folder-clone').html())
        custom.find('.edit').attr('data-id',$(this).attr('data-id'))
        custom.find('.delete').attr('data-id',$(this).attr('data-id'))
    custom.appendTo("body")
	custom.css({top: event.pageY + "px", left: event.pageX + "px"});

	$("div.custom-menu .edit").click(function(e){
		e.preventDefault()
		uni_modal('Rename Folder','manage_folder.php?fid=<?php echo $folder_parent ?>&id='+$(this).attr('data-id') )
	})
	$("div.custom-menu .delete").click(function(e){
	
		e.preventDefault();
		//alert("DDD");
		_conf("Are you sure to delete this Folder?",'delete_folder',[$(this).attr('data-id')]);
	})
})

	//FILE
	$('.file-item').bind("contextmenu", function(event) { 
    event.preventDefault();

    $('.file-item').removeClass('active')
    $(this).addClass('active')
    $("div.custom-menu").hide();
    var custom =$("<div class='custom-menu file'></div>")
        custom.append($('#menu-file-clone').html())
        custom.find('.edit').attr('data-id',$(this).attr('data-id'))
        custom.find('.delete').attr('data-id',$(this).attr('data-id'))
        custom.find('.download').attr('data-id',$(this).attr('data-id'))
    custom.appendTo("body")
	custom.css({top: event.pageY + "px", left: event.pageX + "px"});

	$("div.file.custom-menu .edit").click(function(e){
		e.preventDefault()
		$('.rename_file[data-id="'+$(this).attr('data-id')+'"]').siblings('large').hide();
		$('.rename_file[data-id="'+$(this).attr('data-id')+'"]').show();
	})
	$("div.file.custom-menu .delete").click(function(e){
		e.preventDefault()
		_conf("Are you sure to delete this file?",'delete_file',[$(this).attr('data-id')])
	})
	$("div.file.custom-menu .download").click(function(e){
		e.preventDefault()
		window.open('download.php?id='+$(this).attr('data-id'))
	})

	$('.rename_file').keypress(function(e){
		var _this = $(this)
		if(e.which == 13){
			start_load()
			$.ajax({
				url:'ajax.php?action=file_rename',
				method:'POST',
				data:{id:$(this).attr('data-id'),name:$(this).val(),type:$(this).attr('data-type'),folder_id:'<?php echo $folder_parent ?>'},
				success:function(resp){
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
		}
	})

})
//FILE


	$('.file-item').click(function(){
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