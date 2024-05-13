<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"  xmlns:websoft="http://www.websoft.ru" version="1.0">
<!--
'*	007_url#.xsl
'*	Copyright (c) Websoft,  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="moduleImagesFolder"></xsl:param>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>
<xsl:param name="width"></xsl:param>
<xsl:param name="height"></xsl:param>

<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>

<xsl:template match="params">

	<xsl:variable name="bg-color-fixed">
		<xsl:call-template name="fix-color">
			<xsl:with-param name="color" select="bg_color"/>
		</xsl:call-template>
	</xsl:variable>

	<xsl:variable name="main.nW">
		<xsl:choose>
			<xsl:when test="number($width) &gt; number($height)"><xsl:value-of select="$height"/></xsl:when>
			<xsl:otherwise><xsl:value-of select="$width"/></xsl:otherwise>
		</xsl:choose>
	</xsl:variable>
	<xsl:variable name="main.nH" select="$main.nW"/>
	<style>
		.cl-container { width: <xsl:value-of select="$main.nW"/>px; height: <xsl:value-of select="$main.nH"/>px; }
		.cl-external-svg { width: <xsl:value-of select="$main.nW"/>px; height: <xsl:value-of select="$main.nH"/>px; fill: <xsl:value-of select="$bg-color-fixed"/>; }
	</style>
	<div>
		<xsl:attribute name="class">clo-007_url</xsl:attribute>
		<div>
			<xsl:attribute name="class">cl-container</xsl:attribute>
			<xsl:choose>
				<xsl:when test="icon_type='standard'">
					<svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg">
						<xsl:attribute name="class">cl-external-svg</xsl:attribute>
						<path d="M4 4 L12 4 L12 8 L8 8 L8 24 L24 24 L24 20 L28 20 L28 28 L4 28 z M16 4 L28 4 L28 16 L24 12 L16 20 L12 16 L20 8z"/>
					</svg>
				</xsl:when>
				<xsl:otherwise>
					<img border="0">
						<xsl:attribute name="src"><xsl:value-of select="substring-before($moduleImagesFolder,'images\')"/><xsl:value-of select="translate(n1_img,'/','\')"/></xsl:attribute>
					</img>
				</xsl:otherwise>
			</xsl:choose>
		</div>
	</div>
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
