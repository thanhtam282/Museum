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
								<div class="table-responsive">
									<table class="table-bordered">
										<thead>
											<tr>
												<th>lorem</th>
												<th>lorem</th>
												<th>lorem</th>
											</tr>
										</thead>
										<tbody>
											<xsl:apply-templates select='News' mode="Zone5"></xsl:apply-templates>
										</tbody>
									</table>
								</div>
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

	<xsl:template match='News' mode="Zone5">
			<tr>
					<td>
						<xsl:value-of select='Title'></xsl:value-of>
					</td>
					<td>
						<xsl:value-of select='BriefContent'></xsl:value-of>
					</td>
					<td>
						<xsl:value-of select='FullContent'></xsl:value-of>
					</td>
				</tr>
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
</xsl:stylesheet>
