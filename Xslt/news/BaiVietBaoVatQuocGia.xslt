<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
	
						<div class="row">
							<div class="col">
								<h2 class="news-title">
									<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
								</h2>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<h3 class="top-title">
									<xsl:value-of select="/NewsList/ImageUrl"></xsl:value-of>
								</h3>
								<div class="quote">
									<xsl:value-of select="/NewsList/ZoneDescription" disable-output-escaping="yes"></xsl:value-of>
								</div>
							</div>
						</div>
						<div class="row item">

							<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
						</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!--item-->

		<div class="col-lg-4 col-md-6">
			<a class="image" >
				<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
				<figure>
						<img >
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
			</a>
		</div>


		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>
