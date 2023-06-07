<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES., JSC. All rights reserved
 * @License GNU/GPL version 2 or any later version
 * @Createdate 10/08/2011 08:00
 */

if ( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if ( ! nv_function_exists( 'nv_function_new' ) )
{
    function nv_block_config_new( $module, $data_block, $lang_block )
    {
        global $db, $language_array, $site_mods;

        $html = "";
		
        $html .= "<tr>";
        $html .= "	<td>" . $lang_block['numrow'] . "</td>";
        $html .= "	<td><input type=\"text\" name=\"config_numrow\" size=\"5\" value=\"" . $data_block['numrow'] . "\"/></td>";
        $html .= "</tr>";
		$html .= "<tr>";
        $html .= "	<td>" . $lang_block['lenght'] . "</td>";
        $html .= "	<td><input type=\"text\" name=\"config_lenght\" size=\"5\" value=\"" . $data_block['lenght'] . "\"/></td>";
		$html .= "</tr>";

        return $html;
    }

    function nv_block_config_new_submit( $module, $lang_block )
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['numrow'] = $nv_Request->get_int( 'config_numrow', 'post', 0 );
		$return['config']['lenght'] = $nv_Request->get_int( 'config_lenght', 'post', 0 );
        return $return;
    }
	
	function nv_function_new( $block_config )
	{		
		global $global_config, $module_info, $lang_module, $site_mods, $db, $my_head, $module_name;

		$module = $block_config['module'];
		$data = $site_mods[$module]['module_data'];
		$file = $site_mods[$module]['module_file'];
		
        if ( $module == $module_name )
        {
            $lang_block_module = $lang_module;
        }
        else
        {
            $temp_lang_module = $lang_module;
            $lang_module = array();
            include ( NV_ROOTDIR . "/modules/" . $site_mods[$module]['module_file'] . "/language/" . NV_LANG_INTERFACE . ".php" );
            $lang_block_module = $lang_module;
            $lang_module = $temp_lang_module;
        }

		if ( file_exists( NV_ROOTDIR . "/themes/" . $module_info['template'] . "/modules/" . $module . "/global.new.tpl" ) )
		{
			$block_theme = $module_info['template'];
		}
		else
		{
			$block_theme = "default";
		}
		
		if( $module_name != $module )
		{
			$my_head .= "<link rel=\"stylesheet\" type=\"text/css\" href=\"" . NV_BASE_SITEURL . "themes/" . $block_theme . "/css/" . $file . ".css\" />\n";
		}
		
		$xtpl = new XTemplate( 'global.new.tpl', NV_ROOTDIR . '/themes/' . $block_theme . '/modules/' . $file );
		$xtpl->assign( 'LANG', $lang_module );
		$xtpl->assign( 'BLANG', $lang_block_module );
		$xtpl->assign( 'MAIN', NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module );
		$xtpl->assign( 'SEND', NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '&' .  NV_OP_VARIABLE . "=send" );
		
		$sql = "SELECT * FROM `" . NV_PREFIXLANG . "_" . $data . "` WHERE `status` = 1 ORDER BY `id` DESC LIMIT 0, " . $block_config['numrow'];
		$result = $db->query( $sql );
		
		while( $row = $result->fetch() )
		{
			//$row['detail'] = NV_BASE_SITEURL . "index.php?" . NV_NAME_VARIABLE . "=" . $module . "&" . NV_OP_VARIABLE . "=main/" . $row['id'] . "-" . change_alias( $row['title'] );
			$row['detail'] = NV_BASE_SITEURL . 'index.php?' . NV_LANG_VARIABLE . '=' . NV_LANG_DATA . '&amp;' . NV_NAME_VARIABLE . '=' . $module . '/' . $row['id'] . "-" . change_alias( $row['title'] );			
			$row['testimonial'] = nv_clean60( $row['testimonial'], $block_config['lenght'] );
			$xtpl->assign( 'DATA', $row );
			$xtpl->parse( 'main.loop' );
		}
		
		$xtpl->parse( 'main' );
		return $xtpl->text( 'main' );
	}
}

if( defined( 'NV_SYSTEM' ) ) 
{
	global $site_mods, $module_name;
	$module = $block_config['module'];

	$content = 	nv_function_new( $block_config );
}
?>
