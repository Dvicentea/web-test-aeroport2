<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
]>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8"/>
<xsl:template match="/"> <!-- Defineixo a partir de quin node es fa la cerca de l'xml -->
<table border="1" cellspacing="0" cellpadding="0" width="100%">			<!-- creem una taula que mostrara els resultats (com podriem crear un llistat) -->
      <tr style="background-color:#095fb0;font-family:Arial;font-size:15px;"> <!-- Defineixo la capçalera de la taula amb els seus atributs de colo font i tamany -->
        <th>Hora sortida</th> <!-- Defineixo el titol de cada columna -->
        <th>Hora arribada</th>
        <th>Aeroport d'origen</th>
        <th>Aeroport de destí</th>
        <th>Número de vol</th>
        <th>Companyia</th>
      </tr>
      <xsl:for-each select="aeroport/vol"> <!-- Es genera la repetició dels resultats en files INICI-->
      <tr style="font-family:Times New Roman;font-size:15px;">
        <td><xsl:value-of select="hsortida"/></td> <!-- S'assignen els camps dels resultats a cada columna fins que les dades de l'XML s'acaben-->
        <td><xsl:value-of select="harribada"/></td>
        <td><xsl:value-of select="origen"/></td>
        <td><xsl:value-of select="desti"/></td>
        <td><xsl:value-of select="nvol"/></td>
        <td><xsl:value-of select="companyia"/></td>
      </tr>
      </xsl:for-each> <!-- Es genera la repetició dels resultats en files FINAL-->
    </table>
</xsl:template>
</xsl:stylesheet>