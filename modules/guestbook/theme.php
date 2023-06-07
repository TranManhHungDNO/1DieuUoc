<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES (contact@vinades.vn)
 * @Copyright (C) 2012 VINADES. All rights reserved
 * @Createdate Apr 20, 2010 10:47:41 AM
 */

if( ! defined( 'NV_IS_MOD_GUESTBOOK' ) ) die( 'Stop!!!' );

/**
 * main_theme()
 * 
 * @param mixed $array_content
 * @param mixed $select_options
 * @param mixed $base_url
 * @param mixed $checkss
 * @return
 */
function main_theme( $array_content, $detail, $generate_page )
{
	global $module_file, $lang_global, $lang_module, $module_info, $module_name;

	$xtpl = new XTemplate( "main.tpl", NV_ROOTDIR . "/themes/" . $module_info['template'] . "/modules/" . $module_file );
	$xtpl->assign( 'LANG', $lang_module );
	$xtpl->assign( 'ACTION', NV_BASE_SITEURL . "index.php?" . NV_NAME_VARIABLE . "=" . $module_name );
	$xtpl->assign( 'SEND_LINK', NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module_name . '&' .  NV_OP_VARIABLE . "=send" );
	
	if( ! empty( $detail ) )
	{
		$detail['time'] = date( 'd/m/Y H:i', $detail['time'] );
		$xtpl->assign( 'DETAIL', $detail );
		$xtpl->parse( 'main.detail' );
	}
	
	if( ! empty( $array_content ) )
	{
		foreach( $array_content as $row )
		{
			$row['time'] = nv_date( 'd/m/Y H:i', $row['time'] );
			$xtpl->assign( 'DATA', $row );
			$xtpl->parse( 'main.loop' );
		}
	}
	
	$xtpl->assign( 'GENERAL_PAGE', $generate_page );

	$xtpl->parse( 'main' );
	return $xtpl->text( 'main' );
}

/**
 * nv_send_theme()
 * 
 * @param mixed $array
 * @return
 */
function nv_send_theme( $array, $error )
{
	global $module_file, $module_info, $lang_module, $list_national, $lang_global;

	$xtpl = new XTemplate( "send.tpl", NV_ROOTDIR . "/themes/" . $module_info['template'] . "/modules/" . $module_file );
	$xtpl->assign( 'LANG', $lang_module );
	$xtpl->assign( 'DATA', $array );
	$xtpl->assign( 'GFX_WIDTH', NV_GFX_WIDTH );
	$xtpl->assign( 'GFX_HEIGHT', NV_GFX_HEIGHT );
	$xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
	$xtpl->assign( 'CAPTCHA_REFRESH', $lang_global['captcharefresh'] );
	$xtpl->assign( 'CAPTCHA_REFR_SRC', NV_BASE_SITEURL . "images/refresh.png" );
	$xtpl->assign( 'NV_GFX_NUM', NV_GFX_NUM );
	
	if( ! empty( $error ) )
	{
		$xtpl->assign( 'ERROR', $error );
		$xtpl->parse( 'main.error' );
	}

	$xtpl->parse( 'main' );
	return $xtpl->text( 'main' );
}
