<%namespace name="h" file="helpers.mako" inheritable="True" />
<!doctype html>
<html class="no-js" lang="en">
<head>
  <%block name="head">
  <meta charset="utf-8">
  <title><%block name="tag_title">${" : ".join([s for s in ['Matt Feifarek', self.attr.title] if s])}</%block></title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="The personal website for Matt Feifarek">

  <link href='//fonts.googleapis.com/css?family=Roboto:700,400,700italic,400italic|Roboto+Condensed:300' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="/css/main.css">
    <%block name="page_style"></%block>
  </%block>
</head>

% if self.attr.pagename:
<body class="${self.attr.pagename.lower()}">
% else:
<body>
% endif
<main>
<%block name="page">
</%block>
</main>
<footer>
<aside>
<%block name="footer">
    <section class="nav">
    <h1>Other Pages:</h1>
    ${self.h.gen_nav(self.attr.pagename)}
    </section>
    <p class="copyright">Copyright &copy; 2015-2021 Matt Feifarek.</p>
    ${h.contact_badges()}
</%block>
</aside>
</footer>
##${h.google_analytics_hook()}
</body>
</html>
