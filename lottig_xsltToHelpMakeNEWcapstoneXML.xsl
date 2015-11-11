<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="3.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <allResponses>
            <xsl:apply-templates select="//Response"/>
        </allResponses>
    </xsl:template>
    <xsl:template match="Response">
        <response n="{count(./preceding-sibling::Response)+1}">
            <question n="1"><xsl:apply-templates select="Q1"/></question>
            <question n="2"><xsl:apply-templates select="Q2"/></question>
            <question n="3"><xsl:apply-templates select="Q3"/></question>
            <question n="4"><xsl:apply-templates select="Q4"/></question>
            <question n="5"><xsl:apply-templates select="Q5"/></question>
            <question n="6"><xsl:apply-templates select="Q6"/></question>
            <question n="7a"><xsl:apply-templates select="Q7a"/></question>
            <question n="7b"><xsl:apply-templates select="Q7b"/></question>
            <question n="8"><xsl:apply-templates select="Q8"/></question>
            <question n="9a"><xsl:apply-templates select="Q9a"/></question>
            <question n="9b"><xsl:apply-templates select="Q9b"/></question>
            <question n="10"><xsl:apply-templates select="Q10"/></question>
            <question n="11"><xsl:apply-templates select="Q11"/></question>
            <question n="12"><xsl:apply-templates select="Q12"/></question>
            <question n="13a"><xsl:apply-templates select="string-join((Q13a_1, Q13a_2, Q13a_3, Q13a_4), '; ')"/></question> <!--nll: So I am trying to make a string-join list...It is working; however, if they did not click the box, it's leaving me with a blank.  Can we fix this??-->
            <question n="13b"><xsl:apply-templates select="Q13b"/></question>
            <question n="14"><xsl:apply-templates select="Q14"/></question>
            <question n="15"><xsl:apply-templates select="Q15"/></question>
            <question n="16"><xsl:apply-templates select="Q16"/></question>
        
        
        
        </response>
    </xsl:template>
    
    
</xsl:stylesheet>