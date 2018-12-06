<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-gallery-details-1" bg-img="./img/_global/bg_1.png">
			<article class="product-details">
				<div class="container">
					<div class="row d-flex">
						<div class="col-md-4 col-lg-6 order-md-2 mb-4 infomation">
							<h1>
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								<span>
									<xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of>
								</span>
							</h1>
							<hr />
							<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</div>
						<div class="col-md-8 col-lg-6 order-md-1 slider-img">
							<article class="slider-for" data-aos="zoom-out" data-aos-duration="1500">
								<xsl:apply-templates select="/NewsDetail/NewsImages" mode="big"></xsl:apply-templates>
							</article>
							<article class="slider-control">
								<div class="slider-nav" data-aos="fade-up" data-aos-duration="1500">

									<xsl:apply-templates select="/NewsDetail/NewsImages" mode="small"></xsl:apply-templates>
								</div>
								<a class="btn top-arrow" href="javascript:void(0)"><i class="fa fa-chevron-left"></i>
								</a>
								<a class="btn bottom-arrow" href="javascript:void(0)"><i class="fa fa-chevron-right"></i>
								</a>
							</article>
						</div>
					</div>


					<div class="row">
						<div class="col">
							<h3 class="title-detail">
								NỘI DUNG
							</h3>
						</div>
					</div>
					<div class="row" data-aos="fade-up" data-aos-duration="1500">
						<div class="col">
							<div class="detail">
								<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col">
							<h3 class="other">hiện vật khác</h3>
						</div>
					</div>
					<div class="row">
						<div class="col" >
							<div class="owl-carousel owl-theme">
								<xsl:apply-templates select="/NewsDetail/NewsOther"></xsl:apply-templates>

							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin News Other Child-->
	<xsl:template match="NewsOther">
		<a href="#">
			<div class="item">
				<img >
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				</img>
			</div>
		</a>
	</xsl:template>


	<xsl:template match="NewsImages" mode="small">
		<div class="item">
			<img>
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
	</xsl:template>
	<xsl:template match="NewsImages" mode="big">
		<div class="item">
			<figure>
				<div class="img">
					<img>
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
			</figure>
		</div>


	</xsl:template>

</xsl:stylesheet>
