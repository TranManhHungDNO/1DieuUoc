<!-- BEGIN: main -->
<style type="text/css">
.support-ol {background:#fff;display:block;overflow:hidden;box-shadow:0px 3px 6px rgba(0, 0, 0, 0.4);-moz-box-shadow:0px 3px 6px rgba(0, 0, 0, 0.4);-webkit-box-shadow:0px 3px 6px rgba(0, 0, 0, 0.4);margin-top: 10px;padding: 8px;border: 1px solid #ACCFE0;}
.support-ol .name-phone {background:url({NV_BASE_SITEURL}themes/{TEMPLATE}/images/support/support-phone.png) no-repeat scroll 0 0;display: block;height: 42px;line-height: 20px;padding-left: 50px;border-bottom:1px dashed #555555;padding-bottom:5px;text-align: center;}
.support-ol .name-phone span {font-weight:bold;}
.support-ol .name-phone span.name {color: red;font-size:16px}
.support-ol .name-phone span.phone {font-size:16px;color:#000;}
.support-ol .email-support {padding: 5px 0;}
.support-ol .email-support div {padding: 3px 0;}
.support-ol .email-support .email {background:url({NV_BASE_SITEURL}themes/{TEMPLATE}/images/icons/email.png) no-repeat scroll 0 center;display:inline-block;height: 16px;line-height: 15px;padding-left: 25px;}
.support-ol .email-support .support {background:url({NV_BASE_SITEURL}themes/{TEMPLATE}/images/yahoo_messenger.png) no-repeat scroll 0 center;display:inline-block;height: 16px;line-height: 15px;padding-left: 25px;}
.contact {background: #fff;margin-top:10px;padding: 8px 0 8px 0px;border:1px dashed #555555;text-align:center;}
.contact a {font-weight:bold;color: #000;}
</style>
<!-- BEGIN: loop -->
<!-- BEGIN: icon -->
	<div class="support-ol">
	<div class="name-phone">
    	<span class="name">{TITLE}</span><br />
        <span class="phone">{PHONE}</span>
    </div>

    <div class="email-support">
	<div class="support">
			<!-- BEGIN: iconyahoo -->
			<a href="ymsgr:sendim?{YHITEM}"><img alt="" src="http://opi.yahoo.com/online?u={YHITEM}&amp;m=g&amp;t={YHTYPE}" width="55"/> </a>
			<!-- END: iconyahoo -->
			<a rel="nofollow" href="mailto:{EMAIL}"><img src="{NV_BASE_SITEURL}themes/{TEMPLATE}/images/support/email.png" alt=""></a>
            <!-- BEGIN: iconskype -->
            <a href="skype:{SKITEM}?chat"> <img alt="" src="http://mystatus.skype.com/{SKTYPE}/{SKITEM}"/> </a>
            <!-- END: iconskype -->
     </div>
    </div></div>
 <!-- END: icon -->  
<!-- END: loop -->
    <div class="contact">
    	<a href="{CONTACT}" title="{LANG.contact}">Liên hệ hợp tác</a>
    </div>
<!-- END: main -->