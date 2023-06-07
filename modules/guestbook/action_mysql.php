<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @Createdate Wed, 19 Mar 2014 13:32:54 GMT
 */

if ( ! defined( 'NV_IS_FILE_MODULES' ) ) die( 'Stop!!!' );

$sql_drop_module = array();
$sql_drop_module[] = "DROP TABLE IF EXISTS `" . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "`";
$sql_create_module = $sql_drop_module;

$sql_create_module[] = "CREATE TABLE `" . $db_config['prefix'] . "_" . $lang . "_" . $module_data . "` (
	`id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
	`title` varchar(255) NOT NULL,
	`name` varchar(255) NOT NULL,
	`email` varchar(200) NOT NULL,
	`testimonial` mediumtext NOT NULL,
	`time` int(11) NOT NULL DEFAULT '0',
	`status` tinyint(1) unsigned NOT NULL DEFAULT '0',
	PRIMARY KEY (`id`))ENGINE=MyISAM";