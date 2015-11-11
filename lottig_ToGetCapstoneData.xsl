<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:output method="xhtml" doctype-system="about:legacy-compat"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Nicole Lottig's Capstone Data</title>
                <link rel="stylesheet" type="text/css" href="lottig_10-25_xsltExercise4.css"/>
            </head>
            <body>
                <h1>Nicole Lottig's Capstone Data</h1>
                <xsl:apply-templates select="//response"/>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="response">
        <xsl:text>Response </xsl:text><xsl:apply-templates select="@n"/><xsl:text>:</xsl:text>
        <ul><xsl:apply-templates select="question"/></ul>
    </xsl:template>
    <xsl:template match="question">
        <li><xsl:apply-templates/></li>
        
    </xsl:template>
    
</xsl:stylesheet>