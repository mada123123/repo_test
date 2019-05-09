<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
	
	<xsl:template match="/">
		
			<xsl:if test="./NoOfSides != 3">
					
				<xsl:message terminate="yes">Error: The triangle has only 3 sides! Please try again!</xsl:message>
			</xsl:if>
	
	</xsl:template>
</xsl:stylesheet>
