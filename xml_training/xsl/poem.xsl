<?xml version="1.0"?>
<xsl:stylesheet
    xmlns:xsl='http://www.w3.org/XSL/Transform/1.0'
    xmlns:fo='http://www.w3.org/XSL/Format/1.0'
	result-ns="fo">
  <!--<xsl:import href="../../../common.xsl"/>-->
  <xsl:template match="bordered-p">
	<fo:block
		space-before="22pt"
		space-after="22pt"
		start-indent="50pt"
		end-indent="50pt"
		padding-before="3pt"
		padding-after="3pt"
		padding-start="3pt"
		padding-end="3pt"
		border-style="solid"
		border-before-width="2pt"
		border-after-width="2pt"
		border-start-width="40pt"
		border-end-width="40pt"
		border-before-color="green"
		border-after-color="yellow"
		border-start-color="blue"
		border-end-color="red">
	  	<xsl:apply-templates/>
	</fo:block>
  </xsl:template>

	<xsl:template match="bordered-display-rule">
	<fo:display-rule
		start-indent="40pt"
		end-indent="40pt"
		padding-before="13pt"
		padding-after="13pt"
		padding-start="13pt"
		padding-end="13pt"
		border-style="solid"
		border-before-width="16pt"
		border-after-width="16pt"
		border-start-width="16pt"
		border-end-width="16pt"
		space-before="12pt"
		space-after="12pt"
		rule-thickness="3pt">
	  	<xsl:apply-templates/>
	</fo:display-rule>
 	 </xsl:template>

  <xsl:template match="bordered-link">
	<fo:simple-link 
		padding-before="3pt"
		padding-after="3pt"
		padding-start="3pt"
		padding-end="3pt"
		border-style="solid"
		
		border-before-width="6pt"
		border-after-width="6pt"
		border-start-width="6pt"
		border-end-width="6pt"
		destination="{@href}"
		color="rgb(0,0,255)">
	  <xsl:apply-templates/>
	</fo:simple-link>
  </xsl:template>

  <xsl:template match="bordered-inline-graphic">
	<fo:inline-graphic
		padding-before="1pt"
		padding-after="1pt"
		padding-start="1pt"
		
		padding-end="1pt"
		border-style="solid"
		border-before-width="6pt"
		border-after-width="6pt"
		border-start-width="6pt"
		border-end-width="6pt"
		width="{@max-width}"
		height="{@max-height}"
		href="{@image}">
	  <xsl:apply-templates/>
	</fo:inline-graphic>
  </xsl:template>

</xsl:stylesheet>


