<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	media_001_flash#.xsl
'*	Copyright (c) Websoft Ltd., Russia.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>

<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>
<xsl:template match="params">
<div class="container unselectable">
	<xsl:attribute name="id"><xsl:value-of select="$objectID" />_CONTAINER</xsl:attribute>
	<xsl:if test="source='file'">
		<div style="display: none"><xsl:attribute name="src"><xsl:value-of select="flash_uri" /></xsl:attribute></div>
	</xsl:if>
	&#160;
</div>
</xsl:template>
</xsl:stylesheet>
