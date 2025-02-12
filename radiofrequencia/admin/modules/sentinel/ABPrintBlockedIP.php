<?php

/********************************************************/
/* NukeSentinel(tm) Universal                           */
/* By: NukeScripts Network (webmaster@nukescripts.net)  */
/* http://www.nukescripts.net                           */
/* Copyright � 2000-2005 by NukeScripts Network         */
/********************************************************/
/* CLIKE, UNION, & Email elements from HackAlert        */
/* HTTPAuth element                                     */
/* By: Raven PHP Scripts                                */
/* http://www.ravenphpscripts.com                       */
/* Copyright � 2004 by Raven PHP Scripts                */
/********************************************************/
/* Scripting Blocker elements                           */
/* By: ChatServ                                         */
/* http://www.nukeresources.com                         */
/* Copyright � 2004 by Nuke Resources                   */
/********************************************************/

echo "<html><head>\n";
$pagetitle = _AB_NUKESENTINEL.": "._AB_PRINTBLOCKEDIPS;
echo "<title>$pagetitle</title>\n";
$theme_Sel = get_theme();
include("themes/$theme_Sel/theme.php");
echo "<style>\n";
include("themes/$theme_Sel/style/style.css");
echo "</style>\n";
echo "</head><body>\n";
echo "<h1 align='center'>$pagetitle</h1>\n";
$totalselected = $db->sql_numrows($db->sql_query("SELECT * FROM ".$prefix."_nsnst_blocked_ips"));
if ($totalselected > 0) {
  echo "<table align='center' border='2' cellpadding='2' cellspacing='2'>\n";
  echo "<tr>\n";
  echo "<td><b>"._AB_IPBLOCKED."</b></td>\n";
  echo "<td align='center'><b>"._AB_COUNTRY."</b></td>\n";
  echo "<td align='center'><b>"._AB_DATE."</b></td>\n";
  echo "<td align='center'><b>"._AB_EXPIRES."</b></td>\n";
  echo "<td align='center'><b>"._AB_REASON."</b></td>\n";
  echo "</tr>\n";
  $result = $db->sql_query("SELECT * FROM ".$prefix."_nsnst_blocked_ips ORDER BY ip_addr");
  while ($getIPs = $db->sql_fetchrow($result)) {
    list($getIPs['reason']) = $db->sql_fetchrow($db->sql_query("SELECT reason FROM ".$prefix."_nsnst_blockers WHERE blocker='".$getIPs['reason']."'"));
    $getIPs['reason'] = str_replace("Abuse-", "", $getIPs['reason']);
    $bdate = date("Y-m-d @ H:i:s", $getIPs['date']);
    $lookupip = str_replace("*", "0", $getIPs['ip_addr']);
    if ($getIPs['expires']==0) { $bexpire = _AB_PERMENANT; } else { $bexpire = date("Y-m-d @ H:i:s", $getIPs['expires']); }
    list($bname) = $db->sql_fetchrow($db->sql_query("SELECT username FROM ".$user_prefix."_users WHERE user_id='".$getIPs['user_id']."'"));
    echo "<tr>\n";
    $qs = htmlentities(base64_decode($getIPs['query_string']));
    $qs = str_replace("%20", " ", $qs);
    $qs = str_replace("/**/", "/* */", $qs);
    $qs = str_replace("&", "<br />&", $qs);
    $ua = $getIPs['user_agent'];
    $ua = htmlentities($ua, ENT_QUOTES);
    echo "<td>".$getIPs['ip_addr']."</td>\n";
    $countrytitleinfo = abget_countrytitle($getIPs['c2c']);
    echo "<td align='center'>".$countrytitleinfo['country']."</td>\n";
    echo "<td align='center'>$bdate</td>\n";
    echo "<td align='center'>$bexpire</td>\n";
    echo "<td align='center'>".$getIPs['reason']."</td>\n";
    echo "</tr>\n";
  }
  echo "</table>\n";
} else {
  echo "<center><b>"._AB_NOIPS."</b></center>\n";
}
echo "</body></html>\n";

?>