<?php

/**
 * @Project NUKEVIET 3.x
 * @Author VINADES.,JSC (contact@vinades.vn)
 * @Copyright (C) 2014 VINADES.,JSC. All rights reserved
 * @Createdate Wed, 19 Mar 2014 13:32:54 GMT
 */

if ( ! defined( 'NV_IS_FILE_SITEINFO' ) ) die( 'Stop!!!' );


$lang_siteinfo = nv_get_lang_module( $mod );

// Cac y kien cho duyet 
list( $number ) = $db->query( "SELECT COUNT(*) as number FROM `" . NV_PREFIXLANG . "_" . $mod_data . "` where `status`= 0" )->fetch( 3 );
if ( $number > 0 )
{
    $siteinfo[] = array( 
        'key' => $lang_siteinfo['pending'], 'value' => $number 
    );
}

?>