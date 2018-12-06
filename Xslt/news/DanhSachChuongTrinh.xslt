<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<div class="row">
			<div class="col">
				<h2 class="head-title">
					<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
				</h2>
			</div>
		</div>
		<div class="row">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!--item-->
		<div class="col-lg-4 col-md-6">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<figure data-aos="zoom-out" data-aos-duration="1500">
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
						<time>
							<xsl:value-of select="CreatedDate"></xsl:value-of>
						</time>
					</figcaption>
				</figure>
			</a>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>
