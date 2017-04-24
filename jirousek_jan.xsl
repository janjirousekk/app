<!-- Odkaz na github: https://github.com/janjirousekk/app -->

<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Semestr�ln� projekt - Jan Jirou�ek</title>
            </head>
            <body>
                <h1>Nastaven� aplikace pro jednotliv� ��ty</h1>
                <xsl:for-each select="app/user">
                    <h2> 
                        #<xsl:value-of select="@id"/>&#160;<xsl:value-of select="account/nick"/> 
                    </h2>
                    <h3>Informace o ��tu</h3>
                    <div id="account_info">
                        <table>
                            <tr>
                                <td>Email</td>
                                <td><xsl:value-of select="account/email"/></td>
                            </tr>
                            <tr>
                                <td>��et vytvo�en</td>
                                <td><xsl:value-of select="account/created"/></td>
                            </tr>
                            <tr>
                                <td>Posledn� p�ihl�en�</td>
                                <td><xsl:value-of select="account/last_login"/></td>
                            </tr>
                        </table>
                    </div>
                    <div id="account_premium_info">
                        <xsl:choose>
                            <xsl:when test="account/premium/@active = 'true'">
                                <table>
                                    <tr>
                                        <th colspan="2">Pr�miov� ��et</th>
                                    </tr>
                                    <tr>
                                        <td>��et aktivn� od</td>
                                        <td><xsl:value-of select="account/premium_fromDate"/></td>
                                    </tr>
                                    <tr>
                                        <td>��et aktivn� do</td>
                                        <td><xsl:value-of select="account/premium_toDate"/></td>
                                    </tr>
                                </table>
                            </xsl:when>
                            <xsl:otherwise>
                                U�ivatel nem� aktivn� pr�miov� ��et
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                    <h3>Nastaven� aplikace</h3>
                    <table>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <th colspan="2">Zobrazen�</th>
                                    </tr>
                                    <tr>
                                        <td>P�ednastaven� nastaven�</td>
                                        <xsl:choose>
                                            <xsl:when test="config/predefined= 'custom'">
                                                <td>Pou��t vlastn� nastaven�</td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td><xsl:value-of select="config/predefined"/></td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </tr>
                                    <tr>
                                        <td>Rozli�en�</td>
                                        <td><xsl:value-of select="config/resolution"/></td>
                                    </tr>
                                    <tr>
                                        <td>Verze directx</td>
                                        <td><xsl:value-of select="config/directx"/></td>
                                    </tr>
                                    <tr>
                                        <td>Povolit vertik�ln� synchronizaci</td>
                                        <xsl:choose>
                                            <xsl:when test="config/vsync/@enable = 'true'">
                                                <td>Povoleno</td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td>Zak�z�no</td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </tr>
                                    <tr>
                                        <td>Podpora n�zkov�konn�ch pc</td>
                                        <xsl:choose>
                                            <xsl:when test="config/low_pc/@enable = 'true'">
                                                <td>Povoleno</td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td>Zak�z�no</td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </tr>
                                    <tr>
                                        <td>Re�im vyhlazov�n�</td>
                                        <td><xsl:value-of select="config/antialiasing"/></td>
                                    </tr>
                                    <tr>
                                        <td>Kvalita textur</td>
                                        <td><xsl:value-of select="config/texture_quality"/></td>
                                    </tr>
                                    <tr>
                                        <td>Filtrov�n� textur</td>
                                        <td><xsl:value-of select="config/texture_filtering"/></td>
                                    </tr>
                                    <tr>
                                        <td>Kvalita sv�tel</td>
                                        <td><xsl:value-of select="config/light_guality"/></td>
                                    </tr>
                                    <tr>
                                        <td>Verze directx</td>
                                        <td><xsl:value-of select="config/liquid"/></td>
                                    </tr>
                                    <tr>
                                        <td>Hloubka pole</td>
                                        <td><xsl:value-of select="config/depth_of_field"/></td>
                                    </tr>
                                    <tr>
                                        <td>Kvalita st�n�</td>
                                        <td><xsl:value-of select="config/shadows"/></td>
                                    </tr>
                                    <tr>
                                        <td>Vzd�lenost vykreslov�n�</td>
                                        <td><xsl:value-of select="config/range_render"/></td>
                                    </tr>
                                    <tr>
                                        <td>Vzd�lenost vykreslov�n� st�n�</td>
                                        <td><xsl:value-of select="config/range_shadows"/></td>
                                    </tr>
                                    <tr>
                                        <td>Vzd�lenost vykreslov�n� objekt�</td>
                                        <td><xsl:value-of select="config/range_objects"/></td>
                                    </tr>
                                    <tr>
                                        <td>Rozost�en�</td>
                                        <td><xsl:value-of select="config/bloom"/></td>
                                    </tr>
                                    <tr>
                                        <td>Pohybov� rozost�en�</td>
                                        <td><xsl:value-of select="config/motion_blur"/></td>
                                    </tr>
                                    <tr>
                                        <td>Maxim�ln� po�et fps</td>
                                        <td><xsl:value-of select="config/fps/@max_fps"/></td>
                                    </tr>
                                    <tr>
                                        <td>Maxim�ln� po�et fps na pozad�</td>
                                        <td><xsl:value-of select="config/fps/@max_bg_fps"/></td>
                                    </tr>
                                    <tr>
                                        <td>Pou��t nov� modely</td>
                                        <xsl:choose>
                                            <xsl:when test="config/new_models/@allow = 'true'">
                                                <td>Pou��t</td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td>Nepou��t</td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table>
                                    <tr>
                                        <th colspan="2">Ovl�d�n�</th>
                                    </tr>
                                    <tr>
                                        <td>Kl�vesa</td>
                                        <td>Akce</td>
                                    </tr>
                                    <xsl:for-each select="config/key_binding/key">
                                        <tr>
                                            <td><xsl:value-of select="@value"/></td>
                                            <td><xsl:value-of select="."/></td>
                                        </tr>
                                    </xsl:for-each>
                                </table>                                
                            </td>
                        </tr>
                    </table>
                    <h3>Postavy u�ivatele</h3>
                    <table>
                        <tr>
                            <xsl:for-each select="progress/character">
                                <td>
                                    <table>
                                        <tr>
                                            <th colspan="2">Postava</th>
                                        </tr>
                                        <tr>
                                            <td>Jm�no</td>
                                            <td><xsl:value-of select="name"/></td>
                                        </tr>
                                        <tr>
                                            <td>Server</td>
                                            <td><xsl:value-of select="server"/></td>
                                        </tr>
                                        <tr>
                                            <td>Realm</td>
                                            <td><xsl:value-of select="realm"/></td>
                                        </tr>
                                        <tr>
                                            <td>Level</td>
                                            <td><xsl:value-of select="level"/></td>
                                        </tr>
                                        <tr>
                                            <td>Rasa</td>
                                            <td><xsl:value-of select="race"/></td>
                                        </tr>
                                        <tr>
                                            <td>Druh</td>
                                            <td><xsl:value-of select="class"/></td>
                                        </tr>
                                        <tr>
                                            <td>Specializace</td>
                                            <td><xsl:value-of select="specialization"/></td>
                                        </tr>
                                        <tr>
                                            <td>Hodnota vybaven�</td>
                                            <td><xsl:value-of select="item_lvl"/></td>
                                        </tr>
                                        <tr>
                                            <td>Rank PVP realm</td>
                                            <td><xsl:value-of select="rank_realm_pvp"/></td>
                                        </tr>
                                        <tr>
                                            <td>Rank PVE realm</td>
                                            <td><xsl:value-of select="rank_realm_pve"/></td>
                                        </tr>
                                        <tr>
                                            <td>Rank PVP glob�ln�</td>
                                            <td><xsl:value-of select="rank_global_pvp"/></td>
                                        </tr>
                                        <tr>
                                            <td>Rank PVE glob�n�</td>
                                            <td><xsl:value-of select="rank_global_pve"/></td>
                                        </tr>
                                        <tr>
                                            <td>Posledn� pozice</td>
                                            <td><xsl:value-of select="location/@posX"/>:<xsl:value-of select="location/@posY"/></td>
                                        </tr>
                                    </table>
                                </td>
                            </xsl:for-each>
                        </tr>
                    </table>
                    <hr></hr>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
