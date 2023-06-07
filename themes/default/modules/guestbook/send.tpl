<!-- BEGIN: main -->
<!-- BEGIN: error -->
<div class="alert alert-danger">{ERROR}</div>
<!-- END: error -->
<form action="" method="post" class="form-horizontal">
	<div class="form-group">
		<label class="col-sm-3 control-label">{LANG.title}<span class="text-danger"> (*)</span>:</label>
		<div class="col-sm-9">
			<input type="text" name="title" value="{DATA.title}" class="form-control" />
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-3 control-label">{LANG.name}<span class="text-danger"> (*)</span>:</label>
		<div class="col-sm-9">
			<input type="text" name="name" value="{DATA.name}" class="form-control" />
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-3 control-label">{LANG.email}<span class="text-danger"> (*)</span>:</label>
		<div class="col-sm-9">
			<input type="email" name="email" value="{DATA.email}" class="form-control" />
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-3 control-label">{LANG.testimonial}<span class="text-danger"> (*)</span>:</label>
		<div class="col-sm-9">
			<textarea name="testimonial" class="form-control">{DATA.testimonial}</textarea>
		</div>
	</div>
	
	<div class="form-group">
		<label class="col-sm-3 control-label">{LANG.anticode}<span class="text-danger"> (*)</span>:</label>
		<div class="col-sm-9">
			<input type="text" maxlength="6" value="" id="fcode_iavim" name="fcode" class="txtCaptcha form-control pull-left" style="width: 100px" />
			<img height="22" src="{NV_BASE_SITEURL}index.php?scaptcha=captcha" title="{LANG.captcha}" alt="{LANG.captcha}" id="vimg" />
			<img alt="{CAPTCHA_REFRESH}" src="{CAPTCHA_REFR_SRC}" width="16" height="16" class="refresh" onclick="nv_change_captcha('vimg','fcode_iavim');"/>
		</div>
	</div>
	
	<div class="text-center"><input type="submit" name="submit" value="{LANG.submit}" class="btn btn-primary" /></div>

</form>
<!-- END: main -->