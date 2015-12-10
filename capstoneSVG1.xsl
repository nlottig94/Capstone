<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xpath-default-namespace="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    xmlns="http://www.w3.org/2000/svg">

    <xsl:output method="xml" indent="yes"/>
    
    <xsl:template match="/">
        <!--ebb: The above line was beneath your HTML root element, 
        which caused the main trouble in your output!-->
   <!-- <html>
        <head>
            <title>Capstone Graph 1</title>
        </head>
        <body>-->
        <!--2015- 12-06 ebb: Build your HTML page separately to house your SVG, and be sure to use our
            usual top lines:
            <!DOCTYPE html
  SYSTEM "about:legacy-compat">
<html xmlns="http://www.w3.org/1999/xhtml">

You want these at the top, and no XML declaration line, and then embed your SVG code 
in the body of your HTML file. 
            -->
                
                <svg width="100%" height="100%">
                    
                    <xsl:apply-templates select="//answer[@n=2]"/>
                    
                    <text x="250" y="-450" text-anchor="middle" font-size="20px" font-family="Courier New">Male VS Female</text>
                    
                    <g transform="translate(200, 600)">
                        <line x1="0" x2="0" y1="0" y2="-500" stroke="black" stroke-width="2"/>
                        <line x1="-1" x2="500" y1="0" y2="0" stroke="black" stroke-width="2"/>
                        <line x1="-1" x2="500" y1="-500" y2="-500" stroke="black" stroke-width="2"/>
                        <line x1="499" x2="499" y1="0" y2="-500" stroke="black" stroke-width="2"/>
                        
                        <text x="-20" y="-20" text-anchor="middle" font-size="16px" font-family="Courier New">1</text>
                        <line x1="5" x2="-5" y1="-20" y2="-20" stroke="black" stroke-width="1"/>
                        <text x="-20" y="-40" text-anchor="middle" font-size="16px" font-family="Courier New">2</text>
                        <line x1="5" x2="-5" y1="-40" y2="-40" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-60" text-anchor="middle" font-size="16px" font-family="Courier New">3</text>
                        <line x1="5" x2="-5" y1="-60" y2="-60" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-80" text-anchor="middle" font-size="16px" font-family="Courier New">4</text>
                        <line x1="5" x2="-5" y1="-80" y2="-80" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-100" text-anchor="middle" font-size="16px" font-family="Courier New">5</text>
                        <line x1="5" x2="-5" y1="-100" y2="-100" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-120" text-anchor="middle" font-size="16px" font-family="Courier New">6</text>
                        <line x1="5" x2="-5" y1="-120" y2="-120" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-140" text-anchor="middle" font-size="16px" font-family="Courier New">7</text>
                        <line x1="5" x2="-5" y1="-140" y2="-140" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-80" text-anchor="middle" font-size="16px" font-family="Courier New">8</text>
                        <line x1="5" x2="-5" y1="-80" y2="-80" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-90" text-anchor="middle" font-size="16px" font-family="Courier New">9</text>
                        <line x1="5" x2="-5" y1="-90" y2="-90" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-100" text-anchor="middle" font-size="16px" font-family="Courier New">10</text>
                        <line x1="5" x2="-5" y1="-100" y2="-100" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-110" text-anchor="middle" font-size="16px" font-family="Courier New">11</text>
                        <line x1="5" x2="-5" y1="-110" y2="-110" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-120" text-anchor="middle" font-size="16px" font-family="Courier New">12</text>
                        <line x1="5" x2="-5" y1="-120" y2="-120" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-130" text-anchor="middle" font-size="16px" font-family="Courier New">13</text>
                        <line x1="5" x2="-5" y1="-130" y2="-130" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-140" text-anchor="middle" font-size="16px" font-family="Courier New">14</text>
                        <line x1="5" x2="-5" y1="-140" y2="-140" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-150" text-anchor="middle" font-size="16px" font-family="Courier New">15</text>
                        <line x1="5" x2="-5" y1="-150" y2="-150" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-160" text-anchor="middle" font-size="16px" font-family="Courier New">16</text>
                        <line x1="5" x2="-5" y1="-160" y2="-160" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-170" text-anchor="middle" font-size="16px" font-family="Courier New">17</text>
                        <line x1="5" x2="-5" y1="-170" y2="-170" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-180" text-anchor="middle" font-size="16px" font-family="Courier New">18</text>
                        <line x1="5" x2="-5" y1="-180" y2="-180" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-190" text-anchor="middle" font-size="16px" font-family="Courier New">19</text>
                        <line x1="5" x2="-5" y1="-190" y2="-190" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-200" text-anchor="middle" font-size="16px" font-family="Courier New">20</text>
                        <line x1="5" x2="-5" y1="-200" y2="-200" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-210" text-anchor="middle" font-size="16px" font-family="Courier New">21</text>
                        <line x1="5" x2="-5" y1="-210" y2="-210" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-220" text-anchor="middle" font-size="16px" font-family="Courier New">22</text>
                        <line x1="5" x2="-5" y1="-220" y2="-220" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-230" text-anchor="middle" font-size="16px" font-family="Courier New">23</text>
                        <line x1="5" x2="-5" y1="-230" y2="-230" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-240" text-anchor="middle" font-size="16px" font-family="Courier New">24</text>
                        <line x1="5" x2="-5" y1="-240" y2="-240" stroke="black" stroke-width="1"/>
                        <text x="-10" y="-250" text-anchor="middle" font-size="16px" font-family="Courier New">25</text>
                        <line x1="5" x2="-5" y1="-250" y2="-250" stroke="black" stroke-width="1"/>
                        
                        <text x="40" y="10" text-anchor="middle" font-size="16px" font-family="Courier New">Male</text>
                        <text x="80" y="10" text-anchor="middle" font-size="16px" font-family="Courier New">Female</text>
                        
                        
                    </g>
                </svg>
            
        <!--</body>
    </html>-->
    </xsl:template>
    
    <xsl:template match="answer[@n=2]">
        <!--<xsl:variable name="xInt" select="20"/>-->
        <xsl:variable name="yInt" select="10"/>
        <xsl:variable name="yPos1" select="(count(.[contains(., 'Male')])) * $yInt"/>
        <xsl:variable name="yPos2" select="(count(.[contains(., 'Female')])) * $yInt"/>
        <!--<xsl:variable name="xPos" select="(count(//rdg/@wit))*$xInt"/>-->
        
        <line x1="40" x2="40" y1="0" y2="-{$yPos1}" stroke="#FF8336" stroke-width="40"/>
        <line x1="80" x2="80" y1="0" y2="-{$yPos2}" stroke="#FF8336" stroke-width="40"/>
    </xsl:template>
</xsl:stylesheet>
