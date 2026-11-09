<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
  xmlns:html="http://www.w3.org/TR/REC-html40"
  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>XML Sitemap — M_N_Nik (@eminsk) Developer Portal</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <style>
          body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
            background: #080c14;
            color: #e2e8f0;
            margin: 0;
            padding: 30px 20px;
            line-height: 1.6;
          }
          .container {
            max-width: 1100px;
            margin: 0 auto;
          }
          header {
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
            padding-bottom: 20px;
            margin-bottom: 25px;
          }
          h1 {
            color: #00f0ff;
            font-size: 26px;
            margin: 0 0 10px 0;
            display: flex;
            align-items: center;
            gap: 10px;
          }
          p.lead {
            color: #8b9bb4;
            font-size: 14px;
            margin: 0 0 15px 0;
          }
          .badge {
            background: rgba(0, 240, 255, 0.15);
            color: #00f0ff;
            border: 1px solid rgba(0, 240, 255, 0.3);
            padding: 4px 10px;
            border-radius: 20px;
            font-size: 12px;
            font-weight: 600;
          }
          .stats {
            display: flex;
            gap: 15px;
            margin-top: 15px;
          }
          .stat-box {
            background: rgba(255, 255, 255, 0.04);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 8px;
            padding: 10px 16px;
            font-size: 13px;
          }
          .stat-val {
            color: #00ffa3;
            font-weight: bold;
            font-family: monospace;
            font-size: 16px;
          }
          table {
            width: 100%;
            border-collapse: collapse;
            background: rgba(14, 20, 34, 0.75);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 10px;
            overflow: hidden;
            margin-top: 20px;
          }
          th {
            background: rgba(255, 255, 255, 0.06);
            color: #f0f4fc;
            text-align: left;
            padding: 12px 16px;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
          }
          td {
            padding: 12px 16px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.04);
            font-size: 13px;
          }
          tr:hover td {
            background: rgba(0, 240, 255, 0.05);
          }
          a {
            color: #00f0ff;
            text-decoration: none;
            word-break: break-all;
          }
          a:hover {
            color: #fff;
            text-decoration: underline;
          }
          .priority {
            font-family: monospace;
            font-weight: bold;
            color: #00ffa3;
          }
          .freq {
            color: #b070ff;
            font-family: monospace;
          }
          .date {
            color: #8b9bb4;
            font-family: monospace;
          }
          footer {
            margin-top: 30px;
            text-align: center;
            color: #586882;
            font-size: 12px;
            border-top: 1px solid rgba(255, 255, 255, 0.05);
            padding-top: 20px;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <header>
            <h1>
              <span>🗺️</span> XML Sitemap
              <span class="badge">Search Engine &amp; AI Direct Index</span>
            </h1>
            <p class="lead">
              This is the official sitemap for <a href="https://eminsk.github.io/">eminsk.github.io</a>. It is indexed by Google, Yandex, Bing, GPTBot, ClaudeBot, PerplexityBot, and Applebot.
            </p>
            <div class="stats">
              <div class="stat-box">
                Total URLs: <span class="stat-val"><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/></span>
              </div>
              <div class="stat-box">
                Portal: <a href="https://eminsk.github.io/">https://eminsk.github.io/</a>
              </div>
              <div class="stat-box">
                AI Protocol: <a href="https://eminsk.github.io/llms.txt">/llms.txt</a>
              </div>
            </div>
          </header>

          <table>
            <thead>
              <tr>
                <th style="width: 55%;">URL / Resource</th>
                <th style="width: 15%;">Priority</th>
                <th style="width: 15%;">Change Freq</th>
                <th style="width: 15%;">Last Modified</th>
              </tr>
            </thead>
            <tbody>
              <xsl:for-each select="sitemap:urlset/sitemap:url">
                <tr>
                  <td>
                    <a href="{sitemap:loc}">
                      <xsl:value-of select="sitemap:loc"/>
                    </a>
                  </td>
                  <td class="priority">
                    <xsl:value-of select="sitemap:priority"/>
                  </td>
                  <td class="freq">
                    <xsl:value-of select="sitemap:changefreq"/>
                  </td>
                  <td class="date">
                    <xsl:value-of select="sitemap:lastmod"/>
                  </td>
                </tr>
              </xsl:for-each>
            </tbody>
          </table>

          <footer>
            M_N_Nik (@eminsk) Developer Portal • Generated for Search Engines &amp; AI LLMs
          </footer>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
