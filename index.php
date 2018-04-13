<?php
       $xslDoc=new DOMDocument();
       $xslDoc->load("data.xsl");
       
       $xmlDoc=new DOMDocument();
       $xmlDoc->load("data.xml");
       // enable extension=php_xsl.dll in php.ini !!!
       $proc=new XSLTProcessor();
       $proc->importStylesheet($xslDoc);
       echo $proc->transformToXml($xmlDoc);
        ?>
 <a href="insert.php">Add new record</a> 
