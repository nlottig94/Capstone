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
            <question n="1"><xsl:text>Question 1: Are you an international or Erasmus student?:  </xsl:text><xsl:apply-templates select="Q1"/></question>
            <question n="2"><xsl:text>Question 2: Are you male or female?:  </xsl:text><xsl:apply-templates select="Q2"/></question>
            <question n="3"><xsl:text>Question 3: How old are you?:  </xsl:text><xsl:apply-templates select="Q3"/></question>
            <question n="4"><xsl:text>Question 4: Do you like or dislike the graffiti?:  </xsl:text><xsl:apply-templates select="Q4"/></question>
            <question n="5"><xsl:text>Question 5: What aspects do you like?:  </xsl:text><xsl:apply-templates select="Q5"/></question>
            <question n="6"><xsl:text>Question 6: What aspects do you dislike?:  </xsl:text><xsl:apply-templates select="Q6"/></question>
            <question n="7a"><xsl:text>Question 7a: Does the graffiti make you feel any certain type of emotion?:  </xsl:text><xsl:apply-templates select="Q7a"/></question>
            <question n="7b"><xsl:text>Question 7b: What kinds of emotions?:  </xsl:text><xsl:apply-templates select="Q7b"/></question>
            <question n="8"><xsl:text>Question 8: Which colors do you like in each picture?  Why?:  </xsl:text><xsl:apply-templates select="Q8"/></question>
            <question n="9a"><xsl:text>Question 9a: Do you think the artists used the different colors in the graffiti to attract a certain type of audience?:  </xsl:text><xsl:apply-templates select="Q9a"/></question>
            <question n="9b"><xsl:text>Question 9b: Why?:  </xsl:text><xsl:apply-templates select="Q9b"/></question>
            <question n="10"><xsl:text>Question 10: What do you think of the words that are written on or around the graffiti?:  </xsl:text><xsl:apply-templates select="Q10"/></question>
            <question n="11"><xsl:text>Question 11: Does it make sense that the graffiti is located in Belfast?:  </xsl:text><xsl:apply-templates select="Q11"/></question>
            <question n="12"><xsl:text>Question 12: What do you know about the Troubles in Northern Ireland?:  </xsl:text><xsl:apply-templates select="Q12"/></question>
            <question n="13a"><xsl:text>Question 13a: How did you learn about the Troubles?:  </xsl:text><xsl:apply-templates select="string-join((Q13a_1, Q13a_2, Q13a_3, Q13a_4), '; ')"/></question> <!--nll: So I am trying to make a string-join list...It is working; however, if they did not click the box, it's leaving me with a blank.  Can we fix this??-->
            <question n="13b"><xsl:text>Question 13b: If you answered ‘Other’ to the previous questions, please elaborate.:  </xsl:text><xsl:apply-templates select="Q13b"/></question>
            <question n="14"><xsl:text>Question 14: What did you learn of the Troubles from the previous answers you selected above?:  </xsl:text><xsl:apply-templates select="Q14"/></question>
            <question n="15"><xsl:text>Question 15: What do you now think of the depictions on Peace Wall?:  </xsl:text><xsl:apply-templates select="Q15"/></question>
            <question n="16"><xsl:text>Question 16: In your opinion, should there be a Peace Wall?  Why or why not?:  </xsl:text><xsl:apply-templates select="Q16"/></question>
        
        
        
        </response>
    </xsl:template>
    
    
</xsl:stylesheet>