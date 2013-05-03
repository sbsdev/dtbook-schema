<?xml version="1.0" encoding="UTF-8"?>

<!--

    This script invokes the skeleton XSLT2 implementation of ISO Schematron
    and provides a custom output routine intended for use in daisyproducer.

    See: http://code.google.com/p/schematron/
-->

<xsl:stylesheet
   xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
   xmlns:axsl="http://www.w3.org/1999/XSL/TransformAlias"
   version="2.0">

  <xsl:import href="iso_schematron_skeleton_for_saxon.xsl"/>

  <xsl:template name="process-prolog">
    <axsl:output method="text" />
  </xsl:template>

  <xsl:template name="process-message">
    <xsl:param name="pattern" />
    <xsl:param name="role" />
    <axsl:message>
      <xsl:apply-templates mode="text" />
    </axsl:message>
  </xsl:template>

  <xsl:template match="text()" mode="text">
    <xsl:value-of select="normalize-space(.)"/>
  </xsl:template>

</xsl:stylesheet>
