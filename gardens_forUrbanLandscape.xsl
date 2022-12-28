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
                    <h1>10 London gardens and their scenery and design information</h1>
                    <h1>For urben landscape study</h1>
                </div>
                <div>
                    <h2>Index</h2>
                    <xsl:variable name="divNode" select="TEI/text/div"/>
                    <xsl:for-each select="$divNode">
                        <xsl:value-of select="./@n"/>
                        <xsl:text>.&#160;</xsl:text>
                        <xsl:variable name="title" select="head"/>
                        
                        <xsl:value-of select="$title"/>
                        <xsl:text>&#xa;</xsl:text>
                        <xsl:variable name="pNode" select="$divNode/body/p"/>
                        
                    </xsl:for-each>
                </div>
                
                <div>
                    <h2>Content</h2>
                    <xsl:variable name="divNode1" select="TEI/text/div"/>
                    <xsl:for-each select="$divNode1">
                        <h3>
                            <xsl:value-of select="./@n"/>
                            <xsl:text>.&#160;</xsl:text>
                            <xsl:variable name="title" select="head"/>
                            
                            <xsl:value-of select="$title"/>
                        </h3>
                        <xsl:text>&#xa;&#xa;</xsl:text>
                        
                        <h4>
                            <xsl:text>1.&#160;Garden Design Styles and Genres:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pNode" select="body/p"/>
                        <xsl:for-each select="$pNode">
                            <xsl:variable name="gardenStyle" select="emph"/>
                            <xsl:for-each select="emph">
                                <xsl:variable name="gardenStyle1" select="."/>
                                <xsl:value-of select="$gardenStyle1"/>

                                <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                        </xsl:for-each>
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
                        
                        <h4>
                            <xsl:text>2.&#160;Designers in history:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pNode5" select="body/p"/>
                        <xsl:for-each select="$pNode5">
                            <xsl:variable name="designerName" select="persName[@type='designer']"/>
                            <xsl:for-each select="$designerName">
                                <xsl:variable name="designerName1" select="."/>
                                <xsl:value-of select="$designerName1"/>
                                
                                <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                            
                            
                        </xsl:for-each>
                        
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
                        <h4>
                            <xsl:text>3.&#160;Introduction of Design Concept:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pDNode7" select="body/p[@type='design']"/>
                        <xsl:for-each select="$pDNode7">
                            <xsl:variable name="pDNode71" select="."/>
                            <xsl:value-of select="$pDNode71"/>
                            <xsl:text>&#xa;</xsl:text>
                        </xsl:for-each>   
                        
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
                        
                        <h4>
                            <xsl:text>4.&#160;Recommendation:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pNode9" select="body/p"/>
                        <xsl:for-each select="$pNode9">
                            <xsl:variable name="recomName" select="term[@type='recommendation']"/>
                            <xsl:for-each select="$recomName">
                                <xsl:variable name="recomName1" select="."/>
                                <xsl:value-of select="$recomName1"/>
                                
                                <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                            
                            
                        </xsl:for-each>
                        
                        <xsl:text>&#xa;&#xa;</xsl:text>
                        
                        
                        
                        <h4>
                            <xsl:text>5.&#160;Places Involved Inside the Garden:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pNode2" select="body/p"/>
                        <xsl:for-each select="$pNode2">
                            <xsl:variable name="insidePlaceName" select="placeName[@type='inside']"/>
                            <xsl:for-each select="$insidePlaceName">
                                <xsl:variable name="insidePlaceName1" select="."/>
                                <xsl:value-of select="$insidePlaceName1"/>
                                
                                <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                            
                            
                        </xsl:for-each>
                        
                        
                        
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
                        <h4>
                            <xsl:text>6.&#160;Constructions Involved Inside the Garden:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pNode3" select="body/p"/>
                        <xsl:for-each select="$pNode3">
                            <xsl:variable name="archiTerm" select="term[@type='architecture']"/>
                            <xsl:for-each select="$archiTerm">
                                <xsl:variable name="archiTerm1" select="."/>
                                <xsl:value-of select="$archiTerm1"/>
                                
                                <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                        </xsl:for-each>
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>
                        
                        <h4>
                            <xsl:text>7.&#160;Plants and Animals Involved Inside the Garden:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pNode4" select="body/p"/>
                        <xsl:for-each select="$pNode4">
                            <xsl:variable name="plantTerm" select="term[@type='plants']"/>
                            <xsl:for-each select="$plantTerm">
                                <xsl:variable name="plantTerm1" select="."/>
                                <xsl:value-of select="$plantTerm1"/>
                                
                                <xsl:text>,&#160;</xsl:text>
                                
                            </xsl:for-each>
                            
                            <xsl:variable name="animalTerm" select="term[@type='animal']"/>
                            <xsl:for-each select="$animalTerm">
                                <xsl:variable name="animalTerm1" select="."/>
                                <xsl:value-of select="$animalTerm1"/>
                                <xsl:text>,&#160;</xsl:text>
                            </xsl:for-each>
                        </xsl:for-each>
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>                     
                        
                        
                        <h4>
                            <xsl:text>8.&#160;Description of Scenery:&#160;</xsl:text>
                        </h4>
                        <xsl:variable name="pSNode6" select="body/p[@type='history']"/>
                        <xsl:for-each select="$pSNode6">
                            <xsl:variable name="pSNode61" select="."/>
                            <xsl:value-of select="$pSNode61"/>
                            <xsl:text>&#xa;</xsl:text>
                        </xsl:for-each>  
                        
                        <xsl:variable name="pPNode8" select="body/p[@type='planting']"/>
                        <xsl:for-each select="$pPNode8">
                            <xsl:variable name="pPNode81" select="."/>
                            <xsl:value-of select="$pPNode81"/>
                            <xsl:text>&#xa;</xsl:text>
                        </xsl:for-each>  
                        <xsl:text>&#xa;&#xa;&#xa;</xsl:text>

                        
                        
                        
                        <xsl:text>&#xa;&#xa;&#xa;&#xa;&#xa;</xsl:text>
                    </xsl:for-each>
                    
                </div>
                
            </body>
            
        </html>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>
