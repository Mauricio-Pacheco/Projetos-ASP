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

$pagetitle = _AB_NUKESENTINEL.": "._AB_CONFIGURATION;
include("header.php");
title($pagetitle);
OpenMenu();
ipbanmenu();
CarryMenu();
ipsubmenu();
CloseMenu();
include("footer.php");

?>