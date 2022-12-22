CREATE TABLE `galeria_enquete_check` (
  `pollid` int(11) NOT NULL default '0',
  `ip` varchar(20) NOT NULL default '',
  `time` varchar(14) NOT NULL default ''
) TYPE=MyISAM;

INSERT INTO `galeria_enquete_check` VALUES (0, '127.0.0.1', '1162451732');

CREATE TABLE `galeria_enquete_data` (
  `pollid` int(11) NOT NULL default '0',
  `polltext` varchar(50) NOT NULL default '',
  `votecount` int(11) NOT NULL default '0',
  `voteid` int(11) NOT NULL default '0',
  `status` varchar(6) default NULL
) TYPE=MyISAM;

INSERT INTO `galeria_enquete_data` VALUES (1, 'Azul', 1, 1, NULL);
INSERT INTO `galeria_enquete_data` VALUES (1, 'Roxo', 0, 2, NULL);
INSERT INTO `galeria_enquete_data` VALUES (1, 'Amarelo', 0, 3, NULL);
INSERT INTO `galeria_enquete_data` VALUES (1, 'Branco', 0, 4, NULL);
INSERT INTO `galeria_enquete_data` VALUES (1, 'Vermelho', 0, 5, NULL);
INSERT INTO `galeria_enquete_data` VALUES (1, '', 0, 6, NULL);
INSERT INTO `galeria_enquete_data` VALUES (1, '', 0, 7, NULL);
INSERT INTO `galeria_enquete_data` VALUES (1, '', 0, 8, NULL);
INSERT INTO `galeria_enquete_data` VALUES (1, '', 0, 9, NULL);
INSERT INTO `galeria_enquete_data` VALUES (1, '', 0, 10, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, 'S�o Paulo', 0, 1, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, 'Internacional', 0, 2, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, 'Santos', 0, 3, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, 'Vasco', 0, 4, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, '', 0, 5, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, '', 0, 6, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, '', 0, 7, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, '', 0, 8, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, '', 0, 9, NULL);
INSERT INTO `galeria_enquete_data` VALUES (2, '', 0, 10, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, '�timo', 0, 1, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, 'Maravislhoso', 0, 2, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, 'Fant�stico', 0, 3, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, 'Sublime', 0, 4, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, '', 0, 5, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, '', 0, 6, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, '', 0, 7, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, '', 0, 8, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, '', 0, 9, NULL);
INSERT INTO `galeria_enquete_data` VALUES (3, '', 0, 10, NULL);

CREATE TABLE `galeria_enquete_desc` (
  `pollid` int(11) NOT NULL default '0',
  `polltitle` varchar(100) NOT NULL default '',
  `timestamp` datetime NOT NULL default '0000-00-00 00:00:00',
  `votecount` mediumint(9) NOT NULL default '0',
  `STATUS` varchar(6) default NULL,
  PRIMARY KEY  (`pollid`)
) TYPE=MyISAM;

INSERT INTO `galeria_enquete_desc` VALUES (1, 'Qual � a cor do cavalo branco de napole�o?', '2006-11-02 05:14:52', 0, '');
INSERT INTO `galeria_enquete_desc` VALUES (2, 'Quem voc� acha que ir� ser campe�o do campeonato Brasileiro 2006?', '2006-11-02 05:39:45', 0, NULL);
INSERT INTO `galeria_enquete_desc` VALUES (3, 'O que voc� achou do novo visualdo site?', '2006-11-02 05:40:20', 0, 'active');
        