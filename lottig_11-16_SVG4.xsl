<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">
    <xsl:variable name="dickinsonPoems" select="collection('Dickinson')"/>
    <xsl:variable name="xInt" select="60"/>
    <xsl:variable name="yInt" select="50"/>
    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <svg xmlns="http://www.w3.org/2000/svg" width="2000" height="1000">
            <g transform="translate(300, 750)">
                <text x="375" y="-650" text-anchor="middle" style="stroke: black; stroke-width: 2; fill: black; font-size: 32px; font-family: Courier New">Variations Within Emily Dickinson's Fascicle 16</text>
                <xsl:apply-templates select="$dickinsonPoems//body">
                    <xsl:sort select="count(//rdg/@wit)" order="descending"/>
                </xsl:apply-templates>
                
                <line x1="0" x2="0" y1="0" y2="-600" stroke="black" stroke-width="2"/>
                <line x1="-1" x2="750" y1="0" y2="0" stroke="black" stroke-width="2"/>
                <line x1="-1" x2="750" y1="-600" y2="-600" stroke="black" stroke-width="2"/>
                <line x1="749" x2="749" y1="0" y2="-600" stroke="black" stroke-width="2"/>
                <text x="60" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">1</text>
                <text x="120" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">2</text>
                <text x="180" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">3</text>
                <text x="240" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">4</text>
                <text x="300" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">5</text>
                <text x="360" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">6</text>
                <text x="420" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">7</text>
                <text x="480" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">8</text>
                <text x="540" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">9</text>
                <text x="600" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">10</text>
                <text x="660" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">11</text>
                <text x="720" y="20" text-anchor="middle" font-size="16px" font-family="Courier New">12</text>
                
                <text x="375" y="60" text-anchor="middle" font-size="20px" font-family="Courier New"  stroke="black" stroke-width="1.5">Number of Variants</text>
            </g>
        </svg>
    </xsl:template>
    
    <xsl:template match="body">
        <xsl:variable name="yPos1" select="position() * $yInt"/>
        <xsl:variable name="xPos1" select="(count(//rdg/@wit))*$xInt"/>
        <text x="-2" y="-{$yPos1}" text-anchor="end" font-size="16px" font-family="Courier New"><xsl:apply-templates select="head/title"/></text>
        
        <text x="753" y="-{$yPos1}" text-anchor="start" font-size="16px" font-family="Courier New"><xsl:value-of select="count(//rdg/@wit)"/> Variant(s)</text>
        
        <line x1="0" x2="{$xPos1}" y1="-{$yPos1}" y2="-{$yPos1}" stroke="#FF8336" stroke-width="40"/>
        
        <line x1="60" x2="60" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="120" x2="120" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="180" x2="180" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="240" x2="240" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="300" x2="300" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="360" x2="360" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="420" x2="420" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="480" x2="480" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="540" x2="540" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="600" x2="600" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="660" x2="660" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        <line x1="720" x2="720" y1="5" y2="-600" style="stroke: black; fill:none; stroke-width: 1px; stroke-dasharray: 10 5"/>
        
    </xsl:template>
</xsl:stylesheet>