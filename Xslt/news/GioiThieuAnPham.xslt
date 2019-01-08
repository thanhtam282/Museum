<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">


		<div class="row">
			<div class="col">
				<h3 class="head-title">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>

				</h3>
			</div>
		</div>



		<div class="row item">

			<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
		</div>
		<div class="row">
			<div class="col-2 mx-auto"><a class="btn-more" href="#">Xem Tất Cả</a></div>
		</div>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!--item-->

		<div class="col-lg-4">
			<a class="image" >
				<xsl:attribute name='href'>
					<xsl:value-of select='Url'></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name='target'>
					<xsl:value-of select='Title'></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="img">
						<img>
						<xsl:attribute name='src'>
							<xsl:value-of select='ImageUrl'></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name='alt'>
							<xsl:value-of select='Title'></xsl:value-of>
						</xsl:attribute>
						</img>
					</div>
					<figcaption>
						<h3> 
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

						</h3>
					</figcaption>
				</figure>
			</a>
			<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>

		</div>


	</xsl:template>

</xsl:stylesheet>
