<?xml version="1.0" encoding="ISO-8859-1"?>

<!-- New document created with EditiX at Sat May 29 21:16:12 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	<html>
		<body>
		<table  width="90%"  >
			<tr>
				<td><h1>Lista de nombre y apellidos</h1>
</td>
				<td><h1>Lista de ciales y curso</h1></td>
			</tr>
			<tr>
				<td><xsl:apply-templates select="/instituto/curso/alumno" mode="nombreApellidos"/>
</td>
				<td><xsl:apply-templates select="/instituto/curso/alumno" mode="ciales"/>
</td>
			</tr>
		</table>
		
		
		
		
		
		
		</body>
	</html>
	</xsl:template>
	<xsl:template match="/instituto/curso/alumno" mode="nombreApellidos">
		<table width="30%" border="1" >
			<tr>
				<td><xsl:value-of select="nombre"/></td>
			</tr>
			<tr>
				<td><xsl:value-of select="apellidos"/></td>
			</tr>
			<br/>
		</table>
	</xsl:template>
	<xsl:template match="/instituto/curso/alumno" mode="ciales">
		<table width="30%" border="1">
			<tr>
				<td><xsl:value-of select="@cial"/></td>
			</tr>
			<tr>
				<td><xsl:value-of select="../@nombre"/></td>
			</tr>
			<br/>
		</table>
	
	
	
	
	
	
	</xsl:template>
</xsl:stylesheet>


