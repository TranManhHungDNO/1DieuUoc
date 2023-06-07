<?php
/**
 * @Project Block Facebook Like Box for NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2012 VINADES.,JSC. All rights reserved
 * @Createdate 10/10/2012 23:25
 */

if ( ! defined( 'NV_MAINFILE' ) ) die( 'Stop!!!' );

if ( ! nv_function_exists( 'nv_facebook_like_box_blocks' ) )
{

    function nv_block_config_facebook_like_box_blocks ( $module, $data_block, $lang_block )
    {
        $html = "";
        $html .= "<tr>";
        $html .= "	<td>" . $lang_block['url'] . "</td>";
        $html .= "	<td><input type=\"text\" name=\"config_url\" size=\"50\" value=\"" . $data_block['url'] . "\"/></td>";
        $html .= "</tr>";
        $html .= "<tr>";
        $html .= "  <td>" . $lang_block['height'] . "</td>";
        $html .= "  <td><input type=\"text\" name=\"config_height\" size=\"5\" value=\"" . $data_block['height'] . "\"/></td>";
        $html .= "</tr>";
        
        $html .= "<tr>";
        $html .= "	<td>" . $lang_block['scheme'] . "</td>";
        $html .= "	<td> <select name=\"config_scheme\"> ";
        
        $se1= ($data_block['scheme']=='light')? 'selected="selected"': '';
        $se2= ($data_block['scheme']=='dark')? 'selected="selected"': '';
        
        $html .= " <option value=\"light\"".$se1."> Light </option>";
        $html .= " <option value=\"dark\"".$se2." >Dark </option>";
        
        $html .= " <\select>";
        $html .= "</td>";
        $html .= "</tr>";
        
        $html .= "<tr>";
        $html .= "  <td>" . $lang_block['faces'] . "</td>";
        $chfaces = ($data_block['faces']==1)? 'checked="checked"': '';
        $html .= "  <td><input type=\"checkbox\" name=\"config_faces\" value=\"1\" ".$chfaces." \></td>";
        $html .= "</tr>";
        
        $html .= "<tr>";
        $html .= "  <td>" . $lang_block['stream'] . "</td>";
        $chstream = ($data_block['stream']==1)? 'checked="checked"': '';
        $html .= "  <td><input type=\"checkbox\" name=\"config_stream\" value=\"1\" ".$chstream." \></td>";
        $html .= "</tr>";
		
        $html .= "<tr>";
        $html .= "  <td>" . $lang_block['header'] . "</td>";
        $chheader = ($data_block['header']==1)? 'checked="checked"': '';
        $html .= "  <td><input type=\"checkbox\" name=\"config_header\" value=\"1\" ".$chheader." \></td>";
        $html .= "</tr>";
        $html .= "</tr>";
        return $html;
    }

    function nv_block_config_facebook_like_box_blocks_submit ( $module, $lang_block )
    {
        global $nv_Request;
        $return = array();
        $return['error'] = array();
        $return['config'] = array();
        $return['config']['url'] = $nv_Request->get_string( 'config_url', 'post', 0 );
        $return['config']['height'] = $nv_Request->get_int( 'config_height', 'post', 0 );
        $return['config']['scheme'] = $nv_Request->get_string( 'config_scheme', 'post', 0 );
        $return['config']['faces'] = $nv_Request->get_int( 'config_faces', 'post', 0 );
        $return['config']['stream'] = $nv_Request->get_int( 'config_stream', 'post', 0 );
        $return['config']['header'] = $nv_Request->get_int( 'config_header', 'post', 0 );
        
        
        return $return;
    }

    function nv_facebook_like_box_blocks ( $block_config )
    {
       $content ='';
       $face = ($block_config['faces']==1)? "true":"false";
       $stream = ($block_config['stream']==1)? "true":"false";
       $header = ($block_config['header']==1)? "true":"false";       
       $lang = (NV_LANG_DATA=='vi')? "vi_VN":"en_US";        
       $content .= "<iframe src=\"//www.facebook.com/plugins/likebox.php?href=".$block_config['url']."&amp;height=".$block_config['height']."&amp;colorscheme=".$block_config['scheme'];
       $content .= "&amp;show_faces=".$face."&amp;border_color&amp;locale=".$lang."&amp;stream=".$stream."&amp;header=".$header."\" scrolling=\"no\" frameborder=\"0\" style=\"border:none; overflow:hidden; width:100%; height:".$block_config['height']."px;\" allowTransparency=\"true\" ></iframe>";
       return $content;
    }
}

if ( defined( 'NV_SYSTEM' ) )
{
    $content = nv_facebook_like_box_blocks( $block_config );
}

?>