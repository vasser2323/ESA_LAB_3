<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <div class="links">
            <div align="center">
                <h1>Credit card</h1>
            </div>
        </div>
        <div class="customer-input" align="center" valign="middle" style=" margin-left: 50px;">
            <table border="1" style="margin-top: 5px">
                <tr bgcolor="#CCCCCC">
                    <td>
                        <strong>card id</strong>
                    </td>
                    <td>
                        <strong>Card Number</strong>
                    </td>
                    <td>
                        <strong>Card holder name</strong>
                    </td>
                    <td>
                        <strong>Expiration Date</strong>
                    </td>
                    <td>
                        <strong>CVV</strong>
                    </td>
                </tr>
                <xsl:for-each select="ArrayList/item">
                    <tr>
                        <td>
                            <xsl:value-of select="cardId"/>
                        </td>
                        <td>
                            <xsl:value-of select="cardNumber"/>
                        </td>
                        <td>
                            <xsl:value-of select="cardHolderName"/>
                        </td>
                        <td>
                            <xsl:value-of select="expirationDate"/>
                        </td>
                        <td>
                            <xsl:value-of select="cvv"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </div>
        <div align="center">
            <p>
                <b><a href="/api/xsl/customer">Customer</a></b>
            </p>
        </div>
    </xsl:template>
</xsl:stylesheet>