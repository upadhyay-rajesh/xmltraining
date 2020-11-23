
<xsl:stylesheet xmlns:xsl="http://www.w3.org/TR/WD-xsl" >

<xsl:template match="/" >
	<html><head><title> BIODATA </title></head>
	<body bgcolor="navy">
	<xsl:for-each select="person/biodata">
			
			<xsl:apply-templates select="personal/@name" />
			<xsl:apply-templates select="address" />
			<xsl:apply-templates select="phone" />
			<xsl:apply-templates select="qualification" />
			<xsl:apply-templates select="likes/@hobby" />
			
	</xsl:for-each>
	</body>
</html> 
</xsl:template>

<xsl:template match="@name" >
<xsl:if  match='farzad'>
hdfghdfjk				
</xsl:if>
<font color="red"	size="6">
 name=<xsl:value-of /> <br/></font>

</xsl:template>

<xsl:template match="address" >

	<font color="blue" size="4">
	address=<xsl:value-of /> <br/>
	</font>
</xsl:template>

<xsl:template match="phone" >
	<font color="yellow" size="4">
	phone=<xsl:value-of /> <br/> </font>
</xsl:template>

<xsl:template match="qualification" >
		<font color="yellow" size="4">
	qualification=<xsl:value-of /> <br/></font>
</xsl:template>

<xsl:template match="@hobby" >
		<font color="yellow" size="4">
	likes=<xsl:value-of /> <br/></font>
</xsl:template>

</xsl:stylesheet>