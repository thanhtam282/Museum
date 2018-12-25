<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<!-- <section class="canhcam-collect-bvqg-1" bg-img="./img/_global/bg_1.png">
			<div class="container">
				<div class="row">
					<div class="col-md-3"> -->
						<ul class="nav">
							<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
						</ul>
					<!-- </div>
				</div>
			</div>
		</section> -->


		<!-- <div class="row">
			<div class="col wrapper" data-aos="fade-up" data-aos-duration="1500">
				<ul class="list-inline list-unstyled">

				</ul>
			</div>
		</div> -->




	</xsl:template>

	<xsl:template match="Zone">
		<li class="nav-item ">
		
			<a class="nav-link">

				<xsl:value-of select="Title"></xsl:value-of>
			</a>
			<ul class="list-unstyled">
				<xsl:apply-templates select="Zone" mode="Zonesub"></xsl:apply-templates>


			</ul>
		</li>


	</xsl:template>

	<xsl:template match="Zone" mode="Zonesub">
		<li>
			<a>

				<xsl:if test="IsActive='true'">
					<xsl:attribute name="class">
						<xsl:text>active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>

				<xsl:value-of select="Title"></xsl:value-of>
			</a>

		</li>
	</xsl:template>
</xsl:stylesheet>
