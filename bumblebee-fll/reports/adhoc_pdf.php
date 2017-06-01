<?php

	require('adhoc-generate.php');
 
	require('../dompdf/fpdf.php');

	
	$size = array(count($columns)*72, 1008);
	$pdf = new FPDF('P', 'mm',$size);
	$pdf->AddPage('P', $size, 0); 
	$pdf->SetFont('Arial','B',12);	
	//$pdf->SetDisplayMode('fullpage', 'two');	
	foreach($columns as $heading) {
			$pdf->Cell(70,12,$heading,1);
	}

	foreach($resultData as $row) {
		$pdf->SetFont('Arial','',12);	
		$pdf->Ln();
		foreach($row as $column){
			$pdf->Cell(70,12,$column,1);
		}
	}
	$pdf->Output();
 ?>