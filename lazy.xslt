<?xml version="1.0"?>
<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="5.0" encoding="UTF-8" indent="yes" />

  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()"/>
    </xsl:copy>
  </xsl:template>

  <xsl:template match="img">
    <img src="http://spacergif.org/spacer.gif" 
         class="lazy" 
         data-src="{@src}" 
         alt="{@alt}"/>
    <noscript>
      <xsl:copy-of select="."/>
    </noscript>
  </xsl:template>

</xsl:stylesheet>


