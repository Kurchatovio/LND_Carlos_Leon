<?xml version="1.0" encoding="ISO-8859-1"?>

<!-- New document created with EditiX at Sat Jun 05 18:19:30 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	<xsl:template match="/">
	
	<html>
		<body>
		<h1>Faltas Justificadas:</h1>
		<table  width="30%" style="border: 2px solid green"  >
			<tr style="background-color:green"  >
				<td>Nº</td>
				<td>CIAL</td>
				<td>Total de faltas justificadas</td>
			</tr>
			<xsl:apply-templates select="faltas/alumno" mode="justificadas"/>
		</table>
		<br/>
		<h1>Faltas Injustificadas:</h1>
		<table  width="30%" style="border: 2px solid red">
			<tr  style="background-color:red">
				<td>Nº</td>
				<td>CIAL</td>
				<td>Total de faltas justificadas</td>
			</tr>
			<xsl:apply-templates select="faltas/alumno" mode="injustificadas"/>
		</table>
		</body>
	</html>
	</xsl:template>
	
	<xsl:template match="faltas/alumno" mode="justificadas">
		<tr>
			<td style="background-color:green"  >
				<xsl:number level="single" format="a)"></xsl:number>
			</td>
			<td>
				<xsl:value-of select="@cial"/>
			</td>
			<td>
				
<xsl:value-of select="count(falta[@tipo = 'J'])"/>
			</td>
		</tr>
	</xsl:template>	
	<xsl:template match="faltas/alumno" mode="injustificadas">
		<tr>
			<td  style="background-color:red" >
				<xsl:number level="single" format="a)"></xsl:number>
			</td>
			<td>
				<xsl:value-of select="@cial"/>
			</td>
			<td>

				<xsl:value-of select="count(falta[@tipo = 'I'])"/>
			
				<xsl:if test="count(falta[@tipo = 'I']) &gt; 5">
			
				<p>Pérdida de eval. continua</p>
			
			
				</xsl:if>
			</td>
		</tr>
	</xsl:template>
</xsl:stylesheet>


