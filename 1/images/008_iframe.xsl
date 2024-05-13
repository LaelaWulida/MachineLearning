<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	008_iframe.xsl
'*	Copyright (C) WebSoft Ltd. Russia. 
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="width"></xsl:param>
<xsl:param name="height"></xsl:param>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>

<xsl:template match="/">
	<xsl:apply-templates select="params"/>
</xsl:template>

<xsl:template match="params">

	<xsl:variable name="border-color-fixed">
		<xsl:call-template name="fix-color">
			<xsl:with-param name="color" select="border_color"/>
		</xsl:call-template>
	</xsl:variable>

	<xsl:variable name="main.iBorderWidth">
		<xsl:choose>
			<xsl:when test="string(number(border_width))='NaN'">0</xsl:when>
			<xsl:otherwise>
				<xsl:choose>
					<xsl:when test="number(border_width) &lt; 0">0</xsl:when>
					<xsl:otherwise><xsl:value-of select="round(number(border_width))"/></xsl:otherwise>
				</xsl:choose>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<iframe>
		<xsl:attribute name="id"><xsl:value-of select="$objectID"/>_IFRAME</xsl:attribute>
		<xsl:attribute name="src"><xsl:if test="src_type='file'"><xsl:value-of select="uri"/></xsl:if><xsl:if test="src_type='url'"><xsl:value-of select="url"/></xsl:if></xsl:attribute>
		<xsl:attribute name="width"><xsl:value-of select="$width"/></xsl:attribute>
		<xsl:attribute name="height"><xsl:value-of select="$height"/></xsl:attribute>
		<xsl:attribute name="scrolling"><xsl:value-of select="scrolling"/></xsl:attribute>
		<xsl:attribute name="allowfullscreen">allowfullscreen</xsl:attribute>
		<xsl:choose>
			<xsl:when test="number($main.iBorderWidth)=0"><xsl:attribute name="frameborder">0</xsl:attribute></xsl:when>
			<xsl:otherwise>
				<xsl:attribute name="frameborder">1</xsl:attribute>
				<xsl:attribute name="style">border-width: <xsl:value-of select="$main.iBorderWidth"/>px; border-style: <xsl:value-of select="border_style"/>; border-color: <xsl:value-of select="$border-color-fixed"/>;</xsl:attribute>
			</xsl:otherwise>
		</xsl:choose>
	</iframe>

</xsl:template>
<xsl:template name="fix-color">
	<xsl:param name="color"/>
	<xsl:choose>
		<xsl:when test="substring($color, 1, 1)='#'">
			<xsl:choose>
				<xsl:when test="string-length($color)=7"><xsl:value-of select="$color"/></xsl:when>
				<xsl:when test="string-length($color)=4">#<xsl:value-of select="substring($color, 2, 1)"/><xsl:value-of select="substring($color, 2, 1)"/><xsl:value-of select="substring($color, 3, 1)"/><xsl:value-of select="substring($color, 3, 1)"/><xsl:value-of select="substring($color, 4, 1)"/><xsl:value-of select="substring($color, 4, 1)"/></xsl:when>
				<xsl:otherwise>transparent</xsl:otherwise>
			</xsl:choose>
		</xsl:when>
		<xsl:otherwise>transparent</xsl:otherwise>
	</xsl:choose>
</xsl:template>
</xsl:stylesheet>
