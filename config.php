<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2015 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Wed, 29 Apr 2015 06:33:16 GMT
 */

if ( ! defined( 'NV_MAINFILE' ) )
{
	die( 'Stop!!!' );
}

$db_config['dbhost'] = 'localhost';
$db_config['dbport'] = '';
$db_config['dbname'] = 'dieuuoc_4x';
$db_config['dbsystem'] = 'dieuuoc_4x';
$db_config['dbuname'] = 'dieuuoc_4x';
$db_config['dbpass'] = '@Hung0312';
$db_config['dbtype'] = 'mysql';
$db_config['collation'] = 'utf8_general_ci';
$db_config['persistent'] = false;
$db_config['prefix'] = 'ctypa';

$global_config['idsite'] = 0;
$global_config['sitekey'] = '1bd571bed6a8a76bd09fe0aaf36ea575';// Do not change sitekey!
$global_config['hashprefix'] = '{SSHA}';