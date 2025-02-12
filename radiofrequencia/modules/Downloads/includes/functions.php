<?php

/********************************************************/
/* NSN GR Downloads                                     */
/* By: NukeScripts Network (webmaster@nukescripts.net)  */
/* http://www.nukescripts.net                           */
/* Copyright � 2000-2004 by NukeScripts Network         */
/********************************************************/

function myimage($imgfile) {
    global $module_name;
    $ThemeSel = get_theme();
    if (file_exists("themes/$ThemeSel/images/downloads/$imgfile")) {
        $myimage = "themes/$ThemeSel/images/downloads/$imgfile";
    } else {
        $myimage = "modules/$module_name/images/$imgfile";
    }
    return($myimage);
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function gdget_config($config_name){
    global $prefix, $db;
    $configresult = $db->sql_query("SELECT config_value FROM ".$prefix."_nsngd_config WHERE config_name='$config_name'");
    list($config_value) = $db->sql_fetchrow($configresult);
    return $config_value;
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function gdget_configs(){
    global $prefix, $db;
    $configresult = $db->sql_query("SELECT config_name, config_value FROM ".$prefix."_nsngd_config");
    while (list($config_name, $config_value) = $db->sql_fetchrow($configresult)) {
        $config[$config_name] = $config_value;
    }
    return $config;
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function gdsave_config($config_name, $config_value){
    global $prefix, $db;
    $db->sql_query("UPDATE ".$prefix."_nsngd_config SET config_value='$config_value' WHERE config_name='$config_name'");
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function CrawlLevelR($parentid) {
    global $prefix, $db, $crawler;
    $bresult = $db->sql_query("SELECT parentid FROM ".$prefix."_nsngd_categories WHERE cid='$parentid' ORDER BY title");
    while(list($parentid2)=$db->sql_fetchrow($bresult)){
        array_push($crawler,$parentid2);
        CrawlLevelR($parentid2);
    }
    return $crawler;
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function CrawlLevel($cid) {
    global $prefix, $db, $crawled;
    $bresult = $db->sql_query("SELECT cid FROM ".$prefix."_nsngd_categories WHERE parentid='$cid' ORDER BY title");
    while(list($cid2)=$db->sql_fetchrow($bresult)){
        array_push($crawled,$cid2);
        CrawlLevel($cid2);
    }
    return $crawled;
}

function CoolSize($size) {
    $mb = 1024*1024;
    $gb = $mb*1024;
    if ( $size > $gb ) {
        $mysize = sprintf ("%01.2f",$size/$gb)." "._GB;
    } elseif ( $size > $mb ) {
        $mysize = sprintf ("%01.2f",$size/$mb)." "._MB;
    } elseif ( $size >= 1024 ) {
        $mysize = sprintf ("%01.2f",$size/1024)." "._KB;
    } else {
        $mysize = $size." "._BYTES;
    }
    return $mysize;
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function CoolDate($date) {
    global $dl_config;
    $mydate = date ($dl_config['dateformat'], strtotime ("$date"));
    return $mydate;
}

// Copyright (c) 2003 --- Michael K. Squires ---
// Can not be reproduced in whole or in part without
// written consent from Michael K. Squires
function getcategoryinfo($catID){
    global $prefix, $db, $user;
    $category = array($catID);
    $cats_detected = 0;
    $downloads_detected = 0;
    while(count($category) != 0){
        sort($category, SORT_STRING);
        reset($category);
        $curr_category = end($category);
        $dresult = $db->sql_query("SELECT * FROM ".$prefix."_nsngd_CWSU0  x��Z	XS��?7!�d�U��/	"A@YEQ� H	���
WT�����u�(u��R?��V7q������$@�V}����}_���sΙߝ;7s�A��) =x�pg�M1�T!�8F ��Xa��P�<qL؄�@�	f�	��cb>��yQ��$B� A$���FA$����"�C�$^�|>���qQ!ba�󢹱K�琀f9�cT, G�$�>t2g$!')�B��PK]���(�9�K��Pz|G6�ЁB��(]ßP���hB�SK)�����j��B�3���6]K�P��l`����B��,��sa���R����C��VQ|��+.�����v�ݺ���h���H�E�#�"�PQZ�D}���1W��ҫ���H,�@<?V�67qB� R��X� ��/F�|U@ɋ�ź);e��X��wNc&�>0�+�d��F�|�;��(D
��P��u2I���Tu��A <it��QC� ��UJ\0���j�uF0��z�B�ф�6]Ga��0��ϡ��@�y���2'D�f����q��|ȡ݀�C% ����	�t33���"��tm3�s������Y�?����LUv3C�H)�|3	�p���Ӌ����5��Ԥv�$}D��E��M����K]��c�w�����;5	0W�f�k�!��Ɲ �� ��������� S`��0c�at���X���HY'+q��X��Qk�Q4>�S��Lx�Oip�l�#��>A �&e�o��h-`��t-CK�D_WGG�������¶�����]�!.v�,G+���a#F�m�<��s�!�F� �`--]]3}}��#���3X�����Ӟ F"S�4�&C)��	#�I2�JA����@1���r����iX�c����F�s��ap���	K5F�&�Lm���X�:l��X/��8ߐ���&�M�ŏ�#�-�_�p���e�W�\��:mC���M�l��^�c��{
��p�������t��_Ε����|���7n�z��QM��'�O�44���]Ss�{"/[�����P^$
�L� ��H	
�ʕ��#H�7���[
�9f���g4m܃_F$T1���ؾ!RSd�y�-�e֑Xg^7z/ׇDZ��i0�c�X2f$�l��@��!�l�� ���y�@��O���e�a��#V��&x���Q,����\7��t�͍�P�l�鑙8l�)���
&/�2�\��$\�	��zn�K�c����n�����k��uPRً�j���!�8���"���>���zvs�$9u�����,�+�������He�_�I�2�%o&Jf��02
ɳpH+*U��u���IMWn��j�|�y��q0�W��Nj�����Ɋ���d��ȝ�(4�&��:ZA�$��G��B�FkM�ʷM����v�[-�b�F��>�����uf:�k�:��^?�=kT���W��߷x�D�2?U�L�rVD�
���� ��S��ny}K�wr�IK+�	��*c�_4���`Q����u]�j��oz��2Ҿ��S��T]y�,�ͭ�W�϶��P�;�T�iH:����U�YV����Ѿ1���(���ߐ���Q�TKk�-�J��N���6;��ܣJ6�1�Kn��_H�f�0���k���`�����m+|�\��蹲OH��}��Y�em�Q�#S�i��t�� Q�$������Ma���uܷ�����T�9�>�2���)(gbv�T�Pj!���l!�U
E��������
��N��o�)�g5�v�8X>���a��Z�r�m(d�o���M(�_Z^^b��z�5Nb&I=g��4͕?�+]ޚ���=�a{&���3�wd���$N�[yG�nAx�����N��8<��ֺ��ے�������p8�1�4W/&Ddy�I�O����?�&�������&��m������'N�:�:m�,XF%3#61#����]���"OＶT��	��ڃù�G[I�&=�a��#tPgF5���dU�sDij�9䓙iPf�=\�ۗ�If�I]#�ZܤѺ�mOG�ǍO�a�qaS�|̾2y!��EEa'(oH�ڷ��^	�?&��l��I�uZe)����g��|8�X���R�iZKp8wP�v@1��7������((J����Ĥ�������+�1&�/a36IŒc�*�|q�K&�pi��VE�!(�&u��'�ߣ[�8Լ�s\ɑ8��4_�%���8Z^�L�s_�����W��3�ӄN8KQ[٧�˂%����W$�^ޖ�dg��4y�-rݹ1]i1{� :�*ם�_$�'��a�4[}��v�G�bЉ�L�N��pu��§�R�s)е�����u�����U��ź��/%��ẽ�%���f��OU�T���G�Zn�#�
P�1ї�H��ʵ��6~��S�בB��V�P���L),@qH��hs��p���Vq9.�UU�=B�J���m�~N�n;��ɸ�s.:�������c�{߄��U�k�/�vj��7/9[�+�Q��Q �
@�+ʣ�����XT�̿�m^�~?�mY�����,�Yb�IV�N�z�w���V�R��'9�Z�u(s0c|H��u����w�����0#�C�W�2������=$My=Z�qpR_ɽ����n�xl�/yF�pؼM3�c�	�z*�힒I�E�Iy�C��?�!q��q��և�=�+����)��ŋ/>�Ͳ�H�����%�inNG�xo�%8��:��\��j����_i������ߧ�7ۈ�|}+�Bu��m��=ۊ���GZ�I6���=U"����.�xéH��o�=W�|i���׻���'5��M�Ze;f���c�~�#��M��MK��ȼ�}v��D����l��V#��C��(�_�����]������N�ƖVg��g�����	7�I*'���VZ�N�)M�7,	=.�
�����pV�G��y-A%u�mE��Һb�9��s�l�q�o��Zvs� �y:�:W�E�[5J=D_�����8��~�Ux�U^mDϴ1W�\ښ,�{����b��B�<Q�O���A�қ������>^�u��
ɫ�m+ ��f�A^#R����<��d2��(�k�2�6���_����ߔ� � ������$��*bz`��F�dV`��<<qnE�>,���0dR�B�d�%��fG<`����Y�v�B٩���l<�E�dN ����3;�`4�/V1�D��T��],KysR���|\�S�C�y�ҞԮ�}��@�~�,�t�� ]�Uh��=�3`����
�x#C���\(h��|RS��	[I�Cˏ�����RՏ�TZ�hv����??�ώ@�=�n�| �Ϗ@��#0h�@�[�]"��%j{�Lt��� �q�7\��u���#�+K�}N#��H�'r� d �m�2!fr 	Q4ȖCJyp`��1#�<{���0$f��$~'�( ���U�ê�΁���w`� C`(�Ha�p���Æ��0���$z����\�|�`�'8D?}�������J=�E�����*���$�;$B�p�NV'(�U����]��T'ꄖ��L���:�"N�]��Qz1ME����0 у X*�'Aث&A��C��QF�l,��-��"���qQ�ba��ܨH7{U���۷J�����c�sc���q�	�#rg���>��������cY�[��F�����B� ���f�D=L�;���_�0���S�z+Z�\�.Ɵ����.�������Spa�����._.�f+j{!��Ɋ7ڔ�2�����&�Toe��T��4�|�Qp�׀��Ѧ�vT)����Zh�e
��lb�l]�[Ҟ��x����I��v��L��%�?B(�)6"$=эI2HpB�2�v�!Z%��K`�����ˌ�%�.�G!c)wh4�U��$T�Tիfl����z�zq����y�so%K��xn�z�KŁ��c�u_�c��w-�+���]��ount<=14 && $count>7) { echo "<img align='middle' src='$myimage' alt='"._NEWLAST2WEEKS."' title='"._NEWLAST2WEEKS."'>"; }
        }
        $count++;
        $startdate = (time()-(86400 * $count));
    }
}

function newcategorygraphic($cat) {
    global $prefix, $db, $module_name;
    $cat = intval($cat);
    $newresult = $db->sql_query("SELECT date FROM ".$prefix."_nsngd_downloads WHERE cid=$cat ORDER BY date DESC LIMIT 1");
    list($time)=$db->sql_fetchrow($newresult);
    echo "&nbsp;";
    setlocale (LC_TIME, $locale);
    ereg ("([0-9]{4})-([0-9]{1,2})-([0-9]{1,2}) ([0-9]{1,2}):([0-9]{1,2}):([0-9]{1,2})", $time, $datetime);
    $datetime = strftime(""._LINKSDATESTRING."", mktime($datetime[4],$datetime[5],$datetime[6],$datetime[2],$datetime[3],$datetime[1]));
    $datetime = ucfirst($datetime);
    $startdate = time();
    $count = 0;
    while ($count <= 14) {
        $daysold = date("d-M-Y", $startdate);
        if ("$daysold" == "$datetime") {
            $myimage = myimage("new_01.png");
            if ($count<=1) { echo "<img align='middle' src='$myimage' alt='"._DCATNEWTODAY."' title='"._DCATNEWTODAY."'>"; }
            $myimage = myimage("new_03.png");
            if ($count<=3 && $count>1) { echo "<img align='middle' src='$myimage' alt='"._DCATLAST3DAYS."' title='"._DCATLAST3DAYS."'>"; }
            $myimage = myimage("new_07.png");
            if ($count<=7 && $count>3) { echo "<img align='middle' src='$myimage' alt='"._DCATTHISWEEK."' title='"._DCATTHISWEEK."'>"; }
            $myimage = myimage("new_14.png");
            if ($count<=14 && $count>7) { echo "<img align='middle' src='$myimage' alt='"._DCATLAST2WEEKS."' title='"._DCATLAST2WEEKS."'>"; }
        }
        $count++;
        $startdate = (time()-(86400 * $count));
    }
}

function popgraphic($hits) {
    global $module_name, $dl_config;
    $hits = intval($hits);
    $myimage = myimage("popular.png");
    if ($hits >= $dl_config['popular']) { echo "&nbsp;<img align='middle' src='$myimage' alt='"._POPULAR."' title='"._POPULAR."'>"; }
}

function dladminmain() {
    global $module_name, $prefix, $db, $textcolor1, $bgcolor1, $bgcolor2;
    $brokendownloads = $db->sql_numrows($db->sql_query("SELECT * FROM ".$prefix."_nsngd_mods WHERE brokendownload='1'"));
    $modrequests = $db->sql_numrows($db->sql_query("SELECT * FROM ".$prefix."_nsngd_mods WHERE brokendownload='0'"));
    $newdownloads = $db->sql_numrows($db->sql_query("SELECT * FROM ".$prefix."_nsngd_new"));
    OpenTable();
    echo "<table align='center' border='0' cellpadding='2' cellspacing='2' width='100%'>\n";
    echo "<tr>\n";
    echo "<td align='center' width='25%'><b>"._DOWNLOADS."</b></td>\n";
    echo "<td align='center' width='25%'><b>"._CATEGORIES."</b></td>\n";
    echo "<td align='center' width='25%'><b>"._EXTENSIONS."</b></td>\n";
    echo "<td align='center' width='25%'><b>"._OTHERS."</b></td>\n";
    echo "</tr>\n";
    echo "<tr>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=DownloadAdd'>"._ADDDOWNLOAD."</a></td>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=CategoryAdd'>"._ADDCATEGORY."</a></td>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=ExtensionAdd'>"._ADDEXTENSION."</a></td>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=DLConfig'>"._DOWNCONFIG."</a></td>\n";
    echo "</tr>\n";
    echo "<tr>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=Downloads'>"._DOWNLOADSLIST."</a></td>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=Categories'>"._CATEGORIESLIST."</a></td>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=Extensions'>"._EXTENSIONSLIST."</a></td>\n";
    echo "<td align='center' width='25%'><a href='admin.php'>"._MAINADMIN."</a></td>\n";
    echo "</tr>\n";
    echo "<tr>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=DownloadCheck'>"._VALIDATEDOWNLOADS."</a></td>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=CategoryTransfer'>"._CATTRANS."</a></td>\n";
    echo "<td align='center' width='25%'>&nbsp;</td>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=DownloadBroken'>"._BROKENREP."</a> ($brokendownloads)</td>\n";
    echo "</tr>\n";
    echo "<tr>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=FilesizeCheck'>"._VALIDATESIZES."</a></td>\n";
    echo "<td align='center' width='25%'>&nbsp;</td>\n";
    echo "<td align='center' width='25%'>&nbsp;</td>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=DownloadModifyRequests'>"._MODREQUEST."</a> ($modrequests)</td>\n";
    echo "</tr>\n";
    echo "<tr>\n";
    echo "<td align='center' width='25%'>&nbsp;</td>\n";
    echo "<td align='center' width='25%'>&nbsp;</td>\n";
    echo "<td align='center' width='25%'>&nbsp;</td>\n";
    echo "<td align='center' width='25%'><a href='modules.php?name=$module_name&amp;file=admin&amp;op=DownloadNew'>"._WAITINGDOWNLOADS."</a> ($newdownloads)</td>\n";
    echo "</tr>\n";
    echo "</table>\n";
    CloseTable();
}

function convertorderbyin($orderby) {
    if ($orderby == "titleA") $orderby = "title ASC";
    if ($orderby == "dateA") $orderby = "date ASC";
    if ($orderby == "hitsA") $orderby = "hits ASC";
    if ($orderby == "titleD") $orderby = "title DESC";
    if ($orderby == "dateD") $orderby = "date DESC";
    if ($orderby == "hitsD") $orderby = "hits DESC";
    return $orderby;
}

function convertorderbytrans($orderby) {
    if ($orderby == "hits ASC") $orderbyTrans = _POPULARITY1;
    if ($orderby == "hits DESC") $orderbyTrans = _POPULARITY2;
    if ($orderby == "title ASC") $orderbyTrans = _TITLEAZ;
    if ($orderby == "title DESC") $orderbyTrans = _TITLEZA;
    if ($orderby == "date ASC") $orderbyTrans = _DDATE1;
    if ($orderby == "date DESC") $orderbyTrans = _DDATE2;
    return $orderbyTrans;
}

function convertorderbyout($orderby) {
    if ($orderby == "title ASC") $orderby = "titleA";
    if ($orderby == "date ASC") $orderby = "dateA";
    if ($orderby == "hits ASC") $orderby = "hitsA";
    if ($orderby == "title DESC") $orderby = "titleD";
    if ($orderby == "date DESC") $orderby = "dateD";
    if ($orderby == "hits DESC") $orderby = "hitsD";
    return $orderby;
}

function menu($maindownload) {
    global $module_name;
    OpenTable();
    $myimage = myimage("logo.png");
    echo "<center><a href='modules.php?name=$module_name'><img src='$myimage' border='0' alt='' title=''></a></center><br>\n";
    SearchForm();
    echo "<br><center><font class='content'>[ ";
    if ($maindownload>0) { echo "<a href='modules.php?name=$module_name'>"._DOWNLOADSMAIN."</a> | "; }
    echo "<a href='modules.php?name=Submit_Downloads'>"._DL_ADD."</a>";
    echo " | <a href='modules.php?name=$module_name&amp;op=DownloadNews'>"._NEW."</a>";
    echo " | <a href='modules.php?name=$module_name&amp;op=MostPopular'>"._POPULAR."</a>";
    echo " ]</font></center>\n";
    CloseTable();
    echo "<br>\n";
    OpenTable();
    echo "<table align='center' cellpadding='2' cellspacing='2' border='0' width='100%'>\n";
    echo "<tr><td align='center' colspan='3'><b>"._DL_LEGEND."</b></td></tr>\n";
    echo "<tr>\n";
    $myimage = myimage("new_01.png");
    echo "<td align='center' width='33%'><img align='middle' src='$myimage' alt='' title=''> = "._NEWTODAY."</td>\n";
    $myimage = myimage("new_03.png");
    echo "<td align='center' width='34%'><img align='middle' src='$myimage' alt='' title=''> = "._NEWLAST3DAYS."</td>\n";
    $myimage = myimage("new_07.png");
    echo "<td align='center' width='33%'><img align='middle' src='$myimage' alt='' title=''> = "._NEWTHISWEEK."</td>\n";
    echo "</tr>\n";
    echo "<tr>\n";
    $myimage = myimage("new_14.png");
    echo "<td align='center' width='33%'><img align='middle' src='$myimage' alt='' title=''> = "._NEWLAST2WEEKS."</td>\n";
    echo "<td align='center' width='34%'>&nbsp;</td>\n";
    $myimage = myimage("popular.png");
    echo "<td align='center' width='33%'><img align='middle' src='$myimage' alt='' title=''> = "._POPULAR."</td>\n";
    echo "</tr>\n";
    echo "</table>\n";
    CloseTable();
}

function SearchForm() {
    global $module_name, $query;
    echo "<table border='0' cellspacing='0' cellpadding='0' align='center'>\n";
    echo "<form action='modules.php?name=$module_name&amp;op=search&amp;query=$query' method='post'>\n";
    echo "<tr><td><font class='content'><input type='text' size='25' name='query' value='$query'> <input type='submit' value='"._DL_SEARCH."'></td></tr>\n";
    echo "</form>\n";
    echo "</table>\n";
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function showlisting($lid) {
    global $module_name, $admin, $db, $prefix, $user, $dl_config;
    $lid = intval($lid);
    $result = $db->sql_query("SELECT * FROM ".$prefix."_nsngd_downloads WHERE lid=$lid");
    $lidinfo = $db->sql_fetchrow($result);
    OpenTable();
    $priv = $lidinfo['sid'] - 2;
    if (($lidinfo['sid'] == 0) || ($lidinfo['sid'] == 1 AND is_user($user))  || ($lidinfo['sid'] == 2 AND is_admin($admin)) || ($lidinfo['sid'] > 2 AND in_group($priv)) || $dl_config['show_download'] == '1') {
        $lidinfo['title'] = stripslashes($lidinfo['title']);
        $lidinfo['description'] = stripslashes($lidinfo['description']);
        if (is_admin($admin)) {
            $myimage = myimage("edit.png");
            echo "<a href='modules.php?name=$module_name&amp;file=admin&amp;op=DownloadModify&amp;lid=$lid' target='$lid'><img align='middle' src='$myimage' border='0' alt='"._DL_EDIT."'></a>&nbsp;";
        } else {
            $myimage = myimage("show.png");
            echo "<img align='middle' src='$myimage' border='0' alt=''>&nbsp;";
        }
        echo "<a href='modules.php?name=$module_name&amp;op=getit&amp;lid=$lid'><b>".$lidinfo['title']."</b></a>";
        newdownloadgraphic($datetime, $lidinfo['date']);
        popgraphic($lidinfo['hits']);
        echo "<br>";
        if ($lidinfo['sid'] == 0) {
            $who_view = _DL_ALL;
        } elseif ($lidinfo['sid'] == 1) {
            $who_view = _DL_USERS;
        } elseif ($lidinfo['sid'] == 2) {
            $who_view = _DL_ADMIN;
        } elseif ($lidinfo['sid'] >2) {
            $newView = $lidinfo['sid'] - 2;
            list($who_view) = $db->sql_fetchrow($db->sql_query("SELECT gname FROM ".$prefix."_nsngr_groups WHERE gid=$newView"));
            $who_view = $who_view." "._DL_ONLY;
        }
        echo "<b>"._DL_PERM.":</b> $who_view<br>\n";
        echo "<b>"._VERSION.":</b> ".$lidinfo['version']."<br>\n";
        echo "<b>"._FILESIZE.":</b> ".CoolSize($lidinfo['filesize'])."<br>";
        echo "<b>"._ADDEDON.":</b> ".CoolDate($lidinfo['date'])."<br>\n";
        echo "<b>"._DOWNLOADS.":</b> ".$lidinfo['hits']."<br>";
        echo "<b>"._HOMEPAGE.":</b> ";
        if ($lidinfo['homepage'] == "" || $lidinfo['homepage'] == "http://") {
            echo _DL_NOTLIST;
        } else {
            echo "<a href='".$lidinfo['homepage']."' target='new'>".$lidinfo['homepage']."</a>";
        }
    } else {
        restricted2($lidinfo['sid']);
    }
    CloseTable();
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function showresulting($lid) {
    global $module_name, $admin, $db, $prefix, $user, $dl_config;
    $lid = intval($lid);
    $lidinfo = $db->sql_fetchrow($db->sql_query("SELECT * FROM ".$prefix."_nsngd_downloads WHERE lid=$lid"));
    OpenTable();
    $priv = $lidinfo['sid'] - 2;
    if (($lidinfo['sid'] == 0) || ($lidinfo['sid'] == 1 AND is_user($user))  || ($lidinfo['sid'] == 2 AND is_admin($admin)) || ($lidinfo['sid'] > 2 AND in_group($priv)) || $dl_config['show_download'] == '1') {
        $lidinfo['title'] = stripslashes($lidinfo['title']);
        $lidinfo['description'] = stripslashes($lidinfo['description']);
        if (is_admin($admin)) {
            $myimage = myimage("edit.png");
            echo "<a href='modules.php?name=$module_name&amp;file=admin&amp;op=DownloadModify&amp;lid=$lid' target='$lid'><img align='middle' src='$myimage' border='0' alt='"._DL_EDIT."' title='"._DL_EDIT."'></a>&nbsp;";
        } else {
            $myimage = myimage("show.png");
            echo "<img align='middle' src='$myimage' border='0' alt='' title=''>&nbsp;";
        }
        echo "<a href='modules.php?name=$module_name&amp;op=getit&amp;lid=$lid'><b>".$lidinfo['title']."</b></a>";
        newdownloadgraphic($datetime, $lidinfo['date']);
        popgraphic($lidinfo['hits']);
        echo "<br>\n";
        if ($lidinfo['sid'] == 0) {
            $who_view = _DL_ALL;
        } elseif ($lidinfo['sid'] == 1) {
            $who_view = _DL_USERS;
        } elseif ($lidinfo['sid'] == 2) {
            $who_view = _DL_ADMIN;
        } elseif ($lidinfo['sid'] >2) {
            $newView = $lidinfo['sid'] - 2;
            list($who_view) = $db->sql_fetchrow($db->sql_query("SELECT gname FROM ".$prefix."_nsngr_groups WHERE gid=$newView"));
            $who_view = $who_view." "._DL_ONLY;
        }
        echo "<b>"._DL_PERM.":</b> $who_view<br>\n";
        echo "<b>"._VERSION.":</b> ".$lidinfo['version']."<br>\n";
        echo "<b>"._FILESIZE.":</b> ".CoolSize($lidinfo['filesize'])."<br>\n";
        echo "<b>"._ADDEDON.":</b> ".CoolDate($lidinfo['date'])."<br>\n";
        echo "<b>"._DOWNLOADS.":</b> ".$lidinfo['hits']."<br>\n";
        echo "<b>"._HOMEPAGE.":</b> ";
        if ($lidinfo['homepage'] == "" || $lidinfo['homepage'] == "http://") {
            echo _DL_NOTLIST."<br>\n";
        } else {
            echo "<a href='".$lidinfo['homepage']."' target='new'>".$lidinfo['homepage']."</a><br>\n";
        }
        $result2 = $db->sql_query("SELECT * FROM ".$prefix."_nsngd_categories WHERE cid='".$lidinfo['cid']."'");
        $cidinfo = $db->sql_fetchrow($result2);
        $cidinfo['title'] = "<a href=modules.php?name=$module_name&amp;cid=".$lidinfo['cid'].">".$cidinfo['title']."</a>";
        $cidinfo['title'] = getparentlink($cidinfo['parentid'], $cidinfo['title']);
        echo "<b>"._CATEGORY.":</b> ".$cidinfo['title']."\n";
    } else {
        restricted2($lidinfo['sid']);
    }
    CloseTable();
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function pagenums_admin($op, $totalselected, $perpage, $max) {
    $pagesint = ($totalselected / $perpage);
    $pageremainder = ($totalselected % $perpage);
    if ($pageremainder != 0) {
        $pages = ceil($pagesint);
        if ($totalselected < $perpage) { $pageremainder = 0; }
    } else {
        $pages = $pagesint;
    }
    if ($pages != 1 && $pages != 0) {
        $counter = 1;
        $currentpage = ($max / $perpage);
        echo "<table border='0' cellpadding='2' cellspacing='2' width='100%'>\n";
        echo "<tr><form action='admin.php?op=$op' method='post'>\n";
        echo "<td align='right'><b>"._DL_SELECTPAGE.": </b><select name='min' onChange='top.location.href=this.options[this.selectedIndex].value'>\n";
        while ($counter <= $pages ) {
            $cpage = $counter;
            $mintemp = ($perpage * $counter) - $perpage;
            if ($counter == $currentpage) {
                echo "<option selected>$counter</option>\n";
            } else {
                echo "<option value='admin.php?op=$op&amp;min=$mintemp";
                if ($query > "") { echo "&amp;query=$query"; }
                if (isset($cid)) { echo "&amp;cid=$cid"; }
                echo "'>$counter</option>\n";
            }
            $counter++;
        }
        echo "</select><b> "._DL_OF." $pages "._DL_PAGES."</b></td>\n</form>\n</tr>\n";
        echo "</table>\n";
    }
}

// Copyright (c) 2003 --- NukeScripts Network ---
// Can not be reproduced in whole or in part without
// written consent from NukeScripts Network CEO
function pagenums($cid, $query, $orderby, $op, $totalselected, $perpage, $max) {
    global $module_name;
    $pagesint = ($totalselected / $perpage);
    $pageremainder = ($totalselected % $perpage);
    if ($pageremainder != 0) {
        $pages = ceil($pagesint);
        if ($totalselected < $perpage) { $pageremainder = 0; }
    } else {
        $pages = $pagesint;
    }
    if ($pages != 1 && $pages != 0) {
        $counter = 1;
        $currentpage = ($max / $perpage);
        echo "<table border='0' cellpadding='2' cellspacing='2' width='100%'>\n";
        echo "<tr><form action='modules.php?name=$module_name' method='post'>\n";
        echo "<input type='hidden' name='file' value='admin'>\n";
        echo "<td align='right'><b>"._DL_SELECTPAGE.": </b><select name='min' onChange='top.location.href=this.options[this.selectedIndex].value'>\n";
        while ($counter <= $pages ) {
            $cpage = $counter;
            $mintemp = ($perpage * $counter) - $perpage;
            if ($counter == $currentpage) {
                echo "<option selected>$counter</option>\n";
            } else {
                echo "<option value='modules.php?name=$module_name&amp;min=$mintemp";
                if ($op > "" ) { echo "&amp;op=$op"; }
                if ($query > "") { echo "&amp;query=$query"; }
                if (isset($cid)) { echo "&amp;cid=$cid"; }
                echo "'>$counter</option>\n";
            }
            $counter++;
        }
        echo "</select><b> "._DL_OF." $pages "._DL_PAGES."</b></td>\n</form>\n</tr>\n";
        echo "</table>\n";
    }
}


?>