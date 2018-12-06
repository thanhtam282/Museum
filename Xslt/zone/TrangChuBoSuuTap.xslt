<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-3">
			<div class="container">
				<div class="row">
					<div class="col gallery">
						<h3 class="text-left title">
							<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
							<a href="#"><i class="fas fa-plus-square"></i></a>
						</h3>
					</div>
				</div>
				<div class="row pb-5 " >
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>


	<xsl:template match="Zone">
		<div class="col-lg-4 " style="position: initial;" >
			<a class="link-item" href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>

				<figure class="item">
					<div class="img">
						<img class="w-100">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h4>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h4>
						<p>
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</a>
		</div>


	</xsl:template>
</xsl:stylesheet>
