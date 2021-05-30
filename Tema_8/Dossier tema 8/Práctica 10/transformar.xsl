<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Prueba de XPATH</title>
			</head>
			<body>
				<H1>Resultado de la consulta XPATH:</H1>
				<pre>
					<xsl:apply-templates select="/instituto/curso/alumno[@cial = 'A95M600']"/>
				</pre>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
