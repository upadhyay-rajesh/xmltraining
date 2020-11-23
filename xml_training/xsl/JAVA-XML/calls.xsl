<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="PHONE_RECORDS">
    <html>
      <head>
        <title>LISTING</title>
      </head>
      <body background="Money.jpg">
        <h1 style="background-color: #446600;
          color: #FFFFFF; font-size: 20pt; text-align: center;
          letter-spacing: 1.0em">PHONE CALL RECORDS</h1>
        <table align="center" border="2">
      

            <th>ITEM</th>
            <th>SOURCE NUMBER</th>
            <th>DESTINATION</th>
            <th>DATE</th>
            
          <xsl:apply-templates />
	</table>
      </body>
    </html>
  </xsl:template>
    <xsl:template match="CALL">      
<tr>
		<td><xsl:number /></td>
              <td><xsl:value-of select="FROM"/></td>
              <td><xsl:value-of select="DESTINATION"/></td>
              <td><xsl:value-of select="DATE"/></td>
              
            </tr>
         
   </xsl:template>     
</xsl:stylesheet>

