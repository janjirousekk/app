<!-- Odkaz na github: https://github.com/janjirousekk/app -->

<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Semestrální projekt - Jan Jiroušek</title>
            </head>
            <body>
                <h1>Nastavení aplikace pro jednotlivé úèty</h1>
                <xsl:for-each select="app/user">
                    <h2> 
                        #<xsl:value-of select="@id"/>&#160;<xsl:value-of select="account/nick"/> 
                    </h2>
                    <h3>Informace o úètu</h3>
                    <div id="account_info">
                        <table>
                            <tr>
                                <td>Email</td>
                                <td><xsl:value-of select="account/email"/></td>
                            </tr>
                            <tr>
                                <td>Úèet vytvoøen</td>
                                <td><xsl:value-of select="account/created"/></td>
                            </tr>
                            <tr>
                                <td>Poslední pøihlášení</td>
                                <td><xsl:value-of select="account/last_login"/></td>
                            </tr>
                        </table>
                    </div>
                    <div id="account_premium_info">
                        <xsl:choose>
                            <xsl:when test="account/premium/@active = 'true'">
                                <table>
                                    <tr>
                                        <th colspan="2">Prémiový úèet</th>
                                    </tr>
                                    <tr>
                                        <td>Úèet aktivní od</td>
                                        <td><xsl:value-of select="account/premium_fromDate"/></td>
                                    </tr>
                                    <tr>
                                        <td>Úèet aktivní do</td>
                                        <td><xsl:value-of select="account/premium_toDate"/></td>
                                    </tr>
                                </table>
                            </xsl:when>
                            <xsl:otherwise>
                                Uživatel nemá aktivní prémiový úèet
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                    <h3>Nastavení aplikace</h3>
                    <table>
                        <tr>
                            <td>
                                <table>
                                    <tr>
                                        <th colspan="2">Zobrazení</th>
                                    </tr>
                                    <tr>
                                        <td>Pøednastavené nastavení</td>
                                        <xsl:choose>
                                            <xsl:when test="config/predefined= 'custom'">
                                                <td>Použít vlastní nastavení</td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td><xsl:value-of select="config/predefined"/></td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </tr>
                                    <tr>
                                        <td>Rozlišení</td>
                                        <td><xsl:value-of select="config/resolution"/></td>
                                    </tr>
                                    <tr>
                                        <td>Verze directx</td>
                                        <td><xsl:value-of select="config/directx"/></td>
                                    </tr>
                                    <tr>
                                        <td>Povolit vertikální synchronizaci</td>
                                        <xsl:choose>
                                            <xsl:when test="config/vsync/@enable = 'true'">
                                                <td>Povoleno</td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td>Zakázáno</td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </tr>
                                    <tr>
                                        <td>Podpora nízkovýkonných pc</td>
                                        <xsl:choose>
                                            <xsl:when test="config/low_pc/@enable = 'true'">
                                                <td>Povoleno</td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td>Zakázáno</td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </tr>
                                    <tr>
                                        <td>Režim vyhlazování</td>
                                        <td><xsl:value-of select="config/antialiasing"/></td>
                                    </tr>
                                    <tr>
                                        <td>Kvalita textur</td>
                                        <td><xsl:value-of select="config/texture_quality"/></td>
                                    </tr>
                                    <tr>
                                        <td>Filtrování textur</td>
                                        <td><xsl:value-of select="config/texture_filtering"/></td>
                                    </tr>
                                    <tr>
                                        <td>Kvalita svìtel</td>
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
                                        <td>Kvalita stínù</td>
                                        <td><xsl:value-of select="config/shadows"/></td>
                                    </tr>
                                    <tr>
                                        <td>Vzdálenost vykreslování</td>
                                        <td><xsl:value-of select="config/range_render"/></td>
                                    </tr>
                                    <tr>
                                        <td>Vzdálenost vykreslování stínù</td>
                                        <td><xsl:value-of select="config/range_shadows"/></td>
                                    </tr>
                                    <tr>
                                        <td>Vzdálenost vykreslování objektù</td>
                                        <td><xsl:value-of select="config/range_objects"/></td>
                                    </tr>
                                    <tr>
                                        <td>Rozostøení</td>
                                        <td><xsl:value-of select="config/bloom"/></td>
                                    </tr>
                                    <tr>
                                        <td>Pohybové rozostøení</td>
                                        <td><xsl:value-of select="config/motion_blur"/></td>
                                    </tr>
                                    <tr>
                                        <td>Maximální poèet fps</td>
                                        <td><xsl:value-of select="config/fps/@max_fps"/></td>
                                    </tr>
                                    <tr>
                                        <td>Maximální poèet fps na pozadí</td>
                                        <td><xsl:value-of select="config/fps/@max_bg_fps"/></td>
                                    </tr>
                                    <tr>
                                        <td>Použít nové modely</td>
                                        <xsl:choose>
                                            <xsl:when test="config/new_models/@allow = 'true'">
                                                <td>Použít</td>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <td>Nepoužít</td>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table>
                                    <tr>
                                        <th colspan="2">Ovládání</th>
                                    </tr>
                                    <tr>
                                        <td>Klávesa</td>
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
                    <h3>Postavy uživatele</h3>
                    <table>
                        <tr>
                            <xsl:for-each select="progress/character">
                                <td>
                                    <table>
                                        <tr>
                                            <th colspan="2">Postava</th>
                                        </tr>
                                        <tr>
                                            <td>Jméno</td>
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
                                            <td>Hodnota vybavení</td>
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
                                            <td>Rank PVP globální</td>
                                            <td><xsl:value-of select="rank_global_pvp"/></td>
                                        </tr>
                                        <tr>
                                            <td>Rank PVE globání</td>
                                            <td><xsl:value-of select="rank_global_pve"/></td>
                                        </tr>
                                        <tr>
                                            <td>Poslední pozice</td>
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
