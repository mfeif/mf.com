
<%block name="contact_badges">
<div class="contactbadges">
##  <a href="https://twitter.com/mattfeifarek" target="_blank"><img class="badge" src="/img/e.badge.twitter.svg" title="Twitter" alt="twitter badge" /></a>
##  <a href="http://www.flickr.com/photos/mad_city_bastard/" target="_blank"><img src="/img/e.badge.flickr.svg" title="Flickr" alt="flickr badge" /></a>
  <a href="http://instagram.com/mfeif" target="_blank"><img src="/img/e.badge.instagram.svg" title="Instagram" alt="instagram badge" /></a>
##  <a href="http://twophemera.tumblr.com/" target="_blank"><img src="/img/e.badge.tumblr.svg" title="Tumblr" alt="tumblr badge" /></a>
</div>
</%block>


<%block name="google_analytics_hook">
|
  <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-59136553-1', 'auto');
    ga('send', 'pageview');
  </script>
</%block>

<%def name="gen_nav(current_page)">
<%
  all_pages = {
    'Home': '/',
    'CV': 'cv.html',
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