<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 18-05-2011 20:50
 */

if ( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if ( ! nv_function_exists( 'nv_block_new_comment' ) )
{
    function nv_block_config_new_comment ( $module, $data_block, $lang_block )
    {
        global $db;

        $html = "";
        $html .= "<tr>";
        $html .= "	<td>" . $lang_block['module_name'] . "</td>";
        $html .= "	<td><input class=\"form-control w200\" type=\"text\" name=\"config_module_name\" size=\"5\" value=\"" . $data_block['module_name'] . "\"/></td>";
        $html .= "</tr>";

        $html .= "<tr>";
        $html .= "	<td>" . $lang_block['numrow'] . "</td>";
        $html .= "	<td><input class=\"form-control w200\" type=\"text\" name=\"config_numrow\" size=\"5\" value=\"" . $data_block['numrow'] . "\"/></td>";
        $html .= "</tr>";

        $html .= "<tr>";
        $html .= "	<td>" . $lang_block['title_length'] . "</td>";
        $html .= "	<td><input class=\"form-control w200\" type=\"text\" name=\"config_title_length\" size=\"5\" value=\"" . $data_block['title_length'] . "\"/></td>";
        $html .= "</tr>";

        return $html;
    }

    function nv_block_config_new_comment_submit ( $module, $lang_block )
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
		$return['config']['module_name'] = $nv_Request->get_title( 'config_module_name', 'post', 'nvalbums' );
        $return['config']['numrow'] = $nv_Request->get_int( 'config_numrow', 'post', 0 );
		$return['config']['title_length'] = $nv_Request->get_int( 'config_title_length', 'post', 0 );
        return $return;
    }

    function nv_block_new_comment ( $block_config )
    {
        global $db, $module_info, $site_mods, $my_head, $module_name, $lang_module, $user_info, $module_array_cat, $global_config;

		$module = $block_config['module_name'];
		$module_data = $site_mods[$module]['module_data'];
		$module_file = $site_mods[$module]['module_file'];

		if ( file_exists( NV_ROOTDIR . "/themes/" . $module_info['template'] . "/blocks/block_random_albums.tpl" ) )
		{
			$block_theme = $module_info['template'];
		}
		else
		{
			$block_theme = "default";
		}

		if ( file_exists( NV_ROOTDIR . "/themes/" . $block_theme . "/language/" . NV_LANG_INTERFACE . ".php" ) )
		{
			include NV_ROOTDIR . "/themes/" . $block_theme . "/language/" . NV_LANG_INTERFACE . ".php";
		}

		$xtpl = new XTemplate( "block_new_comment.tpl", NV_ROOTDIR . "/themes/" . $block_theme . "/blocks" );
		$xtpl->assign( 'LANG', $lang_module );

		$sql = 'SELECT * FROM ' . NV_PREFIXLANG . '_comments WHERE status = 1 AND module = "' . $block_config['module_name'] . '" ORDER BY cid DESC';
		$result = $db->query( $sql );
		while( $row = $result->fetch() )
		{
			$sql = 'SELECT id, catid, title, alias FROM ' . NV_PREFIXLANG . '_' . $module_data . '_rows WHERE id = ' . $row['id'];
			$post = $db->query( $sql )->fetch();

			$row['titleview'] = $post['title'];
			$row['linkview'] = 	nv_url_rewrite( NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&' . NV_NAME_VARIABLE . '=' . $module . '&' . NV_OP_VARIABLE . '=' . $module_array_cat[$post['catid']]['alias'] . '/' . $post['alias'] . '-' . $post['id'] . $global_config['rewrite_exturl'], true );
			$row['content'] = nv_clean60( $row['content'], $block_config['title_length'] );
			$row['post_time'] = nv_date( 'd/m/Y H:i', $row['post_time'] );
			$xtpl->assign( 'DATA', $row );
			$xtpl->parse( 'main.loop' );
		}

		$xtpl->parse( 'main' );
		return $xtpl->text( 'main' );
    }
}

if ( defined( 'NV_SYSTEM' ) )
{
    global $site_mods, $module_name, $module_list_tags, $disallow_blog, $module_array_cat, $global_array_cat;

    $module = $block_config['module_name'];

    if ( isset( $site_mods[$module] ) )
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
        $content = nv_block_new_comment( $block_config );
    }
}