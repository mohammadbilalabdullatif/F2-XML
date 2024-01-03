<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    
    <xsl:template match="/class">
        <html>
            <head>
                <title>XSL FILE</title>
                <style>
                    body{
                        background-color: black;
                        color:white;
                    }
                    table{
                        margin-left:350px;
                        box-shadow : 3px 3px 5px 5px crimson;
                    }
                    h2{
                        text-align : center;
                        background-color:purple;
                        padding:20px;
                        letter-spacing: 10px;
                        font-size :30px;
                        font-weigth :bold;
                        text-shadow : 3px 3px 5px 5px crimson;
                    }
                </style>
            </head>
            <body>
                <h2>XSL WORK</h2>

                <table border="2">
                    <tr>
                        <th colspan="">STUDENTS DATA</th>
                    </tr>

                    <tr>
                        <th>NAME</th>
                        <th>AGE</th>
                        <th>NUMBER</th>
                        <th>GRADE</th>
                    </tr>

                    <xsl:for-each select="student">
                        <tr>
                            <th><xsl:value-of select="name"></xsl:value-of></th>
                            <th><xsl:value-of select="age"></xsl:value-of></th>
                            <th><xsl:value-of select="number"></xsl:value-of></th>
                            <th><xsl:value-of select="grade"></xsl:value-of></th>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>