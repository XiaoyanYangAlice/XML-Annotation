<?xml version="1.0" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    
                    img {
                    width:1520px;
                    border-radius:10px;
                    }

                    
                </style>
            </head>
            <body>
                <div>
                    <img src="https://www.rct.uk/sites/default/files/styles/rctr-scale-crop-1600-148/public/half-height-lead-image/trail/RS255863_405286.jpg?itok=vITSlTow" alt=""/>
                    <h1>10 London gardens and their historical information</h1>
                    <h1>For city memory projects</h1>
                </div>
                <div>
                    <h2>Index</h2>
                    <xsl:variable name="divNode" select="TEI/text/div"/>
                    <xsl:for-each select="$divNode">
                        <xsl:value-of select="./@n"/>
                        <xsl:text>.&#160;</xsl:text>
                        <xsl:variable name="title" select="head"/>
                        
                        <xsl:value-of select="$title"/>
                        <xsl:text>&#xa;&#xa;</xsl:text>
                       
                        
                    </xsl:for-each>
                </div>
                
                <div>
                    <h2>Content</h2>
                    <xsl:variable name="divNode" select="TEI/text/div"/>
                    <xsl:for-each select="$divNode">
                        <h3>
                            <xsl:value-of select="./@n"/>
                            <xsl:text>.&#160;</xsl:text>
                            <xsl:variable name="title" select="head"/>
                        
                            <xsl:value-of select="$title"/>
                        </h3>
                        <xsl:text>&#xa;</xsl:text>
                        
                        <h4>
                            <xsl:text>1.&#160;Historical time:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pNode" select="body/p"/>
                        <xsl:for-each select="$pNode">
                            <xsl:variable name="timePoint" select="date"/>
                            <xsl:for-each select="date">
                                <xsl:variable name="timePoint1" select="."/>
                                <xsl:value-of select="$timePoint1"/>
                                
                                <xsl:value-of select="concat('(', $timePoint1/@when, ')')"/>
                                <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                        </xsl:for-each>
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
                        
                        
                        <h4>
                            <xsl:text>2.&#160;Historical Person:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pNode2" select="body/p"/>
                        <xsl:for-each select="$pNode2">
                            <xsl:variable name="personName" select="persName"/>
                            <xsl:for-each select="persName">
                                <xsl:variable name="personName1" select="."/>
                                <xsl:value-of select="$personName1"/>

                                <xsl:value-of select="concat('(', $personName1/@type, ')')"/>
                                <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                       
                            
                        </xsl:for-each>
                        
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
                        
                        <h4>
                            <xsl:text>3.&#160;Address:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="aNode9" select="address"/>
                        <xsl:for-each select="$aNode9">
                            <xsl:variable name="pCode" select="postCode"/>

                             <xsl:value-of select="$pCode"/>
                                
                             <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                            
                            
                        
                        
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
                        
                        
                        
                        <h4>
                            <xsl:text>4.&#160;Historical Place:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pNode3" select="body/p"/>
                        <xsl:for-each select="$pNode3">
                            <xsl:variable name="placeName" select="placeName"/>
                            <xsl:for-each select="placeName">
                                <xsl:variable name="placeName1" select="."/>
                                <xsl:value-of select="$placeName1"/>
                                
                                <xsl:value-of select="concat('(', $placeName1/@type, ')')"/>
                                <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                        </xsl:for-each>
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
                        
                        
                        
                        
                        
                        <h4>
                            <xsl:text>5.&#160;Introduction of history:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pHistoryNode" select="body/p[@type='history']"/>
                        <xsl:for-each select="$pHistoryNode">
                            <xsl:variable name="pHistory" select="."/>
                            <xsl:value-of select="$pHistory"/>
                            <xsl:text>&#xa;</xsl:text>
                        </xsl:for-each>   
                        <xsl:text>&#xa;&#xa;&#xa;&#xa;&#xa;</xsl:text>
                    </xsl:for-each>
                    
                </div>

            </body>

       </html>

   </xsl:template>



</xsl:stylesheet>
