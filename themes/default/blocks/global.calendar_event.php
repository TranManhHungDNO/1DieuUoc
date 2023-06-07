<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate Sun, 04 May 2014 12:41:32 GMT
 */

if( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if( ! nv_function_exists( 'nv_calendar_event' ) )
{
	function nv_calendar_event( $block_config )
	{
		global $module_array_cat, $global_config, $site_mods;

		$module = 'news';
		$mod_data = $site_mods[$module]['module_data'];

		if( file_exists( NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/blocks/global.calendar_event.tpl' ) )
		{
			$block_theme = $global_config['module_theme'];
		}
		elseif( file_exists( NV_ROOTDIR . '/themes/' . $global_config['site_theme'] . '/blocks/global.calendar_event.tpl' ) )
		{
			$block_theme = $global_config['site_theme'];
		}
		else
		{
			$block_theme = 'default';
		}

		$sql = 'SELECT id, title, alias, catid, publtime FROM ' . NV_PREFIXLANG . '_' . $mod_data . '_rows';
		$list = nv_db_cache( $sql, '', $module );

		$array_tmp = array();
		$array_data = array();
		if( !empty( $list ) )
		{
			foreach( $list as $ls )
			{
				$publtime = nv_date( 'Y-m-d', $ls['publtime'] );
				$array_tmp[$publtime][] = $ls;
			}

			foreach( $array_tmp as $publtime => $tmp )
			{
				$number = count( $tmp );
				if( $number > 1 )
				{
					$url = nv_url_rewrite( NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module . '&' . NV_OP_VARIABLE . '=search&q=&from_date=' . nv_date( 'd.m.Y', $tmp[0]['publtime'] ) . '&to_date=' . nv_date( 'd.m.Y', $tmp[0]['publtime'] ), true );
				}
				else
				{
					$url = nv_url_rewrite( NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module . '&' . NV_OP_VARIABLE . '=' . $module_array_cat[$tmp[0]['catid']]['alias'] . '/' . $tmp[0]['alias'] . '-' . $tmp[0]['id'] . $global_config['rewrite_exturl'], true );
				}
				$array_data[$publtime] = array(
					'number' => $number,
					'url' => $url
				);
			}
		}
		$array_data = json_encode( $array_data );

		$xtpl = new XTemplate( 'global.calendar_event.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/blocks' );
		$xtpl->assign( 'NV_BASE_SITEURL', NV_BASE_SITEURL );
		$xtpl->assign( 'BLOCK_THEME', $block_theme );
		$xtpl->assign( 'CURRENT_MONTH', nv_date( 'Y-m', NV_CURRENTTIME ) );
		$xtpl->assign( 'DATA', $array_data );

		$xtpl->parse( 'main' );
		return $xtpl->text( 'main' );
	}
}

if( defined( 'NV_SYSTEM' ) )
{
	global $site_mods, $module_name, $global_array_cat, $module_array_cat;

	$module = 'news';

	if( isset( $site_mods[$module] ) )
	{
		if( $module == $module_name )
		{
			$module_array_cat = $global_array_cat;
			unset( $module_array_cat[0] );
		}
		else
		{
			$module_array_cat = array();
			$sql = 'SELECT catid, parentid, title, alias, viewcat, subcatid, numlinks, description, inhome, keywords, groups_view FROM ' . NV_PREFIXLANG . '_' . $site_mods[$module]['module_data'] . '_cat ORDER BY sort ASC';
			$list = nv_db_cache( $sql, 'catid', $module );
			foreach( $list as $l )
			{
				$module_array_cat[$l['catid']] = $l;
				$module_array_cat[$l['catid']]['link'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&amp;' . NV_OP_VARIABLE . '=' . $l['alias'];
			}
		}
		$content = nv_calendar_event( $block_config );
	}
}