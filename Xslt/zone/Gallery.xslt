<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-gallery-1" >
			<div class="container">
				<div class="row">
					<div class="col">
						<h2 class="news-title">
							<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
						</h2>

					</div>
				</div>
				<div class="row">
					<div class="col col-lg-9 mx-auto list">
						<div class="row">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

						</div>
					</div>
				</div>
			</div>
		</section>

	</xsl:template>

	<xsl:template match="Zone">
		<div class="col-md">
			<a>

				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<figure class="mb-5 mb-lg-0" data-aos="fade-up" data-aos-duration="1500">
					<div class="img">
						<img class="w-100"  alt="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<figcaption>
						
						<h3><xsl:value-of select="Title"></xsl:value-of></h3>
					</figcaption>
				</figure>
			</a></div>
	</xsl:template>
</xsl:stylesheet>
