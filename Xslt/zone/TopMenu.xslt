<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="nav-top nav">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-top-item">
			<a class="nav-top-link">
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-top-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>
