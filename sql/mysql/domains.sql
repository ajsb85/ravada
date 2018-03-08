CREATE TABLE `domains` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_base` int(11),
  `name` char(80) NOT NULL,
  `created` int(1) NOT NULL DEFAULT '0',
  `error` varchar(200) DEFAULT NULL,
  `uri` varchar(250) DEFAULT NULL,
  `is_base` int(1) NOT NULL DEFAULT '0',
  `is_public` int(1) NOT NULL DEFAULT '0',
  `file_base_img` varchar(255) DEFAULT NULL,
  `file_screenshot` varchar(255) DEFAULT NULL,
  `port` int(5),
  `id_owner` int(11),
  `vm` char(120) NOT NULL,
  `spice_password` char(20) DEFAULT NULL,
  `description` text,
  `start_time` int not null default 0,
  `status` varchar(32) default 'shutdown',
  `display` varchar(128) default NULL,
  `info` varchar(255) default NULL,
  `internal_id` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_base` (`id_base`,`name`),
  UNIQUE KEY `name` (`name`)
);
