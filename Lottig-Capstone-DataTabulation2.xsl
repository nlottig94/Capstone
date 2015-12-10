<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="3.0">
    
    <xsl:output method="xhtml" encoding="utf-8" doctype-system="about:legacy-compat"
        omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <div type="male">
            <h1>Male Results</h1>
            <table border="1">
                <tr>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='1'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='2'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='3'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='4'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='5'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='6'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='7a'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='7b'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='8'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='9a'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='9b'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='10'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='11'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='12'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='13a'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='13b'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='14'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='15'])"/></th>
                    <th><xsl:apply-templates select="distinct-values(//question[@n='16'])"/></th>
                </tr>
                <xsl:apply-templates select="//response"/>
            </table>
        </div>
    </xsl:template>
    <xsl:template match="response">
        
        <tr>
            <td><xsl:text>-Yes: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/preceding-sibling::answer[@n='1'][contains(., 'Yes')])"/><br/><xsl:text>-No: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/preceding-sibling::answer[@n='1'][contains(., 'No')])"/></td>
            <td><xsl:text># of Males: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')])"/></td>
            <td><xsl:text>-19: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='3'][contains(., '19')])"/><br/><xsl:text>-20: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='3'][contains(., '20')])"/><br/><xsl:text>-21: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='3'][contains(., '21')])"/></td>
            <td><xsl:text>-Like: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='4'][contains(., 'Like')])"/><br/><xsl:text>-Dislike: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='4'][contains(., 'Dislike')])"/></td>
        <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='5']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='5']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
            <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='6']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='6']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
            <td><xsl:text>-Yes: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='7a'][contains(., 'Yes')])"/><br/><xsl:text>-No: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='7a'][contains(., 'No')])"/></td>
            <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='7b']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='7b']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
            <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='8']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='8']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
            <td><xsl:text>-Yes: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='9a'][contains(., 'Yes')])"/><br/><xsl:text>-No: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='9a'][contains(., 'No')])"/></td>
            <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='9b']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='9b']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
            <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='10']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='10']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
            <td><xsl:text>-Yes: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='11'][contains(., 'Yes')])"/><br/><xsl:text>-No: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='11'][contains(., 'No')])"/></td>
            <td><xsl:text>-Little </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='12'][contains(., 'Little')])"/><br/><xsl:text>-A Moderate Amount: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='12'][contains(., 'A Moderate Amount')])"/><br/><xsl:text>-A Lot: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='12'][contains(., 'A Lot')])"/></td>
            <td><xsl:text>-Parents </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='13a'][contains(., 'Parents')])"/><br/><xsl:text>-School/History Books: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='13a'][contains(., 'School/History Books')])"/><br/><xsl:text>-Personal Experiences: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='13a'][contains(., 'Personal Experiences')])"/><br/><xsl:text>-Other: </xsl:text><xsl:apply-templates select="count(//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='13a'][contains(., 'Other')])"/></td>
            <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='13b']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='13b']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
            <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='14']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='14']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
            <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='15']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='15']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
            <td><ul><!--<xsl:for-each select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='16']">--><li><xsl:text>"</xsl:text><xsl:apply-templates select="//answer[@n='2'][contains(., 'Male')]/following-sibling::answer[@n='16']"/><xsl:text>"</xsl:text></li><!--</xsl:for-each>--></ul></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>