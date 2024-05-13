﻿<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
				xmlns:msxsl="urn:schemas-microsoft-com:xslt" 
				xmlns:websoft="http://www.websoft.ru" 
				version="1.0">
<!--
'*	media_004_java#.xsl 
'*	Copyright (c) Websoft, 2006.  All rights reserved.
-->
<xsl:output method="xml" encoding="utf-8" omit-xml-declaration="yes"/>
<xsl:param name="imagesFolder"></xsl:param>
<xsl:param name="objectID"></xsl:param>

<xsl:template match="/"><xsl:apply-templates select="params"/></xsl:template>

<xsl:template match="params">
<table width="100%" height="100%" border="0" cellpadding="10" cellspacing="0">
<tr>
<td width="100%" align="center" valign="middle" bgcolor="#eee">
<svg height="64" viewBox="0 0 512 512" width="64" xmlns="http://www.w3.org/2000/svg">
	<g transform="translate(-292.15692,-1273.5892)">
		<path d="m -733.62329,72.267944 c 0,203.804876 -165.21649,369.021366 -369.02141,369.021366 -203.8048,0 -369.0213,-165.21649 -369.0213,-369.021366 0,-203.804874 165.2165,-369.021364 369.0213,-369.021364 203.80492,0 369.02141,165.21649 369.02141,369.021364 z" style="fill:#5382a1; fill-rule: nonzero; stroke:none" transform="matrix(0.69372682,0,0,0.69372682,1313.0911,1479.455)"/>
		<g style="fill: #ffffff;" transform="matrix(0.92988585,0,0,0.92988585,-3996.6606,-1611.459)">
			<path d="m 4838.8107,3460.2935 c 0,0 -14.178,8.245 10.09,11.035 29.4,3.354 44.426,2.873 76.825,-3.259 0,0 8.518,5.341 20.414,9.967 -72.63,31.128 -164.376,-1.803 -107.329,-17.743"/>
			<path d="m 4829.9357,3419.6735 c 0,0 -15.902,11.771 8.384,14.283 31.406,3.24 56.208,3.505 99.125,-4.759 0,0 5.936,6.018 15.27,9.309 -87.814,25.678 -185.623,2.025 -122.779,-18.833"/>
			<path d="m 4904.7547,3350.7685 c 17.896,20.604 -4.702,39.145 -4.702,39.145 0,0 45.441,-23.458 24.572,-52.833 -19.491,-27.394 -34.438,-41.005 46.479,-87.934 0,0 -127.013,31.722 -66.349,101.622"/>
			<path d="m 5000.8137,3490.3385 c 0,0 10.492,8.645 -11.555,15.333 -41.923,12.7 -174.488,16.535 -211.314,0.506 -13.238,-5.759 11.587,-13.751 19.396,-15.428 8.144,-1.766 12.798,-1.437 12.798,-1.437 -14.722,-10.371 -95.157,20.364 -40.857,29.166 148.084,24.015 269.943,-10.814 231.532,-28.14"/>
			<path d="m 4845.6287,3377.5865 c 0,0 -67.431,16.016 -23.879,21.832 18.389,2.462 55.047,1.905 89.193,-0.956 27.906,-2.354 55.927,-7.359 55.927,-7.359 0,0 -9.84,4.214 -16.959,9.075 -68.475,18.009 -200.756,9.631 -162.674,-8.79 32.206,-15.568 58.392,-13.802 58.392,-13.802"/>
			<path d="m 4966.5917,3445.2005 c 69.608,-36.171 37.424,-70.931 14.96,-66.248 -5.506,1.146 -7.961,2.139 -7.961,2.139 0,0 2.044,-3.202 5.948,-4.588 44.441,-15.624 78.619,46.081 -14.346,70.52 0,0 1.077,-0.962 1.399,-1.823"/>
			<path d="m 4924.6247,3173.3685 c 0,0 38.55,38.563 -36.563,97.862 -60.233,47.568 -13.735,74.69 -0.025,105.678 -35.159,-31.722 -60.961,-59.647 -43.651,-85.637 25.407,-38.151 95.793,-56.648 80.239,-117.903"/>
			<path d="m 4852.4687,3543.2155 c 66.815,4.277 169.417,-2.373 171.847,-33.988 0,0 -4.671,11.985 -55.219,21.503 -57.028,10.732 -127.364,9.479 -169.081,2.601 0,-10e-4 8.54,7.068 52.453,9.884"/>
		</g>
	</g>
</svg>

<div style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size:10px; color: #5382a1; text-align: center; margin-top: 10px;"><xsl:value-of select="hidden.label.applet" />&#160;<xsl:value-of select="applet_uri" /></div>
</td>
</tr>
</table>
</xsl:template>
</xsl:stylesheet>
