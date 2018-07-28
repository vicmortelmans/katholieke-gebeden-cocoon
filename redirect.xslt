<?xml version="1.0"?>
<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>

  <xsl:template match="@*|node()">
      <xsl:apply-templates select="@*|node()"/>
  </xsl:template>

  <xsl:template match="h1[@id]|h2[@id]">
    <xsl:variable name="url" select="concat('http://gebeden.gelovenleren.net/#', @id)"/>
    <xsl:variable name="original-url" select="concat('http://gebeden.gelovenleren.net/redirect/', @id, '.html')"/>
    <xsl:value-of select="$original-url"/><xsl:text>&#10;</xsl:text>
    <xsl:result-document 
      method="html" 
      indent="yes" 
      output-version="5.0"
      escape-uri-attributes="no"
      href="redirect/{@id}.html">
      <html lang="nl-NL"> 
        <head>
            <meta charset="UTF-8"/>
            <meta http-equiv="refresh" content="0; url={$url}"/>
            <script type="text/javascript">
                window.location.href = "<xsl:value-of select="$url"/>"
            </script>
            <title>Omleiding</title>
        </head>
        <body>
            Als je niet automatisch wordt omgeleid, volg dan deze <a href="{$url}">link</a>.
        </body>
      </html>
    </xsl:result-document> 
  </xsl:template>

</xsl:stylesheet>
