<!-- BEGIN: main -->
<link href="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/js/responsive-calendar.css" rel="stylesheet">
<style type="text/css">
.responsive-calendar .day{
	border: solid 1px #ffffff;
}
.responsive-calendar .day .badge{
	font-size: 12px;
	color: yellow;
	top: -2px;
	right: 2px;
}
</style>
<div class="responsive-calendar">

	
	<div class="day-headers">
		<div class="day header">T2</div>
		<div class="day header">T3</div>
		<div class="day header">T4</div>
		<div class="day header">T5</div>
		<div class="day header">T6</div>
		<div class="day header">T7</div>
		<div class="day header">CN</div>
	</div>
	<div class="days" data-group="days">

	</div>
	
		<div class="controls">
		<a class="pull-left" data-go="prev">
		<div class="btn btn-primary">
			<<
		</div></a>
		<h4><span data-head-month></span>/<span data-head-year></span></h4>
		<a class="pull-right" data-go="next">
		<div class="btn btn-primary">
			>>
		</div></a>
	</div>	<br/>
</div>

<script src="{NV_BASE_SITEURL}themes/{BLOCK_THEME}/js/responsive-calendar.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".responsive-calendar").responsiveCalendar({
			time : '{CURRENT_MONTH}',
			translateMonths: ["01", "02", "03", "04", "05", "06", "07", "08", "09", "10", "11", "12"],
			events : {DATA}
		});
	});
</script>

<!-- END: main -->