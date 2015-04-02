<%namespace name="h" file="_helpers.mako" inheritable="True" />
---!
  title = ""
  page = ""

<!DOCTYPE html>
<html lang="en">
  <head> 
  <%block name="head">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta name="description" content="The personal website for Matt Feifarek">
    <title><%block name="tag_title">${" : ".join([s for s in ['Matt Feifarek', self.attr.title] if s])}</%block></title>

    //     <link href="##" type="application/xml" rel="sitemap" title="Sitemap">

    <link href='http://fonts.googleapis.com/css?family=Roboto:700,400,700italic,400italic|Roboto+Condensed:300' rel='stylesheet' type='text/css'>

    <link href="/favicon.ico" rel="shortcut icon" />
    <link rel="stylesheet" href="/css/screen.css">
    <!--[if lt IE 9]>
      <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <%block name="page_style"></%block>
    ${h.google_analytics_hook()}
  </%block>
</head>

- if self.attr.page:
  <body class="${self.attr.page.lower()}">
- else
  <body>

<div id="wrap">
<%block name="page">
</%block>
</div>

<footer>
  <div>
<%block name="footer">

    <b>Other Pages:</b>
    ${self.h.gen_nav(self.attr.page)}

    <p class="copyright">Copyright &copy; 2015 Matt Feifarek.</p>

    ${h.contact_badges()}
</%block>
  </div>
</footer>
</body>
</html>
