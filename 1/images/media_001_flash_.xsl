<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:msxsl="urn:schemas-microsoft-com:xslt"
				xmlns:websoft="http://www.websoft.ru"
				version="1.0">
<!--
'*	media_001_flash#.xsl
'*	Copyright (c) Websoft, 2006.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>

<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>

<xsl:template match="params">
	<table width="100%" height="100%" border="0" cellpadding="10" cellspacing="0">
		<tr>
			<td width="100%" align="center" valign="middle" bgcolor="EEEEEE">
				
				<svg height="64" viewBox="0 0 512 512" width="64" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
					<g>
						<path d="M512,460.792c0,28.279-22.919,51.198-51.198,51.198H51.198C22.919,511.99,0,489.071,0,460.792V51.208   C0,22.939,22.919,0.01,51.198,0.01h409.604C489.081,0.01,512,22.939,512,51.208V460.792z" fill="#BA2030"/>
						<path d="M512,419.813c0,28.279-22.919,51.198-51.198,51.198H51.198C22.919,471.012,0,448.093,0,419.813V51.208   C0,22.939,22.919,0.01,51.198,0.01h409.604C489.081,0.01,512,22.939,512,51.208V419.813z" fill="#D22E30"/>
						<g>
							<path d="M214.072,248.74v66.138h-32.859V158.034h111.766v27.398h-78.907v35.679h68.987v27.629H214.072z" fill="#FFFFFF"/>
							<path d="M300.088,314.878V156.144h30.699v158.734H300.088z" fill="#FFFFFF"/>
						</g>
					</g>
				</svg>
				<div style="font-family: Tahoma, Arial, sans-serif; font-size:10px; text-align:center; margin-top:12px; color: #c00;">
					<xsl:if test="source='file'"><xsl:value-of select="hidden.label.file" /> &#160; <xsl:value-of select="flash_uri" /></xsl:if>
					<xsl:if test="source='url'"><xsl:value-of select="hidden.label.url" /> &#160; <xsl:value-of select="flash_url" /></xsl:if>
				</div>
			</td>
		</tr>
	</table>
</xsl:template>
</xsl:stylesheet>
