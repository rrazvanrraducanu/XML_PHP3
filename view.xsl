<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:param name="id"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>view.xsl</title>
            </head>
            <body>
                <table border="1">
                    <tr bgcolor="red">
                        <th style="width:100px">Nume</th>
                        <th style="width:100px">Culoare</th>
                        <th style="width:100px">Marime</th>
                        <th style="width:100px">Pret</th>
                    </tr>
<xsl:for-each select="root/date[id=$id]">
                        <tr>
                            <td style="width:100px"><xsl:value-of select="nume"/></td>
                            <td style="width:100px"><xsl:value-of select="culoare"/></td>
                            <td style="width:100px"><xsl:value-of select="marime"/></td>
                            <td style="width:100px"><xsl:value-of select="pret"/></td>
                        </tr>
                        </xsl:for-each>
                </table>
<xsl:element name="a">
                       <xsl:attribute name="href">
                            <xsl:value-of select="root/date/back"/>
                         </xsl:attribute>
                        <span>Back</span>
</xsl:element>
                            
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
