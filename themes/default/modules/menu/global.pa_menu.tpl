

<!-- BEGIN: main -->

   <link rel="stylesheet" href="{NV_BASE_SITEURL}themes/default/jspa/menu.css">

   <script src="{NV_BASE_SITEURL}themes/default/jspa/menu.js"></script>


<div id='cssmenu'>
<ul>
   <li <!-- BEGIN: home_active --> class="active"<!-- END: home_active -->><a title="{LANG.Home}" href="{THEME_SITE_HREF}">Trang chủ</a></li>
   <!-- BEGIN: top_menu -->
   <li  {TOP_MENU.current}> <a href="{TOP_MENU.link}" title="{TOP_MENU.note}" {TOP_MENU.target}>{TOP_MENU.title_trim}</a>
   <!-- BEGIN: sub --> 
      <ul>
<!-- BEGIN: item -->
    <li>
        <a href="{SUB.link}" title="{SUBMENU.note}" {SUBMENU.target}>{SUB.title_trim}</a>
      
    </li>
    <!-- END: item -->
            </ul>
            
            <!-- END: sub -->
         </li>
     
  
   	<!-- END: top_menu -->
</ul>
</div>
<!-- END: main -->