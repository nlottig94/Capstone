<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head><title>Nicole Lottig's Capstone Data</title></head>
            <body>
                <hl>Nicole Lottig's Capstone Data</hl>
                <table>
                    <tr>
                        <th>Are you an international or Erasmus student?</th>
                        <th>Are you male or female?</th>
                        <th>How old are you?</th>
                        <th>Do you like or dislike the graffiti?</th>
                        <th>What aspects do you like?</th>
                        <th>What aspects do you dislike?</th>
                        <th>Does the graffiti make you feel any certain type of emotion?</th>
                        <th>What kinds of emotions?</th>
                        <th>Which colors do you like in each picture?  Why?</th>
                        <th>Do you think the artists used the different colors in the graffiti to attract a certain type of audience?</th>
                        <th>Why?</th>
                        <th>What do you think of the words that are written on or around the graffiti?</th>
                        <th>Does it make sense that the graffiti is located in Belfast?</th>
                        <th>What do you know about the Troubles in Northern Ireland?</th>
                        <th>How did you learn about the Troubles?</th>
                        <th>If you answered ‘Other’ to the previous questions, please elaborate.</th>
                        <th>What did you learn of the Troubles from the previous answers you selected above?</th>
                        <th>What do you now think of the depictions on Peace Wall?</th>
                        <th>In your opinion, should there be a Peace Wall?  Why or why not?</th>
                    </tr>
                    <xsl:apply-templates/>
                </table>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="Response">
        <tr>
            <td><xsl:apply-templates select="//Q1"/></td>
            <td><xsl:apply-templates select="//Q2"/></td>
            <td><xsl:apply-templates select="//Q3"/></td>
            <td><xsl:apply-templates select="//Q4"/></td>
            <td><xsl:apply-templates select="//Q5"/></td>
            <td><xsl:apply-templates select="//Q6"/></td>
            <td><xsl:apply-templates select="//Q7a"/></td>
            <td><xsl:apply-templates select="//Q7b"/></td>
            <td><xsl:apply-templates select="//Q8"/></td>
            <td><xsl:apply-templates select="//Q9a"/></td>
            <td><xsl:apply-templates select="//Q9b"/></td>
            <td><xsl:apply-templates select="//Q10"/></td>
            <td><xsl:apply-templates select="//Q11"/></td>
            <td><xsl:apply-templates select="//Q12"/></td>
            <td><xsl:apply-templates select="//Q13a_1,Q13a_2,Q13a_3,Q13a_4"/></td>
            <td><xsl:apply-templates select="//Q13b"/></td>
            <td><xsl:apply-templates select="//Q14"/></td>
            <td><xsl:apply-templates select="//Q15"/></td>
            <td><xsl:apply-templates select="//Q16"/></td>
        </tr>
    </xsl:template>
    
    
</xsl:stylesheet>