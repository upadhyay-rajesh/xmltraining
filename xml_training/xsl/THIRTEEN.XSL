
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl" >

<xsl:template match="/" >
	<html><head><title> movie detail </title></head>
	<body>
	<xsl:for-each select="movies/movie">
		<xsl:apply-templates select="title" />
		<xsl:apply-templates select="director" />
		<xsl:apply-templates select="producer" />
		<xsl:apply-templates select="writer" />
		<xsl:apply-templates select="actor" />
		<xsl:apply-templates select="actress" />
		<xsl:apply-templates select="comments" />
		<xsl:apply-templates select="@rating"/>
	</xsl:for-each>
	</body>
</html> 
</xsl:template>

<xsl:template match="title" >
	<h2>title=<xsl:value-of /> <br/></h2>
</xsl:template>

<xsl:template match="director" >
	<font color="blue">
	director=<xsl:value-of /> <br/>
	</font>
</xsl:template>

<xsl:template match="producer" >
	producer=<xsl:value-of /> <br/>
</xsl:template>

<xsl:template match="writer" >
	writer=<xsl:value-of /> <br/>
</xsl:template>

<xsl:template match="actor" >
	actor=<xsl:value-of /> <br/>
</xsl:template>

<xsl:template match="actress" >
	actress=<xsl:value-of /> <br/>
</xsl:template>

<xsl:template match="comments" >
	comments=<xsl:value-of /> <br/><br/><br/>
</xsl:template>

<xsl:template match="@rating" >
	rating=<xsl:value-of /> <br/><br/><br/>
</xsl:template>

</xsl:stylesheet>