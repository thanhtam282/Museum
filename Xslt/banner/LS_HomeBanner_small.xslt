<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<div class="row">
			<div class="col">
				<h3 class="text-left title">
					<xsl:value-of select="/BannerList/ModuleTitle" disable-output-escaping="yes"></xsl:value-of>
					<em class="play fas fa-play"></em>
					<em class="pause fas fa-pause"></em>
				</h3>
			</div>
		</div>
		<div class="row">
			<div class="col" data-aos="fade-up" data-aos-duration="1000">
				<div class="list-items">
					<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
				</div>
			</div>
		</div>

	</xsl:template>

	<xsl:template match="Banner">
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<div class="item">
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
		</a>


	</xsl:template>
</xsl:stylesheet>
