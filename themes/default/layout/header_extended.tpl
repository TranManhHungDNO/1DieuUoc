	<!--[if lt IE 7]>
	<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
	<![endif]-->
	<noscript>
		<div class="alert alert-danger">{LANG.nojs}</div>
	</noscript>
	<div id="wraper">
		<header>
			<div class="container">
				<div class="row" id="header-wraper">
					<div id="header">
						<div id="logo">
							 <a title="{SITE_NAME}" href="{THEME_SITE_HREF}">
							 	<!-- BEGIN: image -->
							 	<img src="{LOGO_SRC}" alt="{SITE_NAME}" />
							 	<!-- END: image -->
								<!-- BEGIN: swf -->
								<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" >
									<param name="wmode" value="transparent" />
									<param name="movie" value="{LOGO_SRC}" />
									<param name="quality" value="high" />
									<param name="menu" value="false" />
									<param name="seamlesstabbing" value="false" />
									<param name="allowscriptaccess" value="samedomain" />
									<param name="loop" value="true" />
									<!--[if !IE]> <-->
									<object type="application/x-shockwave-flash" width="{LOGO_WIDTH}" height="{LOGO_HEIGHT}" data="{LOGO_SRC}" >
										<param name="wmode" value="transparent" />
										<param name="pluginurl" value="http://www.adobe.com/go/getflashplayer" />
										<param name="loop" value="true" />
										<param name="quality" value="high" />
										<param name="menu" value="false" />
										<param name="seamlesstabbing" value="false" />
										<param name="allowscriptaccess" value="samedomain" />
									</object>
									<!--> <![endif]-->
								</object>
								<!-- END: swf -->							 	
							 	
							
							</a>
						</div>
						<div class="pull-right">
							
							
						</div>
					</div>
					<div id="banner">

					</div>
				</div>
			</div>
		</header>
		<nav>
			<div class="container">
				<div class="row">
					[MENU_SITE]
				</div>
			</div>
		</nav>
		<section>
			<div class="container" id="body">
				<!-- BEGIN: breadcrumbs -->
				<ol class="breadcrumb">
					<li class="home" itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><em class="fa fa-lg fa-home">&nbsp;</em><a href="{THEME_SITE_HREF}" itemprop="url" title="{LANG.Home}"><span itemprop="title">{LANG.Home}</span></a></li>
					<!-- BEGIN: loop --><li itemscope itemtype="http://data-vocabulary.org/Breadcrumb"><a href="{BREADCRUMBS.link}" itemprop="url" title="{BREADCRUMBS.title}"><span itemprop="title">{BREADCRUMBS.title}</span></a></li><!-- END: loop -->
				</ol>
				<!-- END: breadcrumbs -->
				[THEME_ERROR_INFO]