#!/usr/bin/webif-page "-U /tmp -u 4096"
<?
###################################################################
# Applications page
#
# Description:
#	List and install additional applications.
#
# Author(s) [in order of work date]:	
#	Dmytro Dykhman <dmytro@iroot.ca>
#
# Major revisions:
#
#
# Configuration files referenced:
#   none
#
# TODO:
HEADER="<link rel="stylesheet" type="text/css" href="/themes/active/style-extend.css">
<script type="text/javascript" src="/js/balloontip.js">
</script><script type="text/javascript" src="/js/imgdepth.js">
</script>"

HighLight="class='gradualshine' onMouseover='slowhigh(this)' onMouseout='slowlow(this)'"


if [ "$FORM_page" = "index" ]; then
        
cat <<EOF
<html><body ></body></html>
EOF
elif [ "$FORM_page" = "web" ]; then

cat <<EOF
<html>
<head>
$HEADER
</head>

<body>
<center>
<table width="98%" border="0" cellspacing="1" >

  <tr class='appindex'>
      <td width="20%"><center><a href="" rel="b1"><img src="/images/app.4.jpg" border="0" $HighLight ></a><br>Apache Webserver</center></td>
      <td width="20%"><div align="center"><a href="" rel="b2"><img src="/images/app.6.jpg" border="0" $HighLight ></a><br>FTP Server</div></td>
      <td width="20%"><div align="center"><a href="" rel="b3"><img src="/images/app.7.jpg" border="0" $HighLight ></a><br>MySQL Server</div></td>
      <td width="20%">&nbsp;</td>
      <td width="20%">&nbsp;</td>
  </tr>
  <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td>
  </tr>
</table>
<div id="b1" class="balloonstyle">
Apache Web server 1.3.3 - Powerfull webserver to serve webpages on World Wide Web.
</div>

<div id="b2" class="balloonstyle">
ProFTPD ?.? - Powerfull FTP server for sharing files globally.
</div>

<div id="b3" class="balloonstyle">
MySQL 4.3 - Massive database server
</div>
</center>
</body>
</html>

EOF

elif [ "$FORM_page" = "security" ]; then

cat <<EOF
<html>
<head>
$HEADER
</head>

<body>
<center>
<table width="98%" border="0" cellspacing="1" >
<tr class="appindex">
<td width="20%"><center><a href="" rel="b1"><img src="/images/app.2.jpg" border="0" $HighLight ></a><br>Hydra</center></td>
<td width="20%">&nbsp;</td>
<td width="20%">&nbsp;</td>
<td width="20%">&nbsp;</td>
<td width="20%">&nbsp;</td>
</tr>
<tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</center>
<div id="b1" class="balloonstyle"  style="width: 300px;">
Hydra 4.5 - "Password Brute Force" - attacker for checking weak passwords. Great utility to check your (http,ftp,ssh) services.
</div>
</body>
</html>

EOF

elif [ "$FORM_page" = "network" ]; then

cat <<EOF
<html>
<head>

$HEADER

</head>

<body>
<center>
<table width="98%" border="0" cellspacing="1" >
  <tr class='appindex'>
      <td width="20%"><center><a href="app.samba.sh" rel="b1"><img src="/images/app.10.jpg" border="0" $HighLight></a><br>Samba Client</center></td>
      <td width="20%">&nbsp;</td>
      <td width="20%">&nbsp;</td>
      <td width="20%">&nbsp;</td>
      <td width="20%">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</center>
<div id="b1" class="balloonstyle"  style="width: 200px;">
Samba Client- Allows to map network drive from Windows based file system.
</div>
</body>
</html>

EOF

elif [ "$FORM_page" = "list" ]; then

cat <<EOF

<html>
<head>
</head>

<body >
<table width="90%" border="0" cellpadding="0" cellspacing="0" >
  <tr>
    <td><a href="applications.sh?page=web" target="AppIndex"><img src="/images/app.8.jpg" border="0" ></a></td>
    <td><strong>Web Applications</strong></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><a href="applications.sh?page=security" target="AppIndex"><img src="/images/app.5.jpg" border="0" ></a></td>
    <td><strong>Security Applications</strong></td>
  </tr>
  <tr>
    <td colspan="2">&nbsp;</td>
  </tr>
  <tr>
    <td><a href="applications.sh?page=network" target="AppIndex"><img src="/images/app.9.jpg" border="0" ></a></td>
    <td><strong>Network Applications</strong></td>
  </tr>
</table>
</body>
</html>

EOF

else

. /usr/lib/webif/webif.sh

header "Applications" "List" "<img src=/images/app.jpg align="absmiddle">&nbsp;@TR<<List of Applications>>"

cat <<EOF
<font color="#FF0000">This page is currently in development process. Some features 
may not function. </font> 
<br>
<img src="/images/coming_soon2.jpg" border="0" >

<table width="95%" border="0" cellspacing="1">
  <tr>
    <td width="30%">&nbsp;</td>
    <td width="70%">&nbsp;</td>
  </tr>
  <tr>
    <td><DIV>
<IFRAME SRC="applications.sh?page=list" STYLE="width:100%; height:300px; border:1px dotted #888888;" FRAMEBORDER="0" SCROLLING="NO" name="AppList"></IFRAME>
</DIV>
</td>
    <td><DIV>
<IFRAME SRC="applications.sh?page=index" STYLE="width:90%; height:300px; border:1px dotted #888888;" FRAMEBORDER="0" SCROLLING="NO" name="AppIndex"></IFRAME>
</DIV>
</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
EOF

footer

fi

?>
<!--
##WEBIF:name:Applications:1:<List>
-->
