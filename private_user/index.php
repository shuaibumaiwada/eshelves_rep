<?php
print "<a href='../vendor/autoload.php'>ddddd</a>";
//exit();
use Fpdf\Fpdf;

require('../vendor/autoload.php');
$file=$_REQUEST['fl'];
$filename=$_REQUEST['fln'];

// $pdf = new Fpdf();
    
// $pdf->AddPage();
// $pdf->SetFont('Arial','',10);
// $pdf->Cell(0,10,"Hello",1,0,'C');
// //$pdf->Output();
// $pdf->Output('C:/xampp/htdocs/meetingapp/fms_2/assets/uploads/1600330200_sample.pdf', 'I');

// Store the file name into variable
//$file = ;
//$filename = ;
  
// Header content type
header('Content-type: application/pdf');
  
header('Content-Disposition: inline; filename="' . $filename . '"');
  
header('Content-Transfer-Encoding: binary');
  
header('Accept-Ranges: bytes');
  
// Read the file
@readfile($file);
?>