<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Data</title>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="red">
                        <th style="width:100px">Nume</th>
                        <th style="width:100px">Culoare</th>
                        <th style="width:100px">Marime</th>
                        <th style="width:100px">Pret</th>
	        <th style="width:100px">Actions</th> 
</tr>
<xsl:for-each select="root/date">
<tr>
<td style="width:100px"><xsl:value-of select="nume"/></td>
<td style="width:100px"><xsl:value-of select="culoare"/></td>
<td style="width:100px"><xsl:value-of select="marime"/></td>
<td style="width:100px"><xsl:value-of select="pret"/></td>
 <td style="width:100px">
                                <xsl:element name="a">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="view"/>
                                </xsl:attribute>
                                <span>View</span>
                                </xsl:element>
</td>
</tr>
</xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
