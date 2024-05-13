<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:websoft="http://www.websoft.ru" version="1.0">
<!--
'*	009_storage#.xsl
'*	Copyright (c) Websoft, 2013.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="objectID"></xsl:param>
<xsl:param name="width"></xsl:param>
<xsl:param name="height"></xsl:param>

<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>

<xsl:template match="params">
	<div>
		<xsl:attribute name="style">position: absolute; left: 0; top: 0; width: <xsl:value-of select="number($width)-2"/>px; height: <xsl:value-of select="number($height)-2"/>px; border: #00c 1px dotted;</xsl:attribute>
		<table>
			<xsl:attribute name="style">width: <xsl:value-of select="number($width)-2"/>px; height: <xsl:value-of select="number($height)-2"/>px;</xsl:attribute>
			<tr>
				<td>
					<xsl:attribute name="style">font-family: Tahoma, Arial, sans-serif; font-size:10px; color: #00c; text-align:center</xsl:attribute>
					<xsl:value-of select="hidden.label.1"/><br/><xsl:value-of select="hidden.label.2"/>
				</td>
		  </tr>
		</table>
	</div>
</xsl:template>

</xsl:stylesheet>
