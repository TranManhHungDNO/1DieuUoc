<!-- BEGIN: main -->
{FILE "header_only.tpl"}
{FILE "header_extended.tpl"}




<div class="row">
    <div class="pa-bg col-sm-12 col-md-12 col-sm-push-6 col-md-push-6 ">

       {MODULE_CONTENT}
        [BOTTOM]
    </div>
    <div class="col-sm-6 col-md-6 col-sm-push-6 col-md-push-6 ">
        [RIGHT]
    </div>
	<div class="col-sm-6 col-md-6 col-sm-pull-16 col-md-pull-18">
		[LEFT]
	</div>
</div>

<div class="row">
	[FOOTER]
</div>
{FILE "footer_extended.tpl"}
{FILE "footer_only.tpl"}
<!-- END: main -->