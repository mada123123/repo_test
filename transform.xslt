<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:key name="lengthK" use="GeometricalFigure/SidesList" match="SideLength"/>
	<xsl:template match="/">
		<xsl:call-template name="CheckSides">
			<xsl:with-param name="sideNo" select="GeometricalFigure/NoOfSides"/>
		</xsl:call-template>
		<xsl:if test="GeometricalFigure/NoOfSides != 3">
			<xsl:message terminate="yes">Error: The triangle has only 3 sides! Please try again!</xsl:message>
		</xsl:if>
		<xsl:if test="count(GeometricalFigure/SidesList/SideLength) != GeometricalFigure/NoOfSides">
			<xsl:message terminate="yes">Error: More/less than 3 lengths were provided! Please try again!</xsl:message>
		</xsl:if>
		<xsl:for-each select="GeometricalFigure/SidesList/SideLength">
			<xsl:if test="number(.) != .">
				<xsl:message terminate="yes">Error: Side length not numeric!</xsl:message>
			</xsl:if>
		</xsl:for-each>
		
		<xsl:choose>
			<xsl:when test="GeometricalFigure/SidesList/SideLength[1] = GeometricalFigure/SidesList/SideLength[2] and GeometricalFigure/SidesList/SideLength[1] = GeometricalFigure/SidesList/SideLength[3]">Equilateral</xsl:when>
			<xsl:when test="GeometricalFigure/SidesList/SideLength[1] = GeometricalFigure/SidesList/SideLength[2] or GeometricalFigure/SidesList/SideLength[1] = GeometricalFigure/SidesList/SideLength[3] or GeometricalFigure/SidesList/SideLength[2] = GeometricalFigure/SidesList/SideLength[3]">Isosceles</xsl:when>
			<xsl:otherwise>Scalene</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="CheckSides">
		<xsl:param name="sideNo" select="."/>
		<xsl:if test="number($sideNo) != $sideNo">
			<xsl:message terminate="yes">Error: Sides number not numeric! Please try again!</xsl:message>
		</xsl:if>
		<xsl:if test="format-number($sideNo, '#') != $sideNo">
			<xsl:message terminate="yes">Error: Sides number not integer! Please try again!</xsl:message>
		</xsl:if>
		<xsl:if test="$sideNo &lt; 0">
			<xsl:message terminate="yes">Error: Unknown geometrical figure with no or negative number of sides!</xsl:message>
		</xsl:if>
	</xsl:template>
</xsl:stylesheet>
