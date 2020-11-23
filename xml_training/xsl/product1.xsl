<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:template match="/">

		<xsl:for-each select="PRODUCTDATA/PRODUCT">
			<xsl:sort select="@PRODID" order="descending"/>
			<LI>
				<xsl:text>PRODUCT ID  :</xsl:text>
				<font color="red"><xsl:value-of select="@PRODID" />
				</font>
				<xsl:text>PRODUCT NAME  :</xsl:text>
				<font color="red"><xsl:value-of select="PRODUCTNAME" /></font>
				<xsl:text>PRICE unit(In U S ):</xsl:text>
				<font color="red"><xsl:value-of select="PRICE" />
				</font>
			</LI>
		</xsl:for-each>
	</xsl:template>
	
</xsl:stylesheet>
