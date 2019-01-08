<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Banner">
	<a>
	<xsl:attribute name='href'>
		<xsl:value-of select='Url'></xsl:value-of>
	</xsl:attribute>
	<xsl:attribute name='target'>
		<xsl:value-of select='Title'></xsl:value-of>
	</xsl:attribute>
	      <section class="canhcam-intro-1" >
			<xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
		  </section>
	</a>



	</xsl:template>
</xsl:stylesheet>
