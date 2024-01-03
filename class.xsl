<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/Bank">
<html>
    <head>
        <title>CLASS ACTIVITY</title>
        <style>
            body{
                background-color: black;
                color:white;
             
            }
            table{
                margin-left:500px;
                box-shadow : 3px 3px 5px 5px white;
            }
            h2{
                margin-left:500px;
                background-color: red;

            }
        </style>
    </head>
    <body>
        <h2>Bank Employees Data</h2>

        <table border="2">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>SALARY</th>
            </tr>

            <xsl:for-each select="employee">
                <tr>
                    <th><xsl:value-of select="id"></xsl:value-of></th>
                    <th><xsl:value-of select="name"></xsl:value-of></th>
                    <th><xsl:value-of select="salary"></xsl:value-of></th>
                </tr>
            </xsl:for-each>
        </table>
    </body>
</html>
</xsl:template>
    
</xsl:stylesheet>
