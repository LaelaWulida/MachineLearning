<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:websoft="http://www.websoft.ru" version="1.0">
<!--
'*	008_iframe#.xsl
'*	Copyright (c) Websoft.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>
<xsl:param name="width"></xsl:param>
<xsl:param name="height"></xsl:param>

<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>

<xsl:template match="params">

	<xsl:variable name="border-color-fixed">
		<xsl:call-template name="fix-color">
			<xsl:with-param name="color" select="border_color"/>
		</xsl:call-template>
	</xsl:variable>

	<style>
		.cl-container { width: <xsl:value-of select="$width"/>px; height: <xsl:value-of select="$height"/>px; }
		.cl-fake-iframe { position: relative; width: <xsl:value-of select="number($width)-2*number(border_width)"/>px; height: <xsl:value-of select="number($height)-2*number(border_width)"/>px; background-color: #eee; border-width: <xsl:value-of select="border_width"/>px; border-style: <xsl:value-of select="border_style"/>; border-color: <xsl:value-of select="$border-color-fixed"/>; overflow: <xsl:if test="scrolling='no'">hidden</xsl:if><xsl:if test="scrolling!='no'">scroll</xsl:if>; }		
		.cl-iframe-table { position: relative; width: <xsl:value-of select="number($width)-2*number(border_width)"/>px; height: <xsl:value-of select="number($height)-2*number(border_width)"/>px; border-spacing: 0; }		
		.cl-iframe-cell { width: <xsl:value-of select="number($width)-2*number(border_width)"/>px; height: <xsl:value-of select="number($height)-2*number(border_width)"/>px; vertical-align: middle; text-align: center; }		
		.cl-iframe-svg { width: 64px; height: 64px; fill: #0080C0; }		
		.cl-iframe-txt { margin-top: 10px; text-align: center; font-family: Tahoma, sans-serif; font-size: 10px; color: #0080C0; }		
	</style>
	<div>
		<xsl:attribute name="class">cl-container</xsl:attribute>
		<div>
			<xsl:attribute name="class">cl-fake-iframe</xsl:attribute>
			<table>
				<xsl:attribute name="class">cl-iframe-table</xsl:attribute>
				<tr>
					<td valign="middle" align="center">
						<xsl:attribute name="class">cl-iframe-cell</xsl:attribute>
						<svg height="32px" viewBox="0 0 32 32" width="32px" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
							<xsl:attribute name="class">cl-iframe-svg</xsl:attribute>
							<path d="M15.5,0C6.939,0,0,6.939,0,15.5S6.939,31,15.5,31S31,24.061,31,15.5S24.061,0,15.5,0z M28.975,15  h-5.996c-0.055-2.215-0.449-4.331-1.148-6.268c1.35-0.563,2.598-1.312,3.736-2.197C27.59,8.806,28.855,11.755,28.975,15z   M14.947,28.972c-1.662-1.384-3.056-3.181-4.076-5.268c1.309-0.409,2.696-0.633,4.129-0.679v5.949  C14.982,28.974,14.965,28.973,14.947,28.972z M16.051,2.028c1.886,1.57,3.425,3.673,4.466,6.126c-1.426,0.487-2.941,0.77-4.518,0.82  V2.025C16.018,2.026,16.034,2.027,16.051,2.028z M17.717,2.198c2.76,0.459,5.236,1.748,7.164,3.614  c-1.047,0.803-2.191,1.483-3.428,1.998C20.543,5.653,19.266,3.746,17.717,2.198z M15,2.025v6.949  c-1.577-0.051-3.093-0.333-4.518-0.82c1.041-2.453,2.58-4.556,4.466-6.126C14.966,2.027,14.982,2.026,15,2.025z M9.546,7.811  c-1.235-0.515-2.38-1.195-3.427-1.998c1.927-1.866,4.404-3.155,7.164-3.614C11.733,3.746,10.457,5.653,9.546,7.811z M10.105,9.076  C11.647,9.611,13.29,9.923,15,9.975V15H9.021C9.075,12.906,9.446,10.905,10.105,9.076z M15,16v6.025  c-1.577,0.048-3.102,0.306-4.539,0.769C9.595,20.732,9.084,18.435,9.021,16H15z M13.283,28.802  c-2.473-0.411-4.719-1.488-6.545-3.052c0.985-0.683,2.05-1.261,3.188-1.7C10.798,25.858,11.939,27.463,13.283,28.802z M16,28.975  v-5.949c1.432,0.046,2.82,0.27,4.129,0.679c-1.021,2.087-2.414,3.884-4.076,5.268C16.036,28.973,16.018,28.974,16,28.975z   M21.074,24.05c1.137,0.439,2.201,1.018,3.188,1.7c-1.826,1.563-4.072,2.641-6.545,3.052C19.061,27.463,20.201,25.858,21.074,24.05z   M20.539,22.794c-1.438-0.463-2.963-0.721-4.539-0.769V16h5.979C21.916,18.435,21.404,20.732,20.539,22.794z M16,15V9.975  c1.709-0.052,3.352-0.363,4.895-0.898c0.658,1.829,1.029,3.83,1.084,5.924H16z M5.434,6.535C6.572,7.42,7.82,8.169,9.169,8.732  C8.47,10.669,8.076,12.785,8.021,15H2.025C2.145,11.755,3.41,8.806,5.434,6.535z M2.025,16h5.996  c0.062,2.555,0.596,4.968,1.503,7.137c-1.267,0.494-2.448,1.152-3.538,1.931C3.638,22.731,2.156,19.536,2.025,16z M25.014,25.067  c-1.09-0.778-2.271-1.437-3.539-1.931c0.908-2.169,1.441-4.582,1.504-7.137h5.996C28.844,19.536,27.361,22.731,25.014,25.067z"/>
						</svg>
						<div>
							<xsl:attribute name="class">cl-iframe-txt</xsl:attribute>
							<xsl:value-of select="hidden.label.external"/>&#160;<xsl:if test="src_type='url'"><xsl:value-of select="hidden.label.url"/><br/><xsl:value-of select="url"/></xsl:if><xsl:if test="src_type='file'"><xsl:value-of select="hidden.label.file"/><br/><xsl:value-of select="uri"/></xsl:if>
						</div>
					</td>
				</tr>
			</table>
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
