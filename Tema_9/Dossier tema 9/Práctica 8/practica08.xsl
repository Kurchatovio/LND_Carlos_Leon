<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes"/>
	
	<xsl:template match="/">
		<ciales>
			<xsl:apply-templates select="/instituto/curso/alumno/apellidos[contains(text(), 'Pérez')]"/>
		</ciales>
	</xsl:template>
	
	<xsl:template match="apellidos[contains(text(), 'Pérez')]">
		<cartas>
			<invitacion>
				<destinatario>
					<xsl:value-of select="../nombre"/>
					-
					<xsl:value-of select="../apellidos"/>
				</destinatario>
				<evento>1ª  Congregación de los Pérez</evento>
			</invitacion>
		</cartas>
	</xsl:template>
</xsl:stylesheet>


