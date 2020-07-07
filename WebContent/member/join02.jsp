<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml">

    <head>
        

        
    <title>회원가입</title>


        
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=3,minimum-scale=1,user-scalable=yes,viewport-fit=cover">
    <link rel="shortcut icon" href="https://static.msscdn.net/favicon.ico?20200701180800" type="image/x-icon"/>

        
        <!-- Google Tag Manager -->
        <script>
            var dataLayer = dataLayer || [];
            window.addEventListener("load", function() {
                var memberGA = null;
                if (memberGA != null && memberGA.dimension1 != "0") {
                    dataLayer.push(memberGA);
                }

                (function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
                        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
                    j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
                    'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
                })(window,document,'script','dataLayer','GTM-TXDSFSF');
            }, false);
        </script>
        <!-- End Google Tag Manager -->

    
        

    <link rel="stylesheet" type="text/css" href="https://static.msscdn.net/ui/musinsa/resources/common/css/icon.min.css?20200701180800" />
    <link rel="stylesheet" href="https://static.msscdn.net/ui/musinsa/resources/mw/css/guide.min.css?20200701180800">
    <link rel="stylesheet" href="https://static.msscdn.net/ui/musinsa/resources/mw/css/layout.min.css?20200701180800">
    <link rel="stylesheet" href="https://static.msscdn.net/ui/musinsa/resources/mw/css/member.min.css?20200701180800">


        

    <script src="https://static.msscdn.net/static/member/js/jquery-3.4.1.min.js?20200701180800" type="text/javascript"></script>
    

    <script>
        var THIS_PAGE_GF = "" ;
        var USE_GLOBAL_FILTER = "N";

        function appInterfaceOnloadFunc() {
            var isApp = false;
            var serviceCode = "M".toLowerCase();

            if (!isApp) {
                return false;
            }

            AppInterface.setBottomMenu(serviceCode);

            var isLowerVersion = _AppInfo.LowerVersion('2.22.0');
            if (isLowerVersion) {
                setSkinForLowerVersion();
            }
            return false;

            function setSkinForLowerVersion() {
                $(".musinsa-wrapper").attr("class", "musinsa-wrapper wrapper-" + mss.ui.config.get().service);

                var mainUrl = getMainUrl(serviceCode);
                $(".util.right > a").attr("href", mainUrl);
            }

            function getMainUrl (serviceCode) {
                switch (serviceCode) {
                    case "m":
                        return "https:\/\/m.store.musinsa.com";
                    case "w":
                        return "https:\/\/mwusinsa.musinsa.com";
                    case "p":
                        return "https:\/\/mplayer.musinsa.com";
                    default:
                        return "https:\/\/m.store.musinsa.com";
                }
            }


        }

        // Microsoft
        if (window.attachEvent) {
            window.attachEvent('onload', appInterfaceOnloadFunc);
        }
        // W3C standard
        else {
            window.addEventListener('load', appInterfaceOnloadFunc, false); // NB **not** 'onload'
        }
    </script>
    <script src="https://static.msscdn.net/skin/m_musinsa/js/appinterface.js?20200701180800" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/appinterface-member.js?20200701180800" type="text/javascript"></script>


    <script src="https://static.msscdn.net/static/member/js/constant.js?20200701180800" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/ui/config.js?20200701180800" type="text/javascript"></script>
    <script src="https://static.msscdn.net/static/member/js/ui.js?20200701180800" type="text/javascript"></script>
    <script type="text/javascript" src="https://static.msscdn.net/static/member/js/backforward.js?20200701180800"></script>
    <script>
        // mss.ui.config 내의 기본 속성값을 대치하기 위한 Object
        // 서버쪽에서 출력해 줘야 합니다.

        var uiConfig = {
            service: 'musinsa',
            skinServiceName: 'musinsa',
            serviceCode: 'M',
            serviceUrl: 'https://store.musinsa.com',
            magazineUrl: 'https://www.musinsa.com',
            storeUrl: 'https://store.musinsa.com',
            wusinsaUrl: 'https://wusinsa.musinsa.com',
            playerUrl: 'https://player.musinsa.com',
            memberResourceUrl: 'https://static.msscdn.net',
            imageResourceUrl: 'https://image.msscdn.net',
            staticResourceUrl: 'https://static.msscdn.net',
            staticResourceVersion: '20200701180800',
            currentDate: ''
        };
        mss.ui.config.set(uiConfig);

        // 본인인증 팝업 X 버튼 클릭시
        function selfCertifyBackBtn() {
            self.close();
        }
        Date.prototype.format = function(f) {
            if (!this.valueOf()) return " ";

            var weekName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
            var d = this;

            return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
                switch ($1) {
                    case "yyyy": return d.getFullYear();
                    case "yy": return (d.getFullYear() % 1000).zf(2);
                    case "MM": return (d.getMonth() + 1).zf(2);
                    case "dd": return d.getDate().zf(2);
                    case "E": return weekName[d.getDay()];
                    case "HH": return d.getHours().zf(2);
                    case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
                    case "mm": return d.getMinutes().zf(2);
                    case "ss": return d.getSeconds().zf(2);
                    case "a/p": return d.getHours() < 12 ? "오전" : "오후";
                    default: return $1;
                }
            });
        };

        String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
        String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
        Number.prototype.zf = function(len){return this.toString().zf(len);};


    </script>

    <script src="https://static.msscdn.net/static/member/js/ajax.js?20200701180800" type="text/javascript"></script>

        

    <script type="text/javascript">

        // Called when my app has identified the user.
        authenticated = function (appInsights, signInId) {
            if (signInId != '') {
                var validatedId = signInId.replace(/[,;=| ]+/g, "_");
                appInsights.setAuthenticatedUserContext(validatedId);
            }
        }

        var sdkInstance = "appInsightsSDK";
        window[sdkInstance] = "appInsights";
        var aiName = window[sdkInstance], aisdk = window[aiName] || function (e) {
            function n(e) {
                t[e] = function () {
                    var n = arguments;
                    t.queue.push(function () {
                        t[e].apply(t, n)
                    });
                }
            }

            var t = {config: e};
            t.initialize = !0;
            var i = document, a = window;
            setTimeout(function () {
                var n = i.createElement("script");
                n.src = e.url || "https://az416426.vo.msecnd.net/scripts/b/ai.2.min.js", i.getElementsByTagName("script")[0].parentNode.appendChild(n)
            });
            try {
                t.cookie = i.cookie
            } catch (e) {
            }
            t.queue = [], t.version = 2;
            for (var r = ["Event", "PageView", "Exception", "Trace", "DependencyData", "Metric", "PageViewPerformance"]; r.length;) n("track" + r.pop());
            n("startTrackPage"), n("stopTrackPage");
            var s = "Track" + r[0];
            if (n("start" + s), n("stop" + s), n("addTelemetryInitializer"), n("setAuthenticatedUserContext"), n("clearAuthenticatedUserContext"), n("flush"), t.SeverityLevel = {
                Verbose: 0,
                Information: 1,
                Warning: 2,
                Error: 3,
                Critical: 4
            }, !(!0 === e.disableExceptionTracking || e.extensionConfig && e.extensionConfig.ApplicationInsightsAnalytics && !0 === e.extensionConfig.ApplicationInsightsAnalytics.disableExceptionTracking)) {
                n("_" + (r = "onerror"));
                var o = a[r];
                a[r] = function (e, n, i, a, s) {
                    var c = o && o(e, n, i, a, s);
                    return !0 !== c && t["_" + r]({message: e, url: n, lineNumber: i, columnNumber: a, error: s}), c
                }, e.autoExceptionInstrumented = !0
            }
            return t
        }(
            {
                instrumentationKey: '8a438365-9092-4204-b21b-01ead487ce1e'
            }
        );
        window[aiName] = aisdk, aisdk.queue && 0 === aisdk.queue.length && aisdk.trackPageView({});

        authenticated(window[aiName], '');

        try {
            var filter = ["hotjar.io", "doubleclick.net"];
            var filteringFunction = function(envelope) {
                var filterNum = 0;
                var target = envelope.baseData.target;
                filter.forEach(function(item) {
                    var indexNum = target.indexOf(item);
                    if(indexNum > 0) {
                        filterNum = indexNum;
                    }
                });

                if (filterNum > 0) {
                    return false;
                }
                return true;
            };
            appInsights.addTelemetryInitializer(filteringFunction);
        } catch(err) {
            console.error(err);
        }
    </script>


        

    </head>

    <body>
        
    <div class="musinsa-wrapper wrapper-member">
        <h1 class="n-hidden">무신사 스토어</h1>

        <!-- Member -->
        <div class="n-member-area form-area">

            <form class="formBox" name="joinForm" id="joinForm" action="/member/v2/join/complete" method="post" novalidate>
                <input type="hidden" name="checkId" value="0">
                <input type="hidden" name="checkPassword" value="0">
                <input type="hidden" name="checkConfirmPassword" value="0">
                <input type="hidden" name="checkEmail" value="0">
                <input type="hidden" name="checkRecommendMemberId" value="0">
                <input type="hidden" name="checkPhoneNumber" value="0">
                <input type="hidden" name="joinToken" value="608ac0790e8a1d61fea83edb615acd424c2d69aa"/>
                <input type="hidden" name="joinPath" value=""/>
                <input type="hidden" name="eventToken" value=""/>
                <input type="hidden" id="partnerCode" name="partnerCode" value=""/>

                <!-- Header -->
                <header class="member-header">
                    <div class="logo">
               
                    </div>
                    <h2 class="title-join">회원가입</h2>
                    <button type="button" class="btn-back" onclick="location.href='./join01.jsp'"><i class="ic-30-line-arrow-left">이전 페이지로 이동</i></button>
                </header>
                <!-- //Header -->

                <!-- Join Form -->
                <div class="join-form">
                    <div class="n-form-set">
                        <label for="memberId" class="n-form-label">아이디 <span class="essential">필수 입력</span></label>
                        <input type="text" class="n-input input" id="memberId" name="memberId" placeholder="아이디 입력(5~11자)" minlength="5" maxlength="11">
                        <p class="n-validation" id="hLayerid"></p>
                    </div>
                    <div class="n-form-set">
                        <label for="password" class="n-form-label">비밀번호 <span class="essential">필수 입력</span></label>
                        <div class="n-form-icon">
                            <input type="password" class="n-input input" id="password" name="password" minlength="8" autocomplete="new-password"
                                   placeholder="비밀번호(숫자,영문,특수문자 조합 최소8자)">
                            <p class="n-validation" id="passwordValidMessage"></p>
                            <button type="button" class="btn" onclick="togglePassword('password', this);" >
                                <i class="ic-30-solid-show ic-gray5">비밀번호 보기</i>
                            </button>
                        </div>
                        <div class="n-form-icon">
                            <input type="password" class="n-input input" id="confirmPassword" name="confirmPassword" autocomplete="new-password"
                                   minlength="8" placeholder="비밀번호 확인">
                            <p class="n-validation" id="passwordConfirmValidMessage"></p>
                            <button type="button" class="btn" onclick="togglePassword('confirmPassword', this);">
                                <i class="ic-30-solid-show ic-gray5">비밀번호 보기</i>
                            </button>
                        </div>
                    </div>
                    <div class="n-form-set">
                        <label for="name" class="n-form-label">이름 <span class="essential">필수 입력</span></label>
                        <input type="text" class="n-input input" id="name" name="name" placeholder="이름입력" minlength="2" maxlength="4">
                        <p class="n-validation" id="hLayername"></p>
                    </div>
                    
                     <div class="n-form-set">
                        <label for="name" class="n-form-label">주민번호 <span class="essential">필수 입력</span></label>
                        <input type="text" class="n-input input" id="jumin1" name="jumin1" maxlength="6">&nbsp;-&nbsp;
                        <input type="text" class="n-input input" id="jumin2" name="jumin2" maxlength="7">
                        <p class="n-validation" id="hLayerjumin"></p>
                    </div>
                    
                    <div class="n-form-set">
                        <label for="email" class="n-form-label">이메일 <span class="essential">필수 입력</span></label>
                        <div class="n-form-layer" id = "emailFromLayer">
                            <input type="email" class="n-input input" id="email" name="email" maxlength="50" placeholder="이메일" autocomplete="off">
                            <p class="n-validation" id="hLayeremail"></p>
                            <ul id="emailDomainList" class="layer">
                                <li><button type="button"><span></span><em>naver.com</em></button></li>
                                <li><button type="button"><span></span><em>gmail.com</em></button></li>
                                <li><button type="button"><span></span><em>hanmail.net</em></button></li>
                                <li><button type="button"><span></span><em>nate.com</em></button></li>
                                <li><button type="button"><span></span><em>daum.net</em></button></li>
                            </ul>
                        </div> 
                    </div>
                </div>

                <div id="joinBtnDiv" class="member-btn">
                    <button type="submit" id="joinBtn" class="n-btn btn-primary">가입완료</button>
                </div>
            </form>
        </div>
    </div>


    </body>
    

    <script type="text/javascript">
        var isPassMemberId = false;
        var isPassPassword = false;
        
        var isPassName = false;
        var isPassEmail = false;
        var isPassAgree = false;

        var joinBtnActive = function (isActive) {
            $("#joinBtn").attr("class", "n-btn btn-primary" + (!isActive ? " disabled" : ""));
        };

        function validateLengthMemberIdWhenKeyup() {
            $('#memberId').val($('#memberId').val().trim());
            var $memberId = $('#memberId');
            if ($memberId.val().length > 11) {
                var limitMemberId = $memberId.val().substring(0, 11);
                $memberId.val(limitMemberId);
            }
        }

        function validateMemberId() {
            if (!validationMemberIdHandler()) {
                joinBtnActive(false);
                isPassMemberId = false;
                return false;
            }

            isPassMemberId = true;
            if (isPassJoin()) {
                joinBtnActive(true);
            }
           


            function validationMemberIdHandler() {
                var $memberId = $('#memberId');

                $("input[name='checkId']").val('0');

                if ($memberId.val().length === 0) {
                    $("#hLayerid")
                        .removeClass('validation-passed')
                        .html('아이디는 필수정보 입니다.');
                    $memberId.attr('class', 'n-input input-danger');
                    return false;
                }
                if ($memberId.val().length < 5) {
                    $("#hLayerid")
                        .removeClass('validation-passed')
                        .html('아이디는 5자 이상이어야 합니다.');
                    $memberId.attr('class', 'n-input input-danger');
                    return false;
                } else {
                    $("#hLayerid").html('');
                    $memberId.attr('class', 'n-input input');
                }

                if (!checkIdValue($memberId.val())) {
                    $("#hLayerid")
                        .removeClass('validation-passed')
                        .html('아이디는 영문소문자, 숫자, 특수기호(_)만 사용 가능합니다.');
                    $memberId.attr('class', 'n-input input-danger');
                    return false;
                }

                var isResult = false;
                mss.my.ajax.call(
                    {
                        async: false,
                        type: 'POST',
                        url: '/api/member/v2/join/memberId/exist',
                        data : {
                            'memberId' : $memberId.val()
                        },
                        success: function (response) {
                            var success = response.success;

                            if (success) {
                                $("input[name='checkId']").val('1');
                                $memberId.attr('class', 'n-input input');
                                $('#hLayerid').attr("class", "n-validation validation-passed");
                                $("#hLayerid").html(response.message);
                                isResult = true;
                                return true;
                            } else {
                                $("input[name='checkId']").val('0');
                                $("#hLayerid")
                                    .removeClass('validation-passed')
                                    .html(response.message);
                                $memberId.attr('class', 'n-input input-danger');
                                return false;
                            }
                        }
                    }, false
                );
                return isResult;
            }
        }
        
        
        


        function validatePassword() {
            var password = $("#password").val().trim();
            $("input[name='password']").val('');
            $("input[name='password']").val(password);

            $("input[name='checkPassword']").val('0');

            if (password === '') {
                $('#passwordValidMessage').html('비밀번호는 필수정보입니다.');
                $("input[name='password']").attr('class', 'n-input input-danger');
                $("input[name='confirmPassword']").attr('class', 'n-input input');
                $("#passwordConfirmValidMessage").html('');
                isPassPassword = false;
                joinBtnActive(false);
                return;
            }

            if (!passwordValidCheck(password)) {
                isPassPassword = false;
                joinBtnActive(false);
                return;
            }

            var isCheckValidPassword = callCheckValidPassword($("#password"));
            if (!isCheckValidPassword) {
                isPassPassword = false;
                joinBtnActive(false);
                return;
            }

            var confirmPassword = $('#confirmPassword').val();

            if (confirmPassword !== '' && password.length > 7) {
                if (password !== confirmPassword) {
                    $("input[name='confirmPassword']").attr('class', 'n-input input-danger');
                    $("#passwordConfirmValidMessage").html('비밀번호가 일치하지 않습니다.');
                    isConfirmPassPassword = false;
                    joinBtnActive(false);
                    return;
                } else {
                    $("input[name='confirmPassword']").attr('class', 'n-input input');
                    $("#passwordConfirmValidMessage").html('');

                    isPassPassword = true;
                    isConfirmPassPassword = true;
                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
                    
                }
            }


            function passwordValidCheck(pw) {
                var $msgObj = $('#passwordValidMessage');
                var has_letter = new RegExp("[a-z]");
                var has_caps = new RegExp("[A-Z]");
                var has_numbers = new RegExp("[0-9]");
                var has_symbols = new RegExp(/[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>₩@\#$%&\\\=\(\'\"]/gi);
                var pob = 0;

                if(has_letter.test(pw)) {
                    pob++;
                }
                if (has_caps.test(pw)) {
                    pob++;
                }
                if (has_numbers.test(pw)) {
                    pob++;
                }
                if (has_symbols.test(pw)) {
                    pob++;
                }

                if(!pw) {
                    $msgObj.html("<font>비밀번호는 필수정보입니다.</font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

               
                if (pw.length < 8 || pw.length > 20) {  
                    $msgObj.html("<font>8~20자 이내로 입력해 주십시오.<font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

                var isContainBlank = $("#password").val().indexOf(" ");
                if (isContainBlank != -1) {
                    $msgObj.html("<font>숫자 ,영문 대소문자, 특수문자 중 두가지 이상으로 조합해 주십시오.<font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

                if(pob <= 1) {
                    $msgObj.html("<font>숫자 ,영문 대소문자, 특수문자 중 두가지 이상으로 조합해 주십시오.<font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

                if(samePassword(pw)) {
                    $msgObj.html("<font>동일문자를 반복해서 4자 이상 사용할 수 없습니다.<font>");
                    $("input[name='password']").attr('class', 'n-input input-danger');
                    return false;
                }

                $msgObj.html("");
                $("input[name='password']").attr('class', 'n-input input');
                return true;
            }

            function samePassword(password) {
                var wordRegExp = new RegExp("(\\w)\\1\\1\\1");
                var specialWordRegExp = new RegExp("(\\([~!@#$%^&*()_+|<>?:{}])\\1\\1\\1");
                return wordRegExp.test(password) || specialWordRegExp.test(password);
            }

            function callCheckValidPassword(password) {
                var invalidPassword = false;

                mss.my.ajax.call(
                    {
                        async:false,
                        type: 'GET',
                        url: '/api/member/v2/join/validation/password',
                        async: false,
                        data : {
                            password : password.val()
                        },
                        success: function (response) {
                            var success = response.success;

                            if (success) {
                                $("input[name='checkPassword']").val('1');
                                $("input[name='password']").attr('class', 'n-input input');
                                invalidPassword = true;
                                isPassPassword = true;
                            } else {
                                $("#passwordValidMessage")
                                    .removeClass('validation-passed')
                                    .html(response.message);
                                $("input[name='password']").attr('class', 'n-input input-danger');
                                invalidPassword = false;
                                isPassPassword = false;
                            }
                        }
                    }, false
                );

                return invalidPassword;
            }
        }

        function validateConfirmPassword() {
            $("input[name='checkConfirmPassword']").val('0');
            var password = $('#password').val();
            var confirmPassword = $('#confirmPassword').val().trim();
            $("#confirmPassword").val('');
            $("#confirmPassword").val(confirmPassword);

            if (password !== '' && password.length > 7) {
                if (confirmPassword === '') {
                    $("input[name='confirmPassword']").attr('class', 'n-input input-danger');
                    $("#passwordConfirmValidMessage").html('비밀번호 재확인은 필수정보입니다.');
                    isConfirmPassPassword = false;
                    joinBtnActive(false);
                } else if (password !== confirmPassword) {
                    $("input[name='confirmPassword']").attr('class', 'n-input input-danger');
                    $("#passwordConfirmValidMessage").html('비밀번호가 일치하지 않습니다.');
                    isConfirmPassPassword = false;
                    joinBtnActive(false);
                } else {
                    $("input[name='confirmPassword']").attr('class', 'n-input input');
                    $("#passwordConfirmValidMessage").html('');
                    $("input[name='checkConfirmPassword']").val('1');
                    isConfirmPassPassword = true;

                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
                }
            }
        }

        function validateEmail () {

            var trimedEmail = $("#email").val().trim();
            $("#email").val('');
            $("#email").val(trimedEmail);

            $("#emailDomainList").hide();

            if (!$("#email").val()) {
                $("#hLayeremail")
                    .removeClass('validation-passed')
                    .html('이메일은 필수정보입니다.');
                $("input[name='email']").attr('class', 'n-input input-danger');
                isPassEmail = false;
                joinBtnActive(false);
            } else {
                // 이메일 유효성 체크
                var email = $("#email").val();
                var isInvalidEmail = email.indexOf('\@') === -1 || email.indexOf('.') === -1;

                if (isInvalidEmail) {
                    $("input[name='checkEmail']").val("0");
                    $("input[name='email']").attr('class', 'n-input input-danger');
                    $("#hLayeremail")
                        .removeClass('validation-passed')
                        .html("이메일 주소가 올바르지 않습니다.");
                    isPassEmail = false;
                    joinBtnActive(false);
                    return false;
                } else {
                    mss.my.ajax.call(
                        {
                            async: false,
                            url: '/api/member/v2/join/email/'+ $("#email").val().trim() + '/exist',
                            method: 'GET',
                            dataType: 'json',
                            success: function (response) {
                                $("#email").removeClass('valid');
                                if (response.success) {
                                    $("input[name='checkEmail']").val("1");
                                    $("input[name='email']").attr('class', 'n-input input');
                                    $("#hLayeremail").html(response.message);
                                    $('#hLayeremail').attr("class", "n-validation validation-passed");
                                    isPassEmail = true;
                                    if (isPassJoin()) {
                                        joinBtnActive(true);
                                    }
                                } else {
                                    $("input[name='checkEmail']").val("0");
                                    $("input[name='email']").attr('class', 'n-input input-danger');
                                    $("#hLayeremail")
                                        .removeClass('validation-passed')
                                        .html(response.message);
                                    isPassEmail = false;
                                    joinBtnActive(false);
                                }
                            }
                        }
                        , false
                    );
                }
            }
            $("#emailFromLayer").attr("class","n-form-layer");
            return false;
        }
        
        function validateRecommendId() {
            <!-- 추천인 -->
            var recommendMemberId = $('#recommendMemberId').val();
            if(!recommendMemberId || recommendMemberId == '') {
                return true;
            }

            //추천인이 있는 경우
            var checkRecommendMemberId = $("input[name='checkRecommendMemberId']").val();
            if (checkRecommendMemberId !== '1') {
                //추천인을 조회하지 않은 경우
                recommendIdSearchFailCallback('입력한 추천 아이디를 조회해주세요.');
                return false;
            }

            //추천인을 조회한 경우
            $("#hLayerRecommendMemberId").html('');
            $("#recommendMemberId").removeClass('valid');
            $("#recommendMemberIdSearch").text('삭제');
            return true;
        }

        function recommendIdSearchFailCallback(resultMessage) {
            $("#hLayerRecommendMemberId").html(resultMessage ? resultMessage : '사용할 수 없는 추천인 아이디입니다.');
            $("#hLayerRecommendMemberId").css('display','block');
            $("#hLayerRecommendMemberId").css('color','#ff0000');
            $("input[name='checkRecommendMemberId']").val("0");
            $("#recommendMemberId").focus();
            $("input[name='recommendMemberId']").attr('class', 'n-input input-danger');
        }

        function isPassJoin() {
            if ($("#recommendMemberId").val() && $("input[name='checkRecommendMemberId']").val() !== '1') {
                return false;
            }

            return isPassMemberId && isPassPassword && isConfirmPassPassword && isPassEmail && isPassAgree;
        }

      
        function togglePassword(_id, _this) {
            var _password = $("#" + _id);
            if (_password.attr("type") == "password") {
                _password.attr("type", "text");
                _this.childNodes[1].className = 'ic-30-solid-hide ic-gray5';
            } else {
                _password.attr("type", "password");
                _this.childNodes[1].className = 'ic-30-solid-show ic-gray5';
            }
        }

        function moveScrollToTargetElement(elementId) {
            try {
                var offset = $('#' + elementId).offset();
                var winH = $(window).height();
                $('html, body').animate({scrollTop : (offset.top - winH/2) }, 100);
            } catch (e) {
                var bodyOffSet = $('body').offset();
                $('html, body').animate({scrollTop : (bodyOffSet.top - winH/2) }, 100);
            }
        }

        var mouseFlag = true;
        $(document).ready(function () {

            function validateAllData(e) {
                validateMemberId();
                validatePassword();
                validateConfirmPassword();
                validateEmail();

                if (!isPassMemberId) {
                    moveScrollToTargetElement("memberId");
                    $("#memberId").focus();
                    return false;
                }
                if(!isPassPassword) {
                    moveScrollToTargetElement('password');
                    $("#password").focus();
                    return false;
                }
                if(!isConfirmPassPassword) {
                    moveScrollToTargetElement('confirmPassword');
                    $("#confirmPassword").focus();
                    return false;
                }
                if(!isPassEmail) {
                    moveScrollToTargetElement('email');
                    $("#email").focus();
                    return false;
                }
                return validateRecommendId();
            }

            initSessionStorage();

            var isSubmit = true;
            $("#joinBtnDiv").on('mousedown', function (e) {
                e.preventDefault();
            }).on('click', '#joinBtn', function (e) {

                e.preventDefault();

                if (isSubmit) {
                    if(!validateAllData()) {
                        return false;
                    }

                    joinBtnActive(false);
                    $("#joinForm").submit();
                    isSubmit = false;
                }

                return false;
            });

            $('#emailFromLayer').mousedown(function(){
                mouseFlag = false;
            });
            $('#emailFromLayer').mouseup(function(){
                mouseFlag = true;
            });


            $("#emailFromLayer ul").on("click","li button",function(e) {
                e.preventDefault();
                $("#email").val($(this).text());

                validateEmail();
                return false;
            });

            $('#memberId').on("keyup", validateLengthMemberIdWhenKeyup);
            $('#memberId').on("blur", validateMemberId);
            $("#password").on("blur", validatePassword);
            $("#confirmPassword").on("blur", validateConfirmPassword);
            $("#email").on("blur", function(e){
                if(!mouseFlag) {
                    return false;
                }
                validateEmail();
            });
            $("#email").on("keyup", function(e) {
                var value = e.currentTarget.value;
                if (value.length > 1 && value[value.length-1] == "@") {
                    $("#emailFromLayer ul > li button span").text(value);
                }

                if(value.indexOf("@") != -1){
                    e.target.parentElement.className = "n-form-layer is-active";
                    $("#emailDomainList").show();
                    $("#emailDomainList li").show();
                    var inputDomain = $("#email").val().split('@')[1];
                    var emailId = $("#email").val().split('@')[0];
                    $("#emailFromLayer ul > li button span").text(emailId + '@');
                    $("#emailDomainList li em").each(function () {
                        if ($(this).text().indexOf(inputDomain) == -1) {
                            $(this).parents('li').hide();
                        }
                    });
                } else {
                    e.target.parentElement.className = "n-form-layer";
                }
            });

            $("#memberId, #password, #confirmPassword, #recommendMemberId").focusin(function () {
                $("#emailFromLayer").removeClass('is-active');
            });

            $("#agreementDivArea label").click(function () {
                $("#emailFromLayer").removeClass('is-active');
            });

             
            });

            $("#checkAll").on("change", function () {
                if ($('#checkAll').prop("checked")) {
                    $('.n-check').prop('checked', true);
                    isPassAgree = true;
                    
                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
  
                } else {
                    $('.n-check').prop('checked', false);
                    isPassAgree = false;
                    joinBtnActive(false);
                }
            });


            $(".agree-item").click(function () {

                var isCheckAll = $("#checkAll").prop("checked");
                var requiredSelectedCnt = $('.required-agree-item:checked').length;
                var optionalSelectedCnt = $('.optional-agree-item:checked').length;
                var selectedCnt = requiredSelectedCnt + optionalSelectedCnt;
                var allAgreeCnt = 4;

                if (isCheckAll && selectedCnt != allAgreeCnt) {
                    $("#checkAll").prop("checked", false);
                }


                if (selectedCnt === allAgreeCnt) {
                    $("#checkAll").prop("checked", true);
                    isPassAgree = true;
                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
                }

                if (requiredSelectedCnt == 3) {
                    isPassAgree = true;
                    if (isPassJoin()) {
                        joinBtnActive(true);
                    }
                   
                }

                if (requiredSelectedCnt != 3) {
                    joinBtnActive(false);
                    isPassAgree = false;
                }

            });

        //document.ready end #######

        function initSessionStorage() {
            $("#memberId").val(sessionStorage.getItem("memberId"));
            $("#password").val(sessionStorage.getItem("password"));
            $("#confirmPassword").val(sessionStorage.getItem("confirmPassword"));
            $("#email").val(sessionStorage.getItem("email"));

            if (!$("#recommendMemberId").val()) {
                $("#recommendMemberId").val(sessionStorage.getItem("recommendMemberId"));
            }


            if (sessionStorage.getItem("checkRecommendMemberId") === '1') {
                $(".self-certify-notification").css('display','block');
                $("input[name='recommendMemberId']").attr('class', 'n-input input');
                $("input[name='checkRecommendMemberId']").val('1')

            }

            var invalidMsg = sessionStorage.getItem("memberIdInvalidMsg");
            if (invalidMsg) {
                $("#hLayerid").html(invalidMsg);
                $("#memberId").attr('class', 'n-input input-danger');
            }

            invalidMsg = sessionStorage.getItem("passwordInvalidMsg");
            if (invalidMsg) {
                $("#passwordValidMessage").html(invalidMsg);
                $("input[name='password']").attr('class', 'n-input input-danger');
            }

            invalidMsg = sessionStorage.getItem("confirmPasswordInvalidMsg");
            if (sessionStorage.getItem("confirmPasswordInvalidMsg")) {
                $("#passwordConfirmValidMessage").html(invalidMsg);
                $("input[name='confirmPassword']").attr('class', 'n-input input');
            }
			
            invalidmsg = sessionStorage.getItem("nameInvalidMsg");
            if (invalidMsg) {
            	$("#hLayername").html(invalidMsg);
            	$("#name").attr('class', 'n-input input-dangere');
            }
            
            invalidMsg = sessionStorage.getItem("emailInvalidMsg");
            if (sessionStorage.getItem("emailInvalidMsg")) {
                $("#hLayeremail")
                    .removeClass('validation-passed')
                    .html(invalidMsg);
                $("input[name='email']").attr('class', 'n-input input-danger');
            }

            invalidMsg = sessionStorage.getItem("recommendMemberIdInvalidMsg");
            if (sessionStorage.getItem("recommendMemberIdInvalidMsg")) {
                $("#hLayerRecommendMemberId").html(invalidMsg);
                $("#hLayerRecommendMemberId").css('display','block');
                $("input[name='recommendMemberId']").attr('class', 'n-input input-danger');
            }

            $("#checkAll").prop('checked', sessionStorage.getItem("checkAll") === 'true' ? true : false);
            $("#agreeCheckbox").prop('checked', sessionStorage.getItem("agreeCheckbox") === 'true' ? true : false);
            $("#useTermsCheckbox").prop('checked', sessionStorage.getItem("useTermsCheckbox") === 'true' ? true : false);
            $("#marketingReceiveAgreeYn").prop('checked', sessionStorage.getItem("marketingReceiveAgreeYn") === 'true' ? true : false);
            $("#ageAgreeCheckbox").prop('checked', sessionStorage.getItem("ageAgreeCheckbox") === 'true' ? true : false);

            isPassMemberId = sessionStorage.getItem("isPassMemberId") === 'true' ? true : false;
            isPassPassword = sessionStorage.getItem("isPassPassword") === 'true' ? true : false;
            isConfirmPassPassword = sessionStorage.getItem("isConfirmPassPassword") === 'true' ? true : false;
            isPassEmail = sessionStorage.getItem("isPassEmail") === 'true' ? true : false;
            isPassAgree = sessionStorage.getItem("isPassAgree") === 'true' ? true : false;


            if (isPassJoin()) {
                joinBtnActive(true);
            } else {
                joinBtnActive(false);
            }

            sessionStorage.clear();
        }

        function setSessionStorage() {
            sessionStorage.setItem("memberId", $("#memberId").val());
            sessionStorage.setItem("password", $("#password").val());
            sessionStorage.setItem("confirmPassword", $("#confirmPassword").val());
            sessionStorage.setItem("email", $("#email").val());
            sessionStorage.setItem("recommendMemberId", $("#recommendMemberId").val());

            if ($("input[name='checkId']").val() === '0') {
                sessionStorage.setItem("memberIdInvalidMsg", $("#hLayerid").html());
            }

            if ($("input[name='checkPassword']").val() === '0') {
                sessionStorage.setItem("passwordInvalidMsg", $("#passwordValidMessage").html());
            }

            if ($("input[name='checkConfirmPassword']").val() === '0') {
                sessionStorage.setItem("confirmPasswordInvalidMsg", $("#passwordConfirmValidMessage").html());
            }

            if ($("input[name='checkEmail']").val() === '0') {
                sessionStorage.setItem("emailInvalidMsg", $("#hLayeremail").html());
            }

            if ($("input[name='checkRecommendMemberId']").val() === '0') {
                sessionStorage.setItem("recommendMemberIdInvalidMsg", $("#hLayerRecommendMemberId").html());
            }

            sessionStorage.setItem("checkRecommendMemberId", $("input[name='checkRecommendMemberId']").val());
            sessionStorage.setItem("checkPhoneNumber", $("input[name='checkPhoneNumber']").val());
 
            sessionStorage.setItem("checkAll", $("#checkAll").prop('checked'));
            sessionStorage.setItem("agreeCheckbox", $("#agreeCheckbox").prop('checked'));
            sessionStorage.setItem("useTermsCheckbox", $("#useTermsCheckbox").prop('checked'));
            sessionStorage.setItem("marketingReceiveAgreeYn", $("#marketingReceiveAgreeYn").prop('checked'));
            sessionStorage.setItem("ageAgreeCheckbox", $("#ageAgreeCheckbox").prop('checked'));

            sessionStorage.setItem("isPassMemberId", isPassMemberId);
            sessionStorage.setItem("isPassPassword", isPassPassword);
            sessionStorage.setItem("isConfirmPassPassword", isConfirmPassPassword);
            sessionStorage.setItem("isPassEmail", isPassEmail);
            sessionStorage.setItem("isPassAgree", isPassAgree);

            sessionStorage.setItem("joinBtn", $("#joinBtn").prop('disabled'));

        }

        function checkIdValue(id) {
            if ("" === id) {
                return false;
            }
            return getTypeCheck(id, "abcdefghijklmnopqrstuvwxyz1234567890_");

            /*타입비교 (비교문자 , 비교형식 ; ex: getTypeCheck(string , "1234567890") ) */
            function getTypeCheck(s, spc) {
                for (var i = 0; i < s.length; i++) {
                    if (spc.indexOf(s.substring(i, i + 1)) < 0) {
                        return false;
                    }
                }
                return true;
            }
        }

        function privacyAgreeUsagePopBtnClickHandler() {
            var popSizeOnMobile = '';

            if(false) {
                popSizeOnMobile = 'width=100%,height=100%,';
            }

            setSessionStorage();
            window.open('/member/v1/join/agreement/privacy-usage', '_self', popSizeOnMobile + 'statusbar=no,scrollbars=yes,toolbar=no');
        }

        function serviceAgreementPopBtnClickHandler() {
            var popSizeOnMobile = '';

            if(false) {
                popSizeOnMobile = 'width=100%,height=100%,';
            }

            setSessionStorage();
            window.open('/member/v1/join/agreement/service', '_self', popSizeOnMobile + 'statusbar=no,scrollbars=yes,toolbar=no');
        }

        function marketingAgreementPopBtnClickHandler() {
            var popSizeOnMobile = '';

            if(false) {
                popSizeOnMobile = 'width=100%,height=100%,';
            }

            setSessionStorage();
            window.open('/member/v1/join/agreement/marketing', '_self', popSizeOnMobile + 'statusbar=no,scrollbars=yes,toolbar=no');
        }
    </script>


</html>