<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
				xmlns:websoft="http://www.websoft.ru" 
				version="1.0">
<!--
'*	media_004_java.xsl 
'*	Copyright (c) Websoft, 2006.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="objectID"/>
<xsl:param name="width"/>
<xsl:param name="height"/>

<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>
<xsl:template match="params">

	<div style="display: none;">
		<xsl:for-each select="file_list/item">
			<div>
				<xsl:attribute name="preload"><xsl:value-of select="file_uri"/></xsl:attribute>
				.
			</div>
		</xsl:for-each>
	</div>

	<div>
		<xsl:attribute name="class">container unselectable</xsl:attribute>
		<object type="application/x-java-applet" align="baseline">
			<xsl:attribute name="classid">clsid:CAFEEFAC-0014-0002-0000-ABCDEFFEDCBA</xsl:attribute>
			<xsl:attribute name="id"><xsl:value-of select="$objectID" />_applet</xsl:attribute>
			<xsl:attribute name="width"><xsl:value-of select="$width" /></xsl:attribute>
			<xsl:attribute name="height"><xsl:value-of select="$height" /></xsl:attribute>
			<xsl:attribute name="alt"><xsl:value-of select="applet_alt" /></xsl:attribute>
			<xsl:if test="use_jar='no'">
				<param>
					<xsl:attribute name="name">code</xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="substring-after(class_uri,'/')"/></xsl:attribute>
				</param>
			</xsl:if>
			<xsl:if test="use_jar='yes'">
				<param>
					<xsl:attribute name="name">code</xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="class_start"/></xsl:attribute>
				</param>
				<param>
					<xsl:attribute name="name">archive</xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="substring-after(applet_uri,'/')"/></xsl:attribute>
				</param>
			</xsl:if>
			<param>
				<xsl:attribute name="name">codebase</xsl:attribute>
				<xsl:attribute name="value">images</xsl:attribute>
			</param>
			<param>
				<xsl:attribute name="name">type</xsl:attribute>
				<xsl:attribute name="value">application/x-java-applet</xsl:attribute>
			</param>
			<xsl:for-each select="param_list/item">
				<param>
					<xsl:attribute name="name"><xsl:value-of select="a_param"/></xsl:attribute>
					<xsl:attribute name="value"><xsl:value-of select="a_param_value"/></xsl:attribute>
				</param>
			</xsl:for-each>
			<comment>
				<applet align="baseline">
					<xsl:attribute name="id"><xsl:value-of select="$objectID" />_applet</xsl:attribute>
					<xsl:attribute name="width">100%</xsl:attribute>
					<xsl:attribute name="height">100%</xsl:attribute>
					<xsl:attribute name="alt"><xsl:value-of select="applet_alt" /></xsl:attribute>
					<xsl:if test="use_jar='no'">
						<param>
							<xsl:attribute name="name">code</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="substring-after(class_uri,'/')"/></xsl:attribute>
						</param>
					</xsl:if>
					<xsl:if test="use_jar='yes'">
						<param>
							<xsl:attribute name="name">code</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="class_start"/></xsl:attribute>
						</param>
						<param>
							<xsl:attribute name="name">archive</xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="substring-after(applet_uri,'/')"/></xsl:attribute>
						</param>
					</xsl:if>
					<param>
						<xsl:attribute name="name">codebase</xsl:attribute>
						<xsl:attribute name="value">images</xsl:attribute>
					</param>
					<param>
						<xsl:attribute name="name">type</xsl:attribute>
						<xsl:attribute name="value">application/x-java-applet</xsl:attribute>
					</param>
					<xsl:for-each select="param_list/item">
						<param>
							<xsl:attribute name="name"><xsl:value-of select="a_param"/></xsl:attribute>
							<xsl:attribute name="value"><xsl:value-of select="a_param_value"/></xsl:attribute>
						</param>
					</xsl:for-each>
				</applet>
			</comment>
		</object>
	</div>
</xsl:template>
</xsl:stylesheet>
