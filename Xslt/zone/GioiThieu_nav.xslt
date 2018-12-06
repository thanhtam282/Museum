<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-intro-nav">
			<div class="container">
				<div class="row">
					<div class="col wrapper">
						<ul class="list-inline list-unstyled">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						</ul>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Zone">
		<li class=" list-inline-item">
			<a class="li-link">
				<xsl:if test="position() = 1">
					<xsl:attribute name="class">
						<xsl:text>li-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:text>#intro-</xsl:text>
					<xsl:value-of select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>
</xsl:stylesheet>