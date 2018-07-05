<?xml version="1.0"?>
<xsl:stylesheet version="2.0" 
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes" />
  <xsl:template match="gedenk">
    <html>
      <head>
        <meta charset="utf-8"></meta>
        <title><xsl:value-of select="@title"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1"></meta>
        <meta property="og:image" content="https://gebeden.gelovenleren.net/images/03.jpg"></meta>
        <meta property="fb:app_id" content="773525272833857"></meta>
        <meta http-equiv="Content-Security-Policy" content="default-src * data:; style-src * 'unsafe-inline'; script-src * 'unsafe-inline' 'unsafe-eval'"></meta>
        <link rel="stylesheet" type="text/css" href="css/normalize.css"></link>
        <link rel="stylesheet" type="text/css" href="css/webflow.css"></link>
        <link rel="stylesheet" type="text/css" href="css/gedenk.webflow.css"></link>
        <link rel="stylesheet" type="text/css" href="css/gedenk.css"></link>
        <link rel="stylesheet" type="text/css" href="css/stylesheet.css" charset="utf-8"></link>
        <script>
            if (/mobile/i.test(navigator.userAgent)) document.documentElement.className += ' w-mobile';
        </script>
        <link rel="shortcut icon" type="image/x-icon" href="icon.png"></link>
        <link rel="apple-touch-icon-precomposed" sizes="57x57" href="https://gebeden.gelovenleren.net/apple-touch-icon-57x57.png" />
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://gebeden.gelovenleren.net/apple-touch-icon-114x114.png" />
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://gebeden.gelovenleren.net/apple-touch-icon-72x72.png" />
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://gebeden.gelovenleren.net/apple-touch-icon-144x144.png" />
        <link rel="apple-touch-icon-precomposed" sizes="120x120" href="https://gebeden.gelovenleren.net/apple-touch-icon-120x120.png" />
        <link rel="apple-touch-icon-precomposed" sizes="152x152" href="https://gebeden.gelovenleren.net/apple-touch-icon-152x152.png" />
        <link rel="icon" type="image/png" href="https://gebeden.gelovenleren.net/favicon-32x32.png" sizes="32x32" />
        <link rel="icon" type="image/png" href="https://gebeden.gelovenleren.net/favicon-16x16.png" sizes="16x16" />
        <meta name="application-name" content="Gebeden"/>
        <meta name="msapplication-TileColor" content="#FFFFFF" />
        <meta name="msapplication-TileImage" content="https://gebeden.gelovenleren.net/mstile-144x144.png" />
      </head>
      <body>
        <div class="splash"></div>
        <header class="row">
          <div><xsl:value-of select="@title"/></div>
        </header>

        <div class="w-container ruimte boven row"></div>
    
        <xsl:apply-templates/>

        <div class="w-container ruimte beneden row">
          <div class="action-button" id="share"></div>
        </div>

        <footer>
          <div id="mail"><a href="mailto:info@gelovenleren.net">MAIL</a></div>
          <div id="blog"><a href="http://gelovenleren.net/blog/gebeden-app/" target="_system">INFO</a></div>
          <div id="play"><a href="https://play.google.com/store/apps/details?id=net.gelovenleren.gebeden">install ANDROID APP</a></div>
        </footer>
        <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/webflow.js"></script>
        <script type="text/javascript" src="js/gedenk.js"></script>
        <script type="text/javascript" src="js/TweenLite.min.js"></script>
        <script type="text/javascript" src="js/ScrollToPlugin.min.js"></script>
        <script type="text/javascript" src="js/CSSPlugin.min.js"></script>
        <!-- Go to www.addthis.com/dashboard to customize your tools -->
      </body>
    </html>
  </xsl:template>

  <xsl:template match="s1">
    <div class="w-container item row">
      <h1 class="init" id="{@id}"><span><xsl:value-of select="@title"/></span></h1>
      <div class="toc">

        <xsl:apply-templates/>

      </div>
    </div>
  </xsl:template>

  <xsl:template match="s2">
    <div class="w-container item">
      <h2 class="init" id="{@id}"><span><xsl:value-of select="@title"/></span></h2>
      <div class="content init">
        <div class="w-slider slider" data-animation="slide" data-duration="500" data-infinite="1">
          <div class="w-slider-mask slide-mask">

            <xsl:apply-templates/>

          </div>
          <div class="w-slider-arrow-left slide-arrow">
            <div class="w-icon-slider-left"></div>
          </div>
          <div class="w-slider-arrow-right slide-arrow">
            <div class="w-icon-slider-right"></div>
          </div>
          <div
            class="w-slider-nav w-slider-nav-invert w-round w-hidden-main w-hidden-medium slide-navigator"
            ></div>
        </div>
      </div>
    </div>
  </xsl:template>
  
  <xsl:template match="c">
    <div class="w-slide w-clearfix slide-containeer">

      <xsl:variable name="path" select="concat('html/', @id, '.html')"/>
      <xsl:value-of select="unparsed-text($path)"
                disable-output-escaping="yes"/>

    </div>
  </xsl:template>
      
</xsl:stylesheet>


