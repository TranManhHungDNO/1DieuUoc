<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2015 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Fri, 24 Apr 2015 12:05:15 GMT
 */

if ( ! defined( 'NV_MAINFILE' ) )
{
	die( 'Stop!!!' );
}

$db_config['dbhost'] = 'localhost';
$db_config['dbport'] = '';
$db_config['dbname'] = '';
$db_config['dbsystem'] = '';
$db_config['dbuname'] = '';
$db_config['dbpass'] = '';
$db_config['dbtype'] = 'mysql';
$db_config['collation'] = 'utf8_general_ci';
$db_config['persistent'] = false;
$db_config['prefix'] = 'nv4';

$global_config['idsite'] = 0;
$global_config['sitekey'] = '0732c9f832e4431b9fe1e302656ee067';// Do not change sitekey!
$global_config['hashprefix'] = '{SSHA}';
$global_config['cookie_prefix'] = 'nv3c_Rfmrp';
$global_config['session_prefix'] = 'nv3s_Ju2kdu';

$global_config['ftp_server'] = 'localhost';
$global_config['ftp_port'] = '21';
$global_config['ftp_user_name'] = '';
$global_config['ftp_user_pass'] = '';
$global_config['ftp_path'] = '/';
$global_config['ftp_check_login'] = '0';