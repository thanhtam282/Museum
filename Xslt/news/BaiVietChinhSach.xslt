<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />


	<xsl:template match="/">
		<div class="block-section" bg-img="./img/_global/bg_1.png">
			<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
		</div>

	</xsl:template>

	<!--Begin match content-->
	<xsl:template match="Zone" mode="Content">
		<xsl:if test="position() = 1 ">
			<section class="canhcam-tour-1 pt-0">
				<div class="container">
					<div class="row">
						<div class="col">
							<h2 class="head-title">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
					</div>
					<div class="row">
						<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<section class="canhcam-tour-2">
				<div class="container">
					<div class="row">
						<div class="col">
							<h2 class="head-title">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
					</div>
						<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
				</div>
			</section>


		</xsl:if>
		<xsl:if test="position() = 3 ">
			<section class="canhcam-tour-3">
				<div class="container">
					<div class="row">
						<div class="col">
							<h2 class="head-title">
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h2>
						</div>
					</div>
					<div class="row">
						<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
					</div>
				</div>
			</section>
		</xsl:if>
	</xsl:template>
	<!--End match content-->





	<!--Begin match ZoneNews-->
	<xsl:template match="News" mode="ZoneNews1">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="row">
			<div class="col-lg-6">
				<div class="detail" data-aos="fade-up" data-aos-duration="2000">
					<h4>
						<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
					</h4>

					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
				</div>
			</div>
			<div class="col" data-aos="fade-up" data-aos-duration="2000">
				<figure>
					<xsl:attribute name="bg-img">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<img class="w-100 d-lg-none">
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
			</div>
		</div>
		<div class="row">
			<div class="col detail_2" data-aos="fade-up" data-aos-duration="2000">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<div class="col-lg-4 wrapper_block">
			<div class="wrapper-contact" data-aos="fade-down" data-aos-duration="2000">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>

			</div>
		</div>
	</xsl:template>




</xsl:stylesheet>
