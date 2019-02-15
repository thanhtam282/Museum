<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-gallery-details-1">
			<article class="product-details">
				<div class="container">
					<div class="row d-flex">
						<div class=" col-lg-6 order-md-2 mb-4 infomation">
							<h1>
								<xsl:value-of select="/NewsDetail/Title"></xsl:value-of>
								<span>
									<xsl:value-of select="/NewsDetail/SubTitle" disable-output-escaping="yes"></xsl:value-of>
								</span>
							</h1>
							<hr />
							<xsl:value-of select="/NewsDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
							<div class="social-networks nav">

								<div class="nav-item">
									<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true">
										<a class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ
										</a>
									</div>
								</div>
								<div class="nav-item">
									<a class="twitter-share-button" href="https://twitter.com/share" data-size="medium" data-text="custom share text"
									 data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet
									</a>
								</div>
								<div class="nav-item">
									<div class="g-plusone" data-size="tall">
									</div>
								</div>
								<div class="nav-item">
									<script src="//platform.linkedin.com/in.js" type="text/javascript">
										lang: en_US

									</script>
									<script type="IN/Share"></script>
								</div>
							</div>
						</div>
						<div class=" col-lg-6 order-md-1 slider-img">
							<article class="slider-for">
								<xsl:apply-templates select="/NewsDetail/NewsImages" mode="big"></xsl:apply-templates>
							</article>
							<article class="slider-control">
								<div class="slider-nav">

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
								<xsl:value-of select='/NewsDetail/ContentTitle'></xsl:value-of>

							</h3>
						</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="detail">
								<xsl:value-of select="/NewsDetail/FullContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col">
							<h3 class="other">
								<xsl:value-of select='/NewsDetail/OtherThematicPast'></xsl:value-of>

							</h3>
						</div>
					</div>
					<div class="row">
						<div class="col">
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
		<a>
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="target">
				<xsl:value-of select="Target"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title"></xsl:value-of>
			</xsl:attribute>
			<div class="item">
				<img>
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
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="big">
		<div class="item">
			<a>
				<xsl:attribute name='href'>
					<xsl:value-of select='ImageUrl'></xsl:value-of>
				</xsl:attribute>
				<!-- <xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute> -->
				<figure>
					<div class="img">
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
						<!-- <xsl:attribute name="title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute> -->
						</img>
					</div>
				</figure>
			</a>
		</div>


	</xsl:template>

</xsl:stylesheet>
