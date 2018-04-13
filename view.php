<?php
$params=array('id'=>$_GET['id']);
       $xslDoc=new DOMDocument();
       $xslDoc->load("view.xsl");
       
       $xmlDoc=new DOMDocument();
       $xmlDoc->load("data.xml");

      $proc=new XSLTProcessor();
       $proc->importStylesheet($xslDoc);
       foreach($params as $key=>$val)
           $proc->setParameter('',$key,$val);
       
       echo $proc->transformToXml($xmlDoc);
        
?>
