<?xml version="1.0" encoding="ISO-8859-1"?>

<!-- New document created with EditiX at Sat May 29 22:04:21 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	<xsl:template match="/">
	 <link rel="stylesheet" type="text/css" href="style.css"/>
	<html>
		<body>
		<xsl:apply-templates select="/instituto/curso" mode="curso"/>
		</body>
	</html>
	</xsl:template>
	<xsl:template match="/instituto/curso" mode="curso">
		<table border="1" width="25%" >
			<tr >
				<td colspan="3"><xsl:value-of select="@nombre"/></td>
			</tr>
			<tr>
				<td>CIAL:</td>
				<td>Nombre:</td>
				<td>Apellidos:</td>
			</tr>
				<div id="green" >
					<xsl:apply-templates select="alumno"  mode="alumno"/>
				</div>
				
				
			
			
			 
			
			<br/>
		</table>
	</xsl:template>
	<xsl:template match="alumno" mode="alumno">
		<tr id="green" >
			<td style="background-color:green"><xsl:value-of select="@cial"/></td>
			<td><xsl:value-of select="nombre"/></td>
			<td><xsl:value-of select="apellidos"/></td>
			
		</tr>
		
			
		
		
	</xsl:template>
	
	
	
	
	
	
	<!--
	<xsl:template match="instituto/curso" mode="cial">
		<xsl:value-of select="instituto/curso/alumno/@cial"/>
	</xsl:template>
	<xsl:template match="instituto/curso" mode="nombre">
		<xsl:value-of select="instituto/curso/alumno/nombre"/>
	</xsl:template>
	<xsl:template match="instituto/curso" mode="apellidos">
		<xsl:value-of select="instituto/curso/alumno/apellidos"/>
	</xsl:template>
	-->
	

</xsl:stylesheet>


