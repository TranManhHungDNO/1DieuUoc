<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @Createdate Wed, 19 Mar 2014 13:32:54 GMT
 */

if ( ! defined( 'NV_IS_MOD_GUESTBOOK' ) ) die( 'Stop!!!' );

$page_title = $module_info['custom_title'];

$array_data = $detail = array();
$page = $nv_Request->get_int( 'page', 'get', 0 );
$per_page = 10;
$where = '';

if( isset( $array_op ) and ! empty( $array_op ) )
{
	$id = explode( '-', $array_op[0] );
	$id = $id[0];
	
	$sql = "SELECT * FROM `" . NV_PREFIXLANG . "_" . $module_data . "` WHERE `id` = " . $id;
	$result = $db->query( $sql );
	$detail = $result->fetch();
}

if( $nv_Request->isset_request( 'search', 'post' ) ) 
{
	$key = $nv_Request->get_string( 'keyword', 'post', '' );
	if( ! empty( $key ) )
	{	
		$where = " AND `name` like '%" . $key . "%' OR `testimonial` like '%" . $key . "%' OR `title` like '%" . $key ."%'";
	}
}

$base_url = NV_BASE_SITEURL . "index.php?" . NV_NAME_VARIABLE . "=" . $module_name;

// Get num row
$sql = "SELECT COUNT(*) FROM `" . NV_PREFIXLANG . "_" . $module_data . "` WHERE 1 = 1 AND `status` = 1 " . $where;
$result = $db->query( $sql );
list( $all_page ) = $result->fetch( 3 );

$sql = "SELECT * FROM `" . NV_PREFIXLANG . "_" . $module_data . "` WHERE `status` = 1 " . $where . " ORDER BY `id` DESC LIMIT " . $page . ", " . $per_page;
$result = $db->query( $sql );
while( $row = $result->fetch() )
{
	$array_data[] = $row;
}

$generate_page = nv_generate_page( $base_url, $all_page, $per_page, $page );

$contents = main_theme( $array_data, $detail, $generate_page );

include ( NV_ROOTDIR . "/includes/header.php" );
echo nv_site_theme( $contents );
include ( NV_ROOTDIR . "/includes/footer.php" );

?>