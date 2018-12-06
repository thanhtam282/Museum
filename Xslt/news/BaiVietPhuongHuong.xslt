<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-vision-1 pt-0" bg-img="/Data/Sites/1/skins/default/img/_global/bg_1.png">
			<div class="container">
				<div class="row">
					<div class="col">
						<h2 class="head-title">
							<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
						</h2>
					</div>
				</div>
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
				</div>
			</div>

		</section>

	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">

		<div class="col-lg-6">
			<div class="detail" data-aos="fade-up" data-aos-duration="2000">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<div class="col-lg-6" data-aos="fade-up" data-aos-duration="2000">
			<figure>
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>

				<img class="w-100 d-lg-none">
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

			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>
