<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @Createdate Wed, 19 Mar 2014 13:32:54 GMT
 */

if ( ! defined( 'NV_IS_FILE_ADMIN' ) ) die( 'Stop!!!' );

$page_title = $lang_module['save'];

$id = $nv_Request->get_int( 'id', 'get', 0 );
$func = $nv_Request->get_string( 'func', 'get', '' );

if( ! $id ) die();

$error = '';
$array_data = array(
	'title' => '',
	'name' => '',
	'email' => '',
	'testimonial' => '');

$sql = "SELECT * FROM `" . NV_PREFIXLANG . "_" . $module_data . "` WHERE `id` = " . $id;
$result = $db->query( $sql );
$array_data = $result->fetch();

if( $nv_Request->isset_request( 'submit', 'post' ) )
{
	$array_data['title'] = $nv_Request->get_string( 'title', 'post', '' );
	$array_data['name'] = $nv_Request->get_string( 'name', 'post', '' );
	$array_data['email'] = $nv_Request->get_string( 'email', 'post', '' );
	$array_data['testimonial'] = $nv_Request->get_string( 'testimonial', 'post', '' );
	$array_data['status'] = $nv_Request->get_bool( 'status', 'post', 0 );
	
	$array_data['status'] = empty( $array_data['status'] ) ? 0 : 1;
	
	if( empty( $array_data['title'] ) )
	{
		$error = $lang_module['error_title'];
	}
	elseif( empty( $array_data['name'] ) )
	{
		$error = $lang_module['error_name'];
	}
	elseif( empty( $array_data['email'] ) )
	{
		$error = $lang_module['error_email'];
	}
	elseif( nv_check_valid_email( $array_data['email'] ) )
	{
		$error = $lang_module['error_email_validate'];
	}
	elseif( empty( $array_data['testimonial'] ) )
	{
		$error = $lang_module['error_testimonial'];
	}
	
	if( empty( $error ) )
	{
		$sql = "UPDATE " . NV_PREFIXLANG . "_" . $module_data . " SET title = :title, name = :name, email = :email, testimonial = :testimonial, status = " . $array_data['status'] . " WHERE `id` = " . $id;
		$sth = $db->prepare( $sql );
		$sth->bindParam( ':title', $array_data['title'], PDO::PARAM_STR );
		$sth->bindParam( ':name', $array_data['name'], PDO::PARAM_STR );
		$sth->bindParam( ':email', $array_data['email'], PDO::PARAM_STR );
		$sth->bindParam( ':testimonial', $array_data['testimonial'], PDO::PARAM_STR );
		$sth->execute();

		if( $sth->rowCount() )
		{
			nv_del_moduleCache( $module_name );
			if( $func == 'pending' )
			{
				Header( "Location: " . NV_BASE_ADMINURL . "index.php?" . NV_NAME_VARIABLE . "=" . $module_name . "&" . NV_OP_VARIABLE . "=pending" );
				die();
			}
            Header( "Location: " . NV_BASE_ADMINURL . "index.php?" . NV_NAME_VARIABLE . "=" . $module_name );
            die();
		}
		else
		{
			$error = $lang_module['error_database'];
		}
	}
}

$xtpl = new XTemplate( "content.tpl", NV_ROOTDIR . "/themes/" . $global_config['module_theme'] . "/modules/" . $module_file );
$xtpl->assign( 'LANG', $lang_module );

$array_data['status'] = $array_data['status'] == 1 ? 'checked="checked"' : '';

if( ! empty( $array_data['testimonial'] ) ) $array_data['testimonial'] = nv_htmlspecialchars( $array_data['testimonial'] );

if( defined( 'NV_EDITOR' ) ) require_once ( NV_ROOTDIR . '/' . NV_EDITORSDIR . '/' . NV_EDITOR . '/nv.php' );

if( defined( 'NV_EDITOR' ) and nv_function_exists( 'nv_aleditor' ) )
{
	$array_data['testimonial'] = nv_aleditor( "testimonial", '100%', '300px', $array_data['testimonial'] );
}
else
{
	$array_data['testimonial'] = "<textarea style=\"width:100%;height:300px\" name=\"bodytext\">" . $array_data['testimonial'] . "</textarea>";
}

$xtpl->assign( 'DATA', $array_data );

if( ! empty( $error ) )
{
	$xtpl->assign( 'ERROR', $error );
	$xtpl->parse( 'main.error' );
}

$xtpl->parse( 'main' );
$contents = $xtpl->text( 'main' );

include ( NV_ROOTDIR . "/includes/header.php" );
echo nv_admin_theme( $contents );
include ( NV_ROOTDIR . "/includes/footer.php" );

?>