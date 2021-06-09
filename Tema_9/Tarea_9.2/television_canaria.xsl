<?xml version="1.0" encoding="ISO-8859-1"?>

<!-- New document created with EditiX at Sun Jun 06 13:44:01 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<style type="text/css">
			table td:first-child, table tr:first-child{
				background-color:pink;
			}
			table{
				border: solid pink 2px;
				width:70%;
			}
		</style>
			<body>
				<h1>Noticias con la palabra "abril" en el área de  contenido</h1>
				<table >
					<colgroup>
						<col span="1" style="width:25%"  />
						<col span="1" style="width:75%"  />
					</colgroup>
					<tr>
						<td>TITULO</td>
						<td>CONTENIDO</td>
					</tr>
					<xsl:apply-templates select="//item" mode="abril"/>
				</table>
				<br/>
				<h1>Noticias con la palabra "S/C" o "Santa Cruz" en el área de  contenido</h1>
				<table>
					<colgroup>
						<col span="1" style="width:25%"  />
						<col span="1" style="width:25%"  />
						<col span="1" style="width:50%"  />
					</colgroup>
					<tr>
						<td>FECHA</td>
						<td>TITULO</td>
						<td>CONTENIDO</td>
					</tr>
					<xsl:apply-templates select="//item" mode="santa"/>
				</table>
			</body>
	</html>
	</xsl:template>
	<xsl:template match="//item" mode="abril">
		<xsl:if test="description[contains(text(),'abril')]">
			<tr>
				<td>
					<xsl:value-of select="title"/>
				</td>
				<td>
					<xsl:value-of select="description"/>
				</td>
			</tr>
		</xsl:if>
	</xsl:template>
	<xsl:template match="//item" mode="santa">
		<xsl:if test="title[contains(text(),'S/C') or contains(text(),'Santa Cruz')]">
			<tr>
				<td>
					<xsl:value-of select="pubDate"/>
				</td>
				<td>
					<xsl:value-of select="title"/>
				</td>
				<td>
					<xsl:value-of select="description"/>
				</td>
			</tr>
		</xsl:if>
	</xsl:template>

</xsl:stylesheet>


