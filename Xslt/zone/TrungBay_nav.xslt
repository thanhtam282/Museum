<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-show-list-1" >
			<div class="container">
				<div class="row">
					<div class="col">
						<h2 class="news-title">
							<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
						</h2>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<ul class="nav nav-tabs" id="myTab" role="tablist" data-aos="fade-up" data-aos-duration="2000">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

						</ul>
					</div>
				</div>
			</div>
		</section>



	</xsl:template>

	<xsl:template match="Zone">


		<li class="nav-item">
			<a class="nav-link" data-toggle="tab" >
				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:if test="position() = 2 " >
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
						<xsl:text disable-output-escaping="yes">#tab-</xsl:text>
						<xsl:value-of select="position()"></xsl:value-of>

				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>

	</xsl:template>
</xsl:stylesheet>
