<!-- BEGIN: main -->
<script type="text/javascript" src="{THEME_TEM}/js/responsiveCarousel.min.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($){
		$('.news_cal').carousel({ autoRotate: 4000, speed: 800, overflow: false, visible: '{NUMVIEW}', itemMinWidth: 150, itemEqualHeight: true, itemMargin: 10 });
		$('.news_cal').on("initCarousel", function(event, defaults, obj){
			$('#'+defaults.navigation).find('.previous, .next').css({ opacity: 0 });
			$('#news_cal').hover( function(){
				$(this).find('.previous').css({ left: 0 }).stop(true, true).animate({ left: '10px', opacity: 1 });
				$(this).find('.next').css({ right: 0 }).stop(true, true).animate({ right: '10px', opacity: 1 });
			}, function(){
				$(this).find('.previous').animate({ left: 0, opacity: 0 });
				$(this).find('.next').animate({ right: 0, opacity: 0 });
			});
		});
	});
</script>
<link href="{THEME_TEM}/css/news_cal.css" rel="stylesheet" />
<div id="news_cal">
	<div class="other_blocknews">
		<div id="nav-07" class="crsl-nav">
			<a href="#" class="previous">&lt;</a>
			<a href="#" class="next">&gt;</a>
		</div>
		<div class="gallery news_cal crsl-items" data-navigation="nav-07">
			<div class="crsl-wrap">
			<!-- BEGIN: loop -->
			<figure class="crsl-item" align="center">
				<!-- BEGIN: img -->
				<a href="{ROW.link}" title="{ROW.title}"><img src="{ROW.thumb}" alt="{ROW.title}" style="width:140px; height:100px"/></a>
				<!-- END: img -->
				<p><a {TITLE} class="show" href="{ROW.link}" data-content="{ROW.hometext}" data-img="{ROW.thumb}" data-rel="block_tooltip">{TITLE1}</a></p>
			</figure>
			<!-- END: loop -->
			</div>
		</div>
	</div>
</div>
<!-- BEGIN: tooltip -->
<script type="text/javascript">
$(document).ready(function() {$("[data-rel='block_tooltip'][data-content!='']").tooltip({
	placement: "{TOOLTIP_POSITION}",
	html: true,
	title: function(){return ( $(this).data('img') == '' ? '' : '<img class="img-thumbnail pull-left margin_image" src="' + $(this).data('img') + '" width="90" />' ) + '<p class="text-justify">' + $(this).data('content') + '</p><div class="clearfix"></div>';}
});});
</script>
<!-- END: tooltip -->
<!-- END: main -->