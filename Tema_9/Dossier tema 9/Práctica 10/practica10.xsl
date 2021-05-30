<?xml version="1.0" encoding="UTF-8"?>

<!-- New document created with EditiX at Tue May 25 15:55:50 BST 2021 -->

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="html"/>
	
	
<!--Creamos una plantilla que "empieze" en el elemento raíz  -->
	<xsl:template match="/">
	<html>
		<body>
		<!--Hacemos una "llamada" y aplicamos la plantilla creada para el elemento "item"-->
		<!-"apply_templates" aplica la plantilla a cada nodo seleccionado, por lo que se aplicará a cada nodo "item"-->
			
<xsl:apply-templates select="/Category/Feed/item"/>
		</body>
	</html>
	
	</xsl:template>
	
	<!--aquí tenemos una plantilla sobre el elemento "item" que crea una tabla de una sola columna con el contenido de "titulo"-->
	<!--Esta plantilla es "llamada" o aplicada en la plantilla superior-->
	<!--Si la tabla se hubiera creado en la plantilla de arriba, se crearía una única tabla, con multiples valores de "titulo" como celdas o columnas de la tabla-->
	<!--Como la tabla es creada en esta plantilla, se crea una tabla por cada "llamada" o aplicación de la plantilla-->
	<xsl:template match="/Category/Feed/item">
		
<table width="70%" border="1"  >
			<tr>
				<td><xsl:value-of select="title"/></td>
			</tr>
			<br/>
		
</table>
	</xsl:template>

</xsl:stylesheet>


