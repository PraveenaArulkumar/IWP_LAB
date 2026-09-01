<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Product Information</title>

                <style>
                    body {
                        font-family: Arial, sans-serif;
                        background-color: #f2f2f2;
                    }

                    h2 {
                        text-align: center;
                        color: #333333;
                    }

                    table {
                        border-collapse: collapse;
                        width: 70%;
                        margin: 20px auto;
                        background-color: white;
                    }

                    th {
                        background-color: #007bff;
                        color: white;
                        padding: 10px;
                        border: 1px solid black;
                    }

                    td {
                        padding: 10px;
                        text-align: center;
                        border: 1px solid black;
                    }

                    tr:nth-child(even) {
                        background-color: #f2f2f2;
                    }
                </style>
            </head>

            <body>
                <h2>Product Information</h2>

                <table>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Price (₹)</th>
                        <th>Quantity</th>
                    </tr>

                    <xsl:for-each select="products/product">
                        <tr>
                            <td>
                                <xsl:value-of select="id"/>
                            </td>

                            <td>
                                <xsl:value-of select="name"/>
                            </td>

                            <td>
                                ₹<xsl:value-of select="price"/>
                            </td>

                            <td>
                                <xsl:value-of select="quantity"/>
                            </td>
                        </tr>
                    </xsl:for-each>

                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
