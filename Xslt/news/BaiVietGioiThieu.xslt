<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<xsl:apply-templates select="ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position() = 1">
				<xsl:text disable-output-escaping="yes">&lt;div
					bg-img=&quot;/Data/Sites/1/skins/default/img/_global/bg_1.png&quot;&gt;</xsl:text>
				<section class="canhcam-intro-2">
					<div class="container">
						<div class="row">
							<div class="col">
								<div class="history">
									<div class="row" id="intro-1">
										<div class="col">
											<h3 class="head-title">
												<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
											</h3>
											<div class="row">
												<div class="col">
													<ul class="nav nav-tabs" id="myTab" role="tablist">
														<xsl:apply-templates select="News" mode="Zone1TabsNav"></xsl:apply-templates>
													</ul>
													<div class="tab-content" id="myTabContent">
														<xsl:apply-templates select="News" mode="Zone1TabsContent"></xsl:apply-templates>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position() = 2">
				<section class="canhcam-intro-3">
					<div class="container">
						<div class="row mess" id="intro-2">
							<div class="col">
								<h3 class="head-title">
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</h3>
							</div>
						</div>
						<div class="row quote">
							<xsl:apply-templates select="News" mode="Zone2Content1"></xsl:apply-templates>
						</div>
						<div class="row quote2">
							<div class="col">
								<xsl:apply-templates select="News" mode="Zone2Content2"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</section>
				<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
			</xsl:when>
			<xsl:when test="position() = 3">
				<section class="canhcam-intro-4" id="intro-3">
					<article>
						<h3 class="head-title">
							<xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
						</h3>
						<div class="list-items">
							<xsl:apply-templates select="News" mode="Zone3Content11"></xsl:apply-templates>
						</div>
					</article>
					<div class="container">
						<div class="row">
							<div class="col">
								<p class="name">
									<xsl:apply-templates select="News" mode="Zone3Content12"></xsl:apply-templates>
								</p>
							</div>
						</div>
						<div class="row tab">
							<div class="col">
								<ul class="nav nav-tabs" id="myTab" role="tablist">
									<xsl:apply-templates select="News" mode="Zone3Content2TabsNav"></xsl:apply-templates>
								</ul>
								<div class="tab-content" id="myTabContent">
									<xsl:apply-templates select="News" mode="Zone3Content2TabsContent"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position() = 4">

				<section class="canhcam-intro-6" id="intro-4">
					<div class="container">
						<div class="row">
							<div class="col">
								<h3 class="head-title">
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

								</h3>
							</div>
						</div>
						<div class="row item">
							<xsl:apply-templates select='News' mode="Zone5AnPham"></xsl:apply-templates>

						</div>
						<div class="row">
							<div class="col-2 mx-auto">
								<a class="btn-more" href="~/an-pham">
									<xsl:attribute name='target'>
										<xsl:value-of select='Target'></xsl:value-of>
									</xsl:attribute>
									<xsl:value-of select='/ZoneList/ViewAllText'></xsl:value-of>

								</a>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position() = 5">

				<section class="canhcam-intro-7" id="intro-5">
					<div class="container">
						<div class="row">
							<div class="col">
								<h3 class="head-title">
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>

								</h3>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<xsl:apply-templates select='News' mode="Zone5"></xsl:apply-templates>

							</div>
						</div>
					</div>
				</section>
			</xsl:when>

			<xsl:when test="position() = 6">
				<section class="canhcam-intro-5" id="intro-6">
					<div class="container">
						<div class="row">
							<div class="col-md-4">
								<h3 class="title">
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</h3>
							</div>
							<div class="col-md-4">
								<xsl:apply-templates select="News" mode="Zone4Content11"></xsl:apply-templates>
							</div>
							<div class="col-md-4">
								<xsl:apply-templates select="News" mode="Zone4Content12"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>

	<xsl:template match="News" mode="Zone1TabsNav">
		<li class="nav-item">
			<a class="nav-link" data-toggle="tab" href="#year-1">
				<xsl:if test="position()=1">
					<xsl:attribute name="class">
						<xsl:text>nav-link active</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<xsl:attribute name="href">
					<xsl:text>#year-</xsl:text>
					<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="News" mode="Zone1TabsContent">
		<div class="tab-pane fade">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>tab-pane fade show active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>year-</xsl:text>
				<xsl:value-of disable-output-escaping="yes" select="position()"></xsl:value-of>
			</xsl:attribute>
			<div class="row">
				<div class="col-lg-7">
					<div class="detail">
						<h3 class="tab-title">
							<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
						</h3>
						<xsl:value-of disable-output-escaping="yes" select="FullContent"></xsl:value-of>
					</div>
				</div>
				<div class="col">
					<figure>
						<div class="img">
							<img>
							<xsl:attribute name="class">
								<xsl:text>img-fluid</xsl:text>
							</xsl:attribute>
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
			</div>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="Zone2Content1">
		<div class="col-lg-6">
			<xsl:value-of disable-output-escaping="yes" select="BriefContent"></xsl:value-of>
		</div>
		<div class="col-lg-6">
			<figure bg-img="./img/01_gioithieu/gioithieu_giamdoc.png">
				<xsl:attribute name="bg-img">
					<xsl:value-of disable-output-escaping="yes" select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<img class="w-100 d-lg-none">
				<xsl:attribute name="class">
					<xsl:text>img-fluid</xsl:text>
				</xsl:attribute>
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
	</xsl:template>

	<xsl:template match="News" mode="Zone2Content2">
		<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

	<xsl:template match="News" mode="Zone3Content11">
		<xsl:if test="position() = 1">
			<xsl:apply-templates select="NewsImages" mode="Zone3Content1Images"></xsl:apply-templates>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Zone3Content12">
		<xsl:if test="position() = 1">
			<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
		</xsl:if>
	</xsl:template>

	<xsl:template match="NewsImages" mode="Zone3Content1Images">
		<div class="item">
			<img>
			<xsl:attribute name="class">
				<xsl:text>w-100</xsl:text>
			</xsl:attribute>
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

	<xsl:template match="News" mode="Zone3Content2TabsNav">
		<xsl:if test="position() = 2">
			<li class="nav-item">
				<a class="nav-link active" data-toggle="tab">
					<xsl:attribute name="href">
						<xsl:text>#architec-</xsl:text>
						<xsl:value-of select="position() - 1"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</li>
		</xsl:if>
		<xsl:if test="position() &gt; 2">
			<li class="nav-item">
				<a class="nav-link" data-toggle="tab">
					<xsl:attribute name="href">
						<xsl:text>#architec-</xsl:text>
						<xsl:value-of select="position() - 1"></xsl:value-of>
					</xsl:attribute>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</a>
			</li>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Zone3Content2TabsContent">
		<xsl:if test="position() = 2">
			<div class="tab-pane fade show active">
				<xsl:attribute name="id">
					<xsl:text>architec-</xsl:text>
					<xsl:value-of select="position() - 1"></xsl:value-of>
				</xsl:attribute>
				<div class="row">
					<div class="col">
						<figure>
							<img>
							<xsl:attribute name="class">
								<xsl:text>w-100</xsl:text>
							</xsl:attribute>
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
							<figcaption>
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</figcaption>
						</figure>
					</div>
				</div>
			</div>
		</xsl:if>
		<xsl:if test="position() &gt; 2">
			<div class="tab-pane fade">
				<xsl:attribute name="id">
					<xsl:text>architec-</xsl:text>
					<xsl:value-of select="position() - 1"></xsl:value-of>
				</xsl:attribute>
				<div class="row">
					<div class="col">
						<figure>
							<img>
							<xsl:attribute name="class">
								<xsl:text>w-100</xsl:text>
							</xsl:attribute>
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
							<figcaption>
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</figcaption>
						</figure>
					</div>
				</div>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Zone4Content11">
		<xsl:if test="position() &lt; 3">
			<div class="depart">
				<h4>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</h4>
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="News" mode="Zone4Content12">
		<xsl:if test="position() &gt; 2">
			<div class="depart">
				<h4>
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</h4>
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</xsl:if>
	</xsl:template>
	<xsl:template match="News" mode="Zone5AnPham">
		<!--item-->

		<div class="col-lg-4">
			<a class="image">
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
	<xsl:template match='News' mode="Zone5">

		<div class="row">
			<div class="col">
				<xsl:value-of select="FullContent" disable-output-escaping="yes" ></xsl:value-of>

			</div>
		</div>

		<div class="row">
			<div class="col-2 mx-auto">
				<a class="btn-more">
					<xsl:attribute name='href'>
						<xsl:value-of select='BriefContent'></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name='target'>
						<xsl:value-of select='Target'></xsl:value-of>
					</xsl:attribute>
						<xsl:value-of select='/ZoneList/ViewAllText'></xsl:value-of>

				</a>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
