<?xml version="1.0" encoding="UTF-8"?>
<!-- $Id$ -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:t="http://www.tei-c.org/ns/1.0" exclude-result-prefixes="t" 
                version="2.0">

  <xsl:template match="t:p">
      <xsl:element name="p">
          <xsl:choose>
              <xsl:when test="@part='F'">
                  <xsl:attribute name="style">margin: 0 0 0 0;padding-left:5em;</xsl:attribute>              
              </xsl:when>
              <xsl:otherwise>
                  <xsl:attribute name="style">margin: 0 0 0 0;padding-left:5em;text-indent:-0.5em;</xsl:attribute>              
              </xsl:otherwise>
          </xsl:choose>
          <xsl:apply-templates/>
      </xsl:element>
  </xsl:template>
  
</xsl:stylesheet>