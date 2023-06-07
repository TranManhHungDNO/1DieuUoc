<!-- BEGIN: main -->
	<link href="{NV_BASE_SITEURL}themes/{TEMPLATE}/jspa/pgwslider.css" rel="stylesheet" />
		<script type="text/javascript" src="{NV_BASE_SITEURL}themes/{TEMPLATE}/jspa/pgwslider.js"></script>
<ul class="pgwSlider">
<!-- BEGIN: loop -->
    <li><a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.thumb}" alt="{ROW.title}" data-description="{ROW.hometext}"></a></li>
   	<!-- END: loop -->
</ul>


<script type="text/javascript">
$(document).ready(function() {
    $('.pgwSlider').pgwSlider();
});
</script>

<!-- END: main -->