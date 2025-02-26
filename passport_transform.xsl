<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <!-- Match the root of the XML document -->
  <xsl:template match="/">
    <html>
      <head>
        <title>Passport Data</title>
        <link rel="stylesheet" type="text/css" href="passport_transform.css" />
      </head>
      <body>
        <h1>Passport Data</h1>
        <table border="1" cellspacing="0" cellpadding="5">
          <tr>
            <th>Field</th>
            <th>Value</th>
          </tr>
          <tr>
            <td>First Name</td>
            <td>
              <xsl:value-of select="passport/first_name"/>
            </td>
          </tr>
          <tr>
            <td>Last Name</td>
            <td>
              <xsl:value-of select="passport/last_name"/>
            </td>
          </tr>
          <tr>
            <td>Patronymic</td>
            <td>
              <xsl:value-of select="passport/patronymic"/>
            </td>
          </tr>
          <tr>
            <td>Address</td>
            <td>
              <xsl:value-of select="passport/address"/>
            </td>
          </tr>
          <tr>
            <td>ID Number</td>
            <td>
              <xsl:value-of select="passport/id_number"/>
            </td>
          </tr>
          <tr>
            <td>Photo</td>
            <td>
              <img>
                <xsl:attribute name="src">
                  <xsl:value-of select="passport/photo"/>
                </xsl:attribute>
                <xsl:attribute name="alt">
                  Passport Photo
                </xsl:attribute>
              </img>
            </td>
          </tr>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
