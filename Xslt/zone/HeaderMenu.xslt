<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<ul class="nav">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
		</ul>
	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item">
			<xsl:if test="position() = 1 ">
				<a class="nav-link">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>nav-link active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<i class="material-icons">home</i>
					<span>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</span>
				</a>
			</xsl:if>
			<xsl:if test="position() &gt; 1 ">
				<a class="nav-link">
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>nav-link active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</xsl:if>

		</li>
	</xsl:template>
</xsl:stylesheet>
