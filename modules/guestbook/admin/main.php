<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @Createdate Wed, 19 Mar 2014 13:32:54 GMT
 */

if ( ! defined( 'NV_IS_FILE_ADMIN' ) ) die( 'Stop!!!' );

$page_title = $lang_module['main'];

$xtpl = new XTemplate( "main.tpl", NV_ROOTDIR . "/themes/" . $global_config['module_theme'] . "/modules/" . $module_file );
$xtpl->assign( 'LANG', $lang_module );
$xtpl->assign( 'GLANG', $lang_global );

$base_url = NV_BASE_ADMINURL . "index.php?" . NV_NAME_VARIABLE . "=" . $module_name;
$page = $nv_Request->get_int( 'page', 'get', 0 );
$per_page = 10;

// Get num row
$sql = "SELECT COUNT(*) FROM `" . NV_PREFIXLANG . "_" . $module_data . "` WHERE `status` = 1";
$result = $db->query( $sql );
list( $all_page ) = $result->fetch( 3 );

$sql = "SELECT * FROM `" . NV_PREFIXLANG . "_" . $module_data . "` WHERE `status` = 1 ORDER BY `id` DESC LIMIT " . $page . ", " . $per_page;
$result = $db->query( $sql );

while( $row = $result->fetch() )
{
	$row['link_edit'] = NV_BASE_ADMINURL . "index.php?" . NV_NAME_VARIABLE . "=" . $module_name . "&" . NV_OP_VARIABLE . "=content&id=" . $row['id'];
	$row['time'] = date( 'd/m/Y H:i', $row['time'] );
	$xtpl->assign( 'DATA', $row );
	$xtpl->parse( 'main.loop' );
}

$generate_page = nv_generate_page( $base_url, $all_page, $per_page, $page );
if ( ! empty( $generate_page ) )
{
    $xtpl->assign( 'GENERATE_PAGE', $generate_page );
    $xtpl->parse( 'main.generate_page' );
}

$xtpl->parse( 'main' );
$contents = $xtpl->text( 'main' );

include ( NV_ROOTDIR . "/includes/header.php" );
echo nv_admin_theme( $contents );
include ( NV_ROOTDIR . "/includes/footer.php" );