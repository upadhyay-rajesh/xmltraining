<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl" >

<xsl:template match="/" >
	<html><head><title> movie detail </title></head>
	<body>
	<table border="1">
	<tr bgcolor="pink"><th>title</th><th>director</th><th>producer</th><th>writer</th><th>actor</th><th>actress</th><th>comments</th><th>rating</th><th>type</th></tr>
	         <xsl:for-each select="movies/movie" order-by="@rating">
		<tr bgcolor="yellow">
			<td ><xsl:value-of select="title" /> </td>
			<td><xsl:value-of select="director" /> </td>
			<td><xsl:value-of select="producer" /> </td>
			<td><xsl:value-of select="writer" /> </td>
			<td><xsl:value-of select="actor" /> </td>
			<td><xsl:value-of select="actress" /> </td>
			<td><xsl:value-of select="comments" /> </td>
			<td><xsl:value-of select="@rating" /> </td>
			<td><xsl:value-of select="@type" /> </td>
		
		</tr>
	        </xsl:for-each>
	</table>
	</body></html> 
	
</xsl:template>

</xsl:stylesheet>
