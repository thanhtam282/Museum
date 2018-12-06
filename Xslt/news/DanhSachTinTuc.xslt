<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-news-4" bg-img="/Data/Sites/1/skins/default/img/_global/bg_1.png">
			<article class="news-hot">
				<div class="container">
					<div class="row">
						<div class="col">
							<h2 class="news-title">
								<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
							</h2>
						</div>
					</div>
					<div class="row">
						<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<!--item-->
		<xsl:if test="position() = 1 ">
			<div class="col-lg-6 top-list">
				<a class="item" href="#">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<figure data-aos="fade-up" data-aos-duration="2000">
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
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<p>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = 2 ">
			<xsl:text disable-output-escaping="yes">&lt;div class="col-lg-6 part-list"&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 1 and position() &lt; 5 ">
			<div class="col-12" data-aos="fade-up" data-aos-duration="2000">
				<a class="item" href="#">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="img">
							<img class="img-fluid">
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
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<p>
								<xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = 4 ">
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			<xsl:text disable-output-escaping="yes">&lt;div class="row other-list"&gt;</xsl:text>
		</xsl:if>
		<xsl:if test="position() &gt; 4 ">
			<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-duration="2000">
				<a class="item" href="#">
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<figure>
						<div class="img">
							<img class="img-fluid">
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
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

							</h3>
							<p>
								<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
						</figcaption>
					</figure>
				</a>
			</div>
		</xsl:if>
		<xsl:if test="position() = last() ">
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			</xsl:if>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>
