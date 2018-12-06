<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">

		<div class="row">
			<div class="col">
				<h3 class="text-left title">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
					<a href="#"><i class="fas fa-plus-square"></i></a>
				</h3>
			</div>
		</div>
		<div class="row" data-aos="fade-up" data-aos-duration="1000">
			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>

	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!--item-->
		<xsl:if test="position() = 1 ">
			<div class="col-12">
				<figure class="hot-news">
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
					<figcaption><a>
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<h5>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h5>
						</a></figcaption>
				</figure>
			</div>
		</xsl:if>
		<xsl:if test="position() > 1 ">
			<div class="col-12">
				<div class="sub-news"><a >
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>

						<h5>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h5>
					</a></div>
			</div>
		</xsl:if>


		<!-- <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of> -->
	</xsl:template>

</xsl:stylesheet>
