CREATE TABLE `buffer` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `user_id` INTEGER NOT NULL,
  `section` varchar(60) NOT NULL DEFAULT '',
  `threme_id` INTEGER NOT NULL,
  `threme` varchar(250) NOT NULL DEFAULT '',
  `accept` INTEGER NOT NULL DEFAULT '0',
  `downloaded` INTEGER NOT NULL DEFAULT '0',
  `new` INTEGER NOT NULL DEFAULT '1',
  `tracker` varchar(20) DEFAULT NULL
);

CREATE TABLE `credentials` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `tracker` varchar(30) DEFAULT NULL,
  `log` varchar(30) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `cookie` varchar(255) DEFAULT NULL,
  `passkey` varchar(255) DEFAULT NULL
);

INSERT INTO "credentials" VALUES (1, 'rutracker.org', '', '', '', '');
INSERT INTO "credentials" VALUES (2, 'nnm-club.me', '', '', '', '');
INSERT INTO "credentials" VALUES (3, 'lostfilm.tv', '', '', '', '');
INSERT INTO "credentials" VALUES (4, 'novafilm.tv', '', '', '', '');
INSERT INTO "credentials" VALUES (5, 'rutor.org', ' ', ' ', '', '');
INSERT INTO "credentials" VALUES (6, 'tfile.me', ' ', ' ', '', '');
INSERT INTO "credentials" VALUES (7, 'kinozal.tv', '', '', '', '');
INSERT INTO "credentials" VALUES (8, 'anidub.com', '', '', '', '');
INSERT INTO "credentials" VALUES (9, 'baibako.tv', '', '', '', '');
INSERT INTO "credentials" VALUES (10,'casstudio.tv', '', '','', '');
INSERT INTO "credentials" VALUES (11,'newstudio.tv', '', '','', '');
INSERT INTO "credentials" VALUES (12,'animelayer.ru', '', '','', '');
INSERT INTO "credentials" VALUES (13,'tracker.0day.kiev.ua','','','', '');
INSERT INTO "credentials" VALUES (14,'rustorka.com','','','', '');
INSERT INTO "credentials" VALUES (15,'pornolab.net','','','', '');
INSERT INTO "credentials" VALUES (17,'lostfilm-mirror',' ',' ','', '');
INSERT INTO "credentials" VALUES (18,'hamsterstudio.org',' ',' ','', '');
INSERT INTO "credentials" VALUES (19,'tv.mekc.info',' ',' ','', '');


CREATE TABLE `news` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `text` TEXT,
  `new` INTEGER NOT NULL DEFAULT '1'
);

CREATE TABLE `settings` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `key` varchar(32) NOT NULL,
  `val` varchar(100) NOT NULL
);

INSERT INTO "settings" VALUES (5, 'password', '1f10c9fd49952a7055531975c06c5bd8');
INSERT INTO "settings" VALUES (6, 'auth', '1');
INSERT INTO "settings" VALUES (7, 'proxy', '0');
INSERT INTO "settings" VALUES (8, 'proxyAddress', 'antizapret.prostovpn.org:3128');
INSERT INTO "settings" VALUES (9, 'useTorrent', '0');
INSERT INTO "settings" VALUES (19, 'serverAddress', '');
INSERT INTO "settings" VALUES (29, 'debug', '0');
INSERT INTO "settings" VALUES (30, 'rss', '1');
INSERT INTO "settings" VALUES (31, 'debugFor', '');
INSERT INTO "settings" VALUES (32, 'httpTimeout', '15');
INSERT INTO "settings" VALUES (37, 'proxyType', '15');
INSERT INTO "settings" VALUES (501, 'lastUpdateBlockedIPs', '');
INSERT INTO "settings" VALUES (502, 'autoProxy', '0');
INSERT INTO "settings" VALUES (503, 'dbVer', '');


CREATE TABLE `temp` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `path` varchar(255) NOT NULL DEFAULT '',
  `hash` varchar(40) NOT NULL DEFAULT '',
  `tracker` varchar(30) NOT NULL DEFAULT '',
  `message` varchar(60) NOT NULL DEFAULT '',
  `date` varchar(120) NOT NULL DEFAULT ''
);

CREATE TABLE `torrent` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `tracker` varchar(30) NOT NULL,
  `name` varchar(250) NOT NULL DEFAULT '',
  `hd` INTEGER NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `torrent_id` varchar(150) NOT NULL DEFAULT '',
  `ep` varchar(10) DEFAULT '',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `auto_update` INTEGER NOT NULL DEFAULT '0',
  `hash` varchar(40) NOT NULL DEFAULT '',
  `script` varchar(100) NOT NULL DEFAULT ''
);

CREATE TABLE `warning` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `time` datetime NOT NULL,
  `where` varchar(40) NOT NULL,
  `reason` varchar(200) NOT NULL
);

CREATE TABLE `watch` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `tracker` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(30) NOT NULL DEFAULT ''
);

CREATE TABLE `pluginsettings` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
  `type` VARCHAR(255) NOT NULL,
  `plugin` VARCHAR(255) NOT NULL,
  `group` INTEGER NULL,
  `key` VARCHAR(255) NOT NULL,
  `value` VARCHAR(255) NOT NULL
);

CREATE TABLE `blocked_ips` (
    `ip` varchar(15) DEFAULT NULL
);
