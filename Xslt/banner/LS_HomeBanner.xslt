<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-home-1">
			<article class="list-items">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="Banner">
		<a>
			<xsl:attribute name='href'>
				<xsl:value-of select='Url'></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name='target'>
				<xsl:value-of select='Target'></xsl:value-of>
			</xsl:attribute>
			<div class="item">
				<xsl:if test="position() = 1 ">
					<xsl:attribute name="data-thumb">
						<xsl:text disable-output-escaping="yes">
							Trưng bày thường xuyên
						</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:if test="position() = 2 ">
					<xsl:attribute name="data-thumb">
						<xsl:text disable-output-escaping="yes">
							Trưng bày ngắn hạn
						</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>

			</div>
		</a>


	</xsl:template>
</xsl:stylesheet>
