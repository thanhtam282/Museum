<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">

				<div class="row pb-5">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>

				</div>


	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!--item-->
		<div class="col-lg-4 " data-aos="flip-up" data-aos-duration="1500">
			<a class="link-item">
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
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</a>

		</div>


		<!-- <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of> -->
	</xsl:template>

</xsl:stylesheet>
