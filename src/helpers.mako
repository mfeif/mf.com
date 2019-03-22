
<%block name="contact_badges">
<div class="contactbadges">
  <a href="https://github.com/mfeif" target="_blank"><img src="/img/e.badge.github.svg" title="GitHub" alt="Github badge" /></a>
  <a href="https://instagram.com/mfeif" target="_blank"><img src="/img/e.badge.instagram.svg" title="Instagram" alt="Instagram badge" /></a>
  <a href="https://www.linkedin.com/in/mattfeifarek/" target="_blank"><img src="/img/e.badge.linkedin.svg" title="LinkedIn" alt="LinkedIn badge" /></a>
  <a href="https://twitter.com/mattfeifarek" target="_blank"><img class="badge" src="/img/e.badge.twitter.svg" title="Twitter" alt="Twitter badge" /></a>
</div>
</%block>


<%block name="google_analytics_hook">
|
  <script>
    window.ga = function () { ga.q.push(arguments) }; ga.q = []; ga.l = +new Date;
    ga('create', 'UA-59136553-1', 'auto'); ga('send', 'pageview')
  </script>
  <script src="https://www.google-analytics.com/analytics.js" async defer></script>
</%block>

<%def name="gen_nav(current_page)">
<%
  all_pages = {
    'Home': '/',
    'CV': 'cv/',
  }
  remaining_pages = all_pages.copy()
  try:
      remaining_pages.pop(current_page)
  except KeyError:
      pass
%>

<nav>
  <ul>
    % for page, url in remaining_pages.items():
      <li><a href="${url}">${page}</a></li>
    % endfor
  </ul>
</nav>

</%def>