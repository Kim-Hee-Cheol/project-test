<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" >
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta charset="utf-8">
<title>약관동의</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="referrer" content="no-referrer-when-downgrade">


<script>var PAGEPATH='/accounts/terms/termsOneUi.js';</script>


<link rel="stylesheet" href="https://account.samsung.com/accounts/v1/resources/js/common/angular-block-ui/angular-block-ui.min.css">
<link rel="stylesheet" type="text/css" href="https://account.samsung.com/accounts/v1/resources/css/v2/angular-material.css?20200702062231">
<link rel="stylesheet" type="text/css" href="https://account.samsung.com/accounts/v1/resources/one-ui/css/default.css?20200702062231">


<script type="text/javascript">
//<![CDATA[
	var wipLogicalPath			= "/accounts/v1";
	var wipResourcesVerDt		= "20200702062231";
	var wipCancelURI			= "https://www.samsung.com/sec/?state=GLBgblefcwqs3b";
	var wipGoBackURI			= "https://www.samsung.com/sec/?state=GLBgblefcwqs3b";
	var loLangCD				= "ko";
	var isTextRightAlign		= false;
	var isTextFirstFamilyName	= true;
	var isTextFirstDateYear		= true;
	var wipAcsChnlEnum			= "WEB";
	var wipViewTypeEnum			= "v2";
	var userGeoIPCnty3dgtCd		= "KOR";
	var userAcsCnty3dgtCd		= "KOR";
	var userCnty3dgtCd			= "";
	var wipUriEnum				= "terms";
	var APPNAME					= "DCGLSEC";
	var sJSESSIONID				= "de82034f-888e-42f0-85af-07edcdfb916b";
	var wipCsrf 				= {'token' : '20690347-6415-4e71-b106-a2b5c82bafcb', 'headerName' : 'X-CSRF-TOKEN'};
	var wipResourcesUrl			= "https://account.samsung.com/accounts/v1/resources";
//]]>

    if(userAcsCnty3dgtCd !== "CHN" && userGeoIPCnty3dgtCd !== "CHN"
        && wipResourcesUrl.indexOf("account.samsung.cn") === -1 && wipResourcesUrl.indexOf("chn.account.samsung.com") === -1) {
        var containerId;
        if(wipResourcesUrl.indexOf("sad") !== -1) {
          containerId = 'GTM-KCH2BM6';
        }
        else if(wipResourcesUrl.indexOf("stg") !== -1) {
          containerId = 'GTM-W3S5ZM6';
        }
        else {
          containerId = 'GTM-5C6SNNV';
        }
      (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
            new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
          j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
          'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
      })(window,document,'script','dataLayer', containerId);
    }

	var createPostMessage = function(){

	    var sendPostMessage = function(){
	        console.log("");
	    }

	    if(APPNAME.indexOf("samsung_com_us") !== -1) {
	        if(document.getElementsByClassName('iam-wrapper')[0]) {
	            var pageType = "signin";
	            if(document.querySelector('form[name="signUpForm"]')) {
	                pageType = "signup";
	            } else if (document.querySelector('form[name=findIdForm]')){
	                pageType = "findid";
	            } else if (document.querySelector('form[name=rstPwd]')){
	                pageType = "resetpwd";
	            } else {
	                pageType = "others";
	            }
	            sendPostMessage = function(){
	                window.parent.postMessage({
	                    pageType: pageType
	                }, '*');
	            }
	        }
	    }
	    sendPostMessage();
	    
	}

</script>
<!-- js loading -->
<script src="https://account.samsung.com/accounts/v1/resources/js/common/wip.js?20200702062231"></script>

<script src="https://account.samsung.com/accounts/v1/resources/js/v2/app.js?20200702062231"></script>
<script src="https://account.samsung.com/accounts/v1/resources/js/v2/run.js?20200702062231"></script>

</head>

<script src="https://account.samsung.com/accounts/v1/resources/js/common/wip.js?20200702062231"></script>

<script src="https://account.samsung.com/accounts/v1/resources/js/v2/app.js?20200702062231"></script>
<script src="https://account.samsung.com/accounts/v1/resources/js/v2/run.js?20200702062231"></script>
<script type="text/javascript">(function(){ if (typeof(___zen) === "undefined") {setTimeout(arguments.callee, 50); return; }___zen.hic("__ZEHIC7229", 1593932953, 3, 15, 180); })()</script><script type="text/javascript" async="async" src="/__zenedge/assets/hic.js?v=1586452653"></script></head>
<script type="text/javascript">
	window.document.title = '약관 동의';
</script>

<body data-ng-cloak class="one-card-ui">
<!-- wrap-->
<!-- iam-wrapper -->
<div class="wrapper" data-ng-controller="cmmController as cmm">
	
<header class="one-header">
	<div class="header-inner">
		<div class="logo">
			
		</div>
	</div>
</header>	
	<main class="one-main" data-ng-controller="mainController as vm" data-ng-init="init()">
		<!-- iam-main-inner -->
		<div class="main-inner" role="main"
			 ng-init='
				isTncUSAshowYN=false;
				isDcaShowYN=false;
				isChinaYN=false;
				isDEUYN=false;
				isPPKRshowYN=true;
				wipBannerImageURLJson=[{&#034;appID&#034;:&#034;test0astor&#034;,&#034;nameAliasText&#034;:&#034;Samsung GALAXY Apps&#034;,&#034;imageURLText&#034;:&#034;https://account.samsung.com/membership/mbr/en_US/front/membership/userProfileImage/2012/galaxyapps.png&#034;},{&#034;appID&#034;:&#034;1y90e30264&#034;,&#034;nameAliasText&#034;:&#034;Samsung Health&#034;,&#034;imageURLText&#034;:&#034;https://account.samsung.com/membership/mbr/en_US/front/membership/userProfileImage/2012/shealth.png&#034;},{&#034;appID&#034;:&#034;p88e0pjs14&#034;,&#034;nameAliasText&#034;:&#034;Find My Mobile&#034;,&#034;imageURLText&#034;:&#034;https://account.samsung.com/membership/mbr/en_US/front/membership/userProfileImage/2012/fmm.png&#034;},{&#034;appID&#034;:&#034;mwgl9st5ej&#034;,&#034;nameAliasText&#034;:&#034;PEN.UP&#034;,&#034;imageURLText&#034;:&#034;https://account.samsung.com/membership/mbr/en_US/front/membership/userProfileImage/2012/penup.png&#034;}];
				isAtntdUser=false;
				isGDPRCountry=false;
				isGDPRCountryByMcc=false;
				linkingPartner=""; '>

			<div class="container">
				<div class="title one-title">
					<h1>계정만들기</h1>
				</div>

			<div class="content">
				<div class="signUp-detail">
					<div class="checkBlock" data-ng-show="!isTncUSAshowYN && !isGDPRCountry">
						<form autocomplete="off">
							<fieldset>
								<div class="one-checkBox" >
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;이용약관
								
								</div>
									<div class="text-area" tabindex="0">
								<div class="h3_rules_memo">
주식회사 마포구립 장애인 직업재활센터(이하 ‘회사’라고 함)은 회사에서 제공하는 서비스(이하 ‘서비스’라고 함)를 이용하는 회원님(이하 ‘이용자’라고 함)의 개인정보를 매우 소중하게 생각하고 있으며, 이용자의 개인정보를 보호하기 위하여 최선의 노력을 다하고 있습니다. <br />
<br />
회사는 『정보통신망이용촉진및정보보호등에관한법률』을 비롯한 모든 개인정보보호 관련 법률규정을 준수하고 있으며 회사의 개인정보보호정책을 별도로 제정하고 이를 준수함으로써 이용자의 개인정보를 더욱 보호하고 있습니다. 또한 회사는 개인정보보호정책을 항상 회사 홈페이지 첫 화면에 공개함으로써 이용자들이 언제나 쉽게 열람할 수 있도록 조치하고 있습니다.<br />
<br />
회사의 개인정보보호정책은 관련 법률 및 고시의 변경 또는 내부 운영방침의 변경에 따라 변경될 수 있습니다. 회사의 개인정보보호정책이 수정될 경우 변경된 사항은 홈페이지를 통하여 공지합니다. 주식회사 마포구립 장애인 직업재활센터 (이하 ‘회사’라고 함) 은 회사에서 제공하는 서비스 (이하 ‘서비스’라고 함) 를 이용하는 회원님 (이하 ‘이용자’라고 함) 의 개인정보를 매우 소중하게 생각하고 있으며, 이용자의 개인정보를 보호하기 위하여 최선의 노력을 다하고 있습니다. <br />
회사는 『정보통신망이용촉진및정보보호등에관한법률』을 비롯한 모든 개인정보보호 관련 법률규정을 준수하고 있으며 회사의 개인정보보호정책을 별도로 제정하고 이를 준수함으로써 이용자의 개인정보를 더욱 보호하고 있습니다. 또한 회사는 개인정보보호정책을 항상 회사 홈페이지 첫 화면에 공개함으로써 이용자들이 언제나 쉽게 열람할 수 있도록 조치하고 있습니다.<br />
<br />
회사의 개인정보보호정책은 관련 법률 및 고시의 변경 또는 내부 운영방침의 변경에 따라 변경될 수 있습니다. 회사의 개인정보보호정책이 수정될 경우 변경된 사항은 홈페이지를 통하여 공지합니다. <br /></div>
								</div>
							</fieldset>
						</form>
					</div>
					<div class="checkBlock" data-ng-show="!isTncUSAshowYN && !isGDPRCountry" >
						<form autocomplete="off">
							<fieldset>
								<div class="one-checkBox" >
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;개인정보 수집 및 이용
								</div>
								<div class="text-area" tabindex="0" data-ng-show="isPPKRshowYN" ng-bind-html="pplegalContents" compilehtml>
								<div class="h4_rules_memo">
주식회사 마포구립 장애인 직업재활센터(이하 ‘회사’라고 함)은 회사에서 제공하는 서비스(이하 ‘서비스’라고 함)를 이용하는 회원님(이하 ‘이용자’라고 함)의 개인정보를 매우 소중하게 생각하고 있으며, 이용자의 개인정보를 보호하기 위하여 최선의 노력을 다하고 있습니다. <br />
<br />
회사는 『정보통신망이용촉진및정보보호등에관한법률』을 비롯한 모든 개인정보보호 관련 법률규정을 준수하고 있으며 회사의 개인정보보호정책을 별도로 제정하고 이를 준수함으로써 이용자의 개인정보를 더욱 보호하고 있습니다. 또한 회사는 개인정보보호정책을 항상 회사 홈페이지 첫 화면에 공개함으로써 이용자들이 언제나 쉽게 열람할 수 있도록 조치하고 있습니다.<br />
<br />
회사의 개인정보보호정책은 관련 법률 및 고시의 변경 또는 내부 운영방침의 변경에 따라 변경될 수 있습니다. 회사의 개인정보보호정책이 수정될 경우 변경된 사항은 홈페이지를 통하여 공지합니다. 주식회사 마포구립 장애인 직업재활센터 (이하 ‘회사’라고 함) 은 회사에서 제공하는 서비스 (이하 ‘서비스’라고 함) 를 이용하는 회원님 (이하 ‘이용자’라고 함) 의 개인정보를 매우 소중하게 생각하고 있으며, 이용자의 개인정보를 보호하기 위하여 최선의 노력을 다하고 있습니다. <br />
회사는 『정보통신망이용촉진및정보보호등에관한법률』을 비롯한 모든 개인정보보호 관련 법률규정을 준수하고 있으며 회사의 개인정보보호정책을 별도로 제정하고 이를 준수함으로써 이용자의 개인정보를 더욱 보호하고 있습니다. 또한 회사는 개인정보보호정책을 항상 회사 홈페이지 첫 화면에 공개함으로써 이용자들이 언제나 쉽게 열람할 수 있도록 조치하고 있습니다.<br />
<br />
회사의 개인정보보호정책은 관련 법률 및 고시의 변경 또는 내부 운영방침의 변경에 따라 변경될 수 있습니다. 회사의 개인정보보호정책이 수정될 경우 변경된 사항은 홈페이지를 통하여 공지합니다. <br /></div>
								</div>
</fieldset>
						</form>
					</div>
                    <div class="bar" data-ng-show="!isTncUSAshowYN && !isDEUYN && !isGDPRCountry"><hr></div>
                    <div class="checkBlock agree-step" data-ng-show="!isTncUSAshowYN && !isDEUYN && !isGDPRCountry">
                    <div class="one-checkBox">
                        <input autocomplete="off" id="iptTncAll" type="checkbox" data-ng-model="iptTncAll" data-ng-click="showTermsLink($event)">
                        <label for="iptTncAll" id="agreement1"><span></span>이용약관과 개인정보처리방침에 동의합니다.</label>
                        
                    </div>
                    </div>

				</div>
				</div>
                <!-- //contents -->
			</div>
            <div class="under-content">
                
                <div class="one-btn-container mbr_aggreTerms">
                   <a href="./join02.jsp" id="Step2Btn" class="btn blue">다음</a>
                </div>
            </div>
			</div>


		<!-- //iam-main-inner -->
	</main>
	<!-- footer -->
	
	<!-- footer -->
	<footer class="one-footer" role="contentinfo">
		<div class="footer-inner">
			<div class="footer-logo"><img src="https://account.samsung.com/accounts/v1/resources/one-ui/images/layout/txt_foo_logo.png" onerror="this.src='https://account.samsung.com/accounts/v1/resources/one-ui/images/layout/txt_foo_logo.png';" alt="Samsung account"></div>
			<address class="footer-address">© Samsung Electronics Co., Ltd.</address>
			<div class="footer-links" role="link">
				<a href="https://account.samsung.com/membership/terms/termscontents" title="Open links in a new window Terms and Conditions">이용약관</a>
				<a href="https://account.samsung.com/membership/terms/privacypolicy" title="Open links in a new window Privacy Policy" class="active">개인정보 처리방침</a>
				<a href="https://account.samsung.com/membership/notice" title="Open links in a new window Notices">공지</a>
				<a href="https://help.content.samsung.com/csweb/faq/searchFaq.do" title="Open links in a new window Contact us">문의하기</a>
			</div>
		</div>
	</footer>
	<!-- //footer -->
	<!-- //footer -->
</div>
<!--//pageWrap -->


<script src="https://account.samsung.com/accounts/v1/resources/one-ui/js/common/jquery/jquery.min.js"></script>

<script>
  window.onload = function(){

    inputEvent();
    if($('form').find(':input')[0]!==undefined){
      $(':focus').blur();
      $('form').find(':input')[0].focus();
    }
  };

  
  var inputEvent = function() {
    var $inputs = $('form').find(':input');
    $inputs.each(function() {
      var $input = $(this),
          $label = $input.parent('div.one-input-container');
      if ($input.val())
        $label.addClass('active');

      $input.focusin(function() {
        $label.addClass('focus');
        $label.siblings('div.flexbdy').addClass('off');
      });
      $input.change(function() {
        $label.addClass('active');
      });
      $input.focusout(function() {
        $label.removeClass('focus');

        if (!$input.val()) $label.removeClass('active').siblings('div.flexbdy').removeClass('off');
      });
    }
    );
  }
</script>


<script>(function () { var v = 1593933700 * 3.1415926535898; v = Math.floor(v); document.cookie = "__zjc4690="+v+"; expires=Sun, 05 Jul 2020 07:22:40 UTC; path=/"; })()</script>
</body>
</html>
