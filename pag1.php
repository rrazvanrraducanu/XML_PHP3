<?php
$id=$_POST['id'];
$nume=$_POST['nume'];
$culoare=$_POST['culoare'];
$marime=$_POST['marime'];
$pret=$_POST['pret'];
$xml=simplexml_load_file('data.xml');
$date=$xml->addChild('date');
$date->addChild('id',$id);
$date->addChild('nume',$nume);
$date->addChild('culoare',$culoare);
$date->addChild('marime',$marime);
$date->addChild('pret',$pret);
$date->addChild('view','view.php?id='.$id);
$date->addChild('edit','edit.php?id='.$id);
$date->addChild('delete','delete.php?id='.$id);
$date->addChild('confirm','return confirm("Are you sure you want to delete this item?")');
$date->addChild('back','index.php');
file_put_contents('data.xml', $xml->asXML());
header('location:index.php');
?>


