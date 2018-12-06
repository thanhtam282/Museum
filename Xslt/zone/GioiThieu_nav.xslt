<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

				<div class="row">
					<div class="col wrapper" data-aos="fade-up" data-aos-duration="1500">
						<ul class="list-inline list-unstyled">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						</ul>
					</div>
				</div>




	</xsl:template>

	<xsl:template match="Zone">
		<li class=" list-inline-item">
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active list-inline-item</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a class="li-link">
				<xsl:attribute name="href">
					<xsl:text disable-output-escaping="yes">#intro-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>

	</xsl:template>
</xsl:stylesheet>
