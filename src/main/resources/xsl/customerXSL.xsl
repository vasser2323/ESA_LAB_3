<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" omit-xml-declaration="yes"/>
    <xsl:template match="/">
    <div class="topic">
        <div align="center">
            <h1>Customers</h1>
        </div>
    </div>
    <div class="customer-input" align="center" valign="middle" style=" margin-left: 50px;">
        <table border="1" style="margin-top: 5px">
            <tr bgcolor="#CCCCCC">
                <td>
                    <strong>customerId</strong>
                </td>
                <td>
                    <strong>customerName</strong>
                </td>
                <td>
                    <strong>email</strong>
                </td>
                <td>
                    <strong>phoneNumber</strong>
                </td>
                <td>
                    <strong>address</strong>
                </td>
            </tr>
            <xsl:for-each select="ArrayList/item">
                <tr>
                    <td>
                        <xsl:value-of select="customerId"/>
                    </td>
                    <td>
                        <xsl:value-of select="customerName"/>
                    </td>
                    <td>
                        <xsl:value-of select="email"/>
                    </td>
                    <td>
                        <xsl:value-of select="phoneNumber"/>
                    </td>
                    <td>
                        <xsl:value-of select="address"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>
    </div>
        <div align="center">
            <p>
                <b><a href="/api/xsl/creditCard">Credit cards</a></b>
            </p>
        </div>
    </xsl:template>
</xsl:stylesheet>