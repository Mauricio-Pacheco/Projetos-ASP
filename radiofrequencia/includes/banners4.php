<?php

/********************************************************/
/* NSN Banner Ads                                       */
/* By: NukeScripts Network (webmaster@nukescripts.net)  */
/* http://www.nukescripts.net                           */
/* Copyright � 2000-2005 by NukeScripts Network         */
/********************************************************/

if (stristr($_SERVER['PHP_SELF'], "banners4.php") || stristr($_SERVER['SCRIPT_NAME'], "banners4.php")) {
    Header("Location: ../index.php");
    die();
}

$modname = "Banner_Ads";
get_lang($modname);
require_once("mainfile.php");

global $prefix, $db, $admin, $adminmail, $sitename, $nukeurl;
$testdate = date ("Y-m-d");
$bresult = $db->sql_query("SELECT bid FROM ".$prefix."_nsnba_banners WHERE pid='4' AND active='1'");
$numrows = $db->sql_numrows($bresult);
if ($numrows>0) {
    if ($numrows==1) {
        list ($bannum) = $db->sql_fetchrow($bresult);
    } else if ($numrows>1) {
        $i = 1;
        while (list ($id) = $db->sql_fetchrow($bresult)) {
            $abid[$i] = $id;
            $i++;
        }
        $bannum = $abid[rand(1, $numrows)];
    }
} else {
    $bannum = 0;
}
if (!is_admin($admin)) { $db->sql_query("UPDATE ".$prefix."_nsnba_banners SET impmade=impmade+1 WHERE bid='$bannum'"); }
if ($numrows>0) {
    $bidinfo = $db->sql_fetchrow($db->sql_query("SELECT * FROM ".$prefix."_nsnba_banners WHERE pid='4' AND active='1' AND bid='$bannum'"));
    $cidinfo = $db->sql_fetchrow($db->sql_query("SELECT * FROM ".$prefix."_nsnba_clients WHERE cid='".$bidinfo['cid']."'"));

    if (($bidinfo['imptotal'] <= $bidinfo['impmade']) AND ($bidinfo['imptotal'] != 0)) {
        $db->sql_query("UPDATE ".$prefix."_nsnba_banners SET active='0' WHERE bid='$bannum'");
        $fecha = date("F jS Y, h:iA.");
        $subject  = _BA_BANSTATAT." $sitename";
        $message  = _BA_COMPSTAT." $sitename:\n\n";
        $message .= _BA_CONNME.": ".$cidinfo['name']."\n";
        $message .= _BA_BANNUM.": $bannum\n";
        $message .= _BA_IMGSRC.": $nukeurl/".$bidinfo['imageurl']."\n";
        $message .= _BA_CLKU.": ".$bidinfo['clickurl']."\n\n";
        $message .= _BA_IMPPUR.": ".$bidinfo['imptotal']."\n";
        $message .= _BA_IMPMAD.": ".$bidinfo['impmade']."\n";
        $message .= _BA_CLKS.": ".$bidinfo['clicks']."\n";
        $message .= _BA_REPORTON.": $fecha";
        $from = "$sitename <$adminmail>";
        mail($cidinfo['email'], $subject, $message, "From: $from\nX-Mailer: PHP/" . phpversion());
    }

    if (($testdate > $bidinfo['dateend']) AND ($bidinfo['dateend'] != "0000-00-00")) {
        $db->sql_query("UPDATE ".$prefix."_nsnba_banners SET active='0' WHERE bid='$bannum'");
        $fecha = date("F jS Y, h:iA.");
        $subject  = _BA_BANSTATAT." $sitename";
        $message  = _BA_COMPSTAT." $sitename:\n\n";
        $message .= _BA_CONNME.": ".$cidinfo['name']."\n";
        $message .= _BA_BANNUM.": $bannum\n";
        $message .= _BA_IMGSRC.": $nukeurl/".$bidinfo['imageurl']."\n";
        $message .= _BA_CLKU.": ".$bidinfo['clickurl']."\n\n";
        $message .= _BA_IMPMAD.": ".$bidinfo['impmade']."\n";
        $message .= _BA_CLKS.": ".$bidinfo['clicks']."\n";
        $message .= _BA_STRDTE.": ".$bidinfo['datestr']."\n";
        $message .= _BA_ENDDTE.": ".$bidinfo['dateend']."\n";
        $message .= _BA_REPORTON.": $fecha";
        $from = "$sitename <$adminmail>";
        mail($cidinfo['email'], $subject, $message, "From: $from\nX-Mailer: PHP/" . phpversion());
    }

    if ($bidinfo['flash']==1 AND $bidinfo['code']==0) {
        $tbanners4  = "\n\n<object classid=\"clsid:D27CDB6E-AE6D-11cf-96B8-444553540000\" codebase=\"http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=5,0,0,0\" width='".$bidinfo['width']."' height='".$bidinfo['height']."'>";
        $tbanners4 .= "\n<param name=movie value='images/banners/clicks_h.swf'>";
        $tbanners4 .= "\n<param name=quality value=high>";
        $tbanners4 .= "\n<param name=FlashVars value='imageurl=".$bidinfo['imageurl']."&bid=$bannum'>";
        $tbanners4 .= "\n<embed src='images/banners/clicks_h.swf?imageurl=".$bidinfo['imageurl']."&bid=$bannum' quality=high pluginspage=\"http://www.macromedia.com/shockwave/download/index.cgi?P1_Prod_Version=ShockwaveFlash\" type=\"application/x-shockwave-flash\" width='".$bidinfo['width']."' height='".$bidinfo['height']."'>";
        $tbanners4 .= "\n</embed> ";
        $tbanners4 .= "\n</object>\n\n";
    } elseif ($bidinfo['flash']==0 AND $bidinfo['code']==1) {
        $fp = fopen ($bidinfo['imageurl'], "rb");
        $contents = fread ($fp, filesize($bidinfo['imageurl']));
        fclose ($fp);
        $tbanners4  = "$contents";
    } else {
        $tbanners4  = "<a href='clicks.php?bid=$bannum' target='_blank'><img src='".$bidinfo['imageurl']."' border='0' alt='".$bidinfo['alttext']."' title='".$bidinfo['alttext']."' height='".$bidinfo['height']."' width='".$bidinfo['width']."'></a>";
    }
} else {
    $tbanners4  = "<a href='modules.php?name=$modname'><img src='modules/$modname/images/ban-banner-4.png' border='0' alt='$sitename' title='$sitename'></a>";
}
$bresult3 = $db->sql_query("SELECT bid, datestr FROM ".$prefix."_nsnba_banners WHERE pid='4' AND active='-1'");
$numrows3 = $db->sql_numrows($bresult3);
if ($numrows3>0) {
    while (list ($id, $datestr) = $db->sql_fetchrow($bresult3)) {
        if (($testdate >= $datestr) AND ($datestr != "0000-00-00")) {
            $db->sql_query("UPDATE ".$prefix."_nsnba_banners SET active='1' WHERE bid='$id'");
        }
    }
}

?>
