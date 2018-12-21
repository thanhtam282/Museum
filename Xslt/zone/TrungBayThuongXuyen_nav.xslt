<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h5 class="title">
			<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
		</h5>
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

	</xsl:template>



	<xsl:template match="Zone">
		<div class="link">
			<xsl:if test="position() = 1">
				<xsl:attribute name="class">
					<xsl:text>link active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<p>
					<xsl:if test="IsActive='true'">
						<xsl:attribute name="class">
							<xsl:text>active</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:value-of select="Title"></xsl:value-of>
				</p>
			</a>
			<div class="sub-link">
				<xsl:apply-templates select="Zone" mode="Zonesub"></xsl:apply-templates>
			</div>

		</div>

	</xsl:template>


	<xsl:template match="Zone" mode="Zonesub">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<span>
				<xsl:value-of select="Title"></xsl:value-of>
			</span>
		</a>

	</xsl:template>
</xsl:stylesheet>
