<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @Createdate Wed, 19 Mar 2014 13:32:54 GMT
 */

if ( ! defined( 'NV_IS_MOD_GUESTBOOK' ) ) die( 'Stop!!!' );

$page_title = $module_info['custom_title'];

$error = '';
$array_data = array(
	'title' => '',
	'name' => '',
	'email' => '',
	'testimonial' => '');
	
if( $nv_Request->isset_request( 'submit', 'post' ) )
{
	$array_data['title'] = $nv_Request->get_string( 'title', 'post', '' );
	$array_data['name'] = $nv_Request->get_string( 'name', 'post', '' );
	$array_data['email'] = $nv_Request->get_string( 'email', 'post', '' );
	$array_data['testimonial'] = $nv_Request->get_string( 'testimonial', 'post', '' );
	$array_data['fcode'] = $nv_Request->get_string( 'fcode', 'post', '' );
	
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
	elseif( ! nv_capcha_txt( $array_data['fcode'] ) )
	{
		$error = $lang_module['error_captcha'];
	}

	if( empty( $error ) )
	{			
		$sql = "INSERT INTO " . NV_PREFIXLANG . "_" . $module_data . " ( title, name, email, testimonial, time, status ) VALUES ( :title, :name, :email, :testimonial, " . NV_CURRENTTIME . ", 0 )";						
		$sth = $db->prepare( $sql );
		$sth->bindParam( ':title', $array_data['title'], PDO::PARAM_STR );
		$sth->bindParam( ':name', $array_data['name'], PDO::PARAM_STR );
		$sth->bindParam( ':email', $array_data['email'], PDO::PARAM_STR );
		$sth->bindParam( ':testimonial', $array_data['testimonial'], PDO::PARAM_STR );
		$sth->execute();

		if( $sth->rowCount() )
		{
			$contents = '<meta http-equiv="refresh" content="5;' . nv_url_rewrite( NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name, true ) . '"><div class="alert alert-info text-center">' . $lang_module['send_success'] . '</div>';
			include ( NV_ROOTDIR . "/includes/header.php" );
			echo nv_site_theme( $contents );
			include ( NV_ROOTDIR . "/includes/footer.php" );
			die();
		}
		else
		{
			$error = $lang_module['error_database'];
		}
	}
}

$contents = nv_send_theme( $array_data, $error );

include ( NV_ROOTDIR . "/includes/header.php" );
echo nv_site_theme( $contents );
include ( NV_ROOTDIR . "/includes/footer.php" );

?>
