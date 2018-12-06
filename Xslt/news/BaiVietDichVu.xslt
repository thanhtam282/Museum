<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-service-1 pt-0" bg-img="/Data/Sites/1/skins/default/img/_global/bg_1.png">
			<div class="container">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>

		</section>

	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<xsl:if test="position() = 1 ">

		
		<div class="row">
			<div class="col" data-aos="fade-up" data-aos-duration="2000">
				<h2 class="head-title">
					<xsl:value-of select="Title"></xsl:value-of>
				</h2>
				<div class="text-center">
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col text-center" data-aos="fade-up" data-aos-duration="2000">
				<div class="owl-carousel owl-theme wrapper-img">
					<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
				</div>
			</div>
		</div>
</xsl:if>
	</xsl:template>
	<xsl:template match="NewsImages">
		<div class="item">
			<img class="img-fluid">
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
	</xsl:template>
</xsl:stylesheet>
