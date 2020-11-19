<?xml version="1.0"?>
<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" indent="no"/>
  <xsl:template match="gedenk">
    <root><xsl:apply-templates/></root>
  </xsl:template>
  <xsl:template match="s1">
    <categories><xsl:apply-templates select="@*|node()"/></categories>
  </xsl:template>
  <xsl:template match="s2">
    <prayers><xsl:apply-templates select="@*|node()"/></prayers>
  </xsl:template>
  <xsl:template match="c">
    <presentations><xsl:value-of select="@id"/></presentations>
  </xsl:template>
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>

