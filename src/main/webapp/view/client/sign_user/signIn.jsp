<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" encoding="UTF-8" content="text/html; charset=UTF-8">
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id"
          content="380914326375-b0tupe4hukq70qps3gq5v74v42bo8b7c.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <title>Đăng nhập</title>
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="<%=request.getContextPath()%>/view/client/assets/fontawesome-free-5.15.4-web/js/all.min.js"
    />
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/sign.css"/>
    <script src="https://code.jquery.com/jquery-latest.js"></script>
</head>
<style>
    .error-login-user {
        margin-bottom: 0.25rem;
        background-color: #fff9fa;
        border: 1px solid rgba(255, 66, 79, .2);
        ustify-content: flex-start;
        border-radius: 2px;
        padding: 0.75rem 0.9375rem;
        display: flex;
    }

    .img-error-login {
        color: #e74c3c;
        margin-right: 0.625rem;
        width: 1rem;
        display: flex;
    }

    .img-error-login i {
        color: #ff424f;
        width: 1rem;
        height: 1rem;
        stroke: currentColor;
        fill: currentColor;
    }

    .text-error-login p {
        font-size: .87rem;
        color: #222;
        text-align: left;
    }

    /*#gg-login-user{*/
    /*  float: right;*/
    /*}*/
    .abcRioButtonBlue {
        height: 36px;
        width: 36px;
        border-radius: 50%;
    }

    .social-container a {
        float: left;
        box-shadow: 0 2px 4px 0 rgb(0 0 0 / 25%);
        color: #1E88E5;
    }

    .abcRioButtonBlue, .abcRioButtonBlue:hover {
        background-color: white;
    }

    .form-message {
        font-family: Arial;
    }
</style>
<body onload="loadResetFromSign()">
<div class="container-sign">
    <div class="container-heder">
        <div class="img-logo">
            <a href="<%=request.getContextPath()%>/">
                <img src="<%=request.getContextPath()%>${linkLogoStore}" alt="Astore" width="150px"
                /></a>
        </div>
        <p class="tille-sign" id="tilte-text">Đăng nhập</p>
        <p class="sp-sign">
            <a href="<%=request.getContextPath()%>/view/client/help.jsp" style="text-decoration: none; color: white"
            >Trợ giúp?</a
            >
        </p>
    </div>
    <div class="container-section">
        <div class="container ${classRightRegister}" id="container">
            <div class="form-container sign-up-container">
                <form action="<%=request.getContextPath()%>/userRegistration" onsubmit="return false" method="post"
                      id="form-sign-up">
                    <h1 class="text-cr">Đăng Ký</h1>
                    <div class="social-container">
                        <%--                <a href="https://www.facebook.com/dialog/oauth?client_id=1298584037323540&redirect_uri=http://localhost:8080/Astore/loginFB"--%>
                        <%--                        class="social"--%>
                        <%--                ><i class="fab fa-facebook-f"></i--%>
                        <%--                ></a>--%>
                        <div class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
                    </div>
                    <div>
                        <p class="or-sign">hoặc đăng ký tài khoản</p>
                    </div>

                    <div id="content-error-registration" class="mess-error-login">${errorRegistration}
                    </div>
                    <div class="form-group">
                        <input
                                type="text"
                                name="email-sign-up"
                                id="email-sign-up-load"
                                class="form-input"
                                placeholder="Email/Số điện thoại"
                        />
                        <small class="form-message"></small>
                    </div>
                    <div class="form-group">
                        <input
                                type="text"
                                name="fullName-sign-up"
                                id="username-sign-up-load"
                                class="form-input"
                                placeholder="Họ và tên"
                        />
                        <small class="form-message"></small>
                    </div>
                    <div class="form-group">
                        <input
                                type="password"
                                name="password-sign-up"
                                id="password-sign-up-load"
                                class="form-input"
                                placeholder="Mật khẩu"
                        />
                        <small class="form-message"></small>
                    </div>
                    <div class="form-group">
                        <input
                                type="password"
                                name="cf-password-sign-up"
                                id="cf-password-sign-up-load"
                                class="form-input"
                                placeholder="Xác nhận lại mật khẩu"
                        />
                        <small class="form-message"></small>
                        <p
                                style="
                    font-size: 12px;
                    padding-bottom: 10px;
                    padding-top: 5px;
                    text-align: center;
                  "
                        >
                            Bằng việc đăng ký, bạn đồng ý với AStore về các
                            <a href="#" style="text-decoration: none"> <b
                                    style="color: red; font-size: 12px; font-weight: 100"
                            >điều khoản dịch vụ &</b
                            >
                                <b style="color: red; font-size: 12px; font-weight: 100"
                                > chính sách bảo mật.</b
                                ></a>
                        </p>
                    </div>
                    <button type="submit"
                            class="btn-form-sign"
                            id="sign-up-load"
                            disabled>
                        Đăng ký
                    </button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="<%=request.getContextPath()%>/userLogin" method="post"
                      id="form-sign-in" ${submitLoadLogin}>
                    <h1 class="text-login">Đăng Nhập</h1>
                    <div class="social-container">
                        <%--                <a href="https://www.facebook.com/dialog/oauth?client_id=1298584037323540&redirect_uri=http://localhost:8080/Astore/loginFB"--%>
                        <%--                        class="social"--%>
                        <%--                ><i class="fab fa-facebook-f"></i--%>
                        <%--                ></a>--%>
                        <div id="gg-login-user" class="g-signin2" data-onsuccess="onSignIn" data-theme="dark"></div>
                    </div>
                    <div><p class="or-sign">hoặc bạn đã có tài khoản</p></div>
                    <div id="content-error-login" class="mess-error-login">${errorLogin}
                    </div>
                    <div class="form-group">
                        <input
                                type="text"
                                class="form-input"
                                name="email-login"
                                id="email-sign-in-load"
                                placeholder="Email/Số điện thoại"
                        />
                        <small class="form-message"></small>
                    </div>
                    <div class="form-group">
                        <input
                                type="password"
                                name="password-login"
                                id="password-sign-in-load"
                                class="form-input"
                                placeholder="Mật khẩu"
                        />
                        <small class="form-message"></small>
                    </div>
                    <a class="forgot" href="<%=request.getContextPath()%>/resetPWD">Quên
                        mật khẩu?</a>
                    <button
                            type="submit"
                            class="btn-form-sign"
                            id="sign-in-load"
                            disabled>Đăng nhập
                    </button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>AStore xin chào!</h1>
                        <p class="hello-sign">Bạn đã có tài khoản?</p>
                        <button class="ghost" id="signIn">Đăng nhập</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>AStore xin chào!</h1>
                        <p class="hello-sign">Bạn mới biết đến AStore?</p>
                        <button class="ghost" id="signUp">Đăng ký</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>
<script>
    function onSignIn(googleUser) {
        sessionStorage.setItem("icAccount", "block");
        sessionStorage.setItem("linkSignIn", "none");
        var profile = googleUser.getBasicProfile();
        var id_token = googleUser.getAuthResponse().id_token;
        window.location.href = "<%=request.getContextPath()%>/loginGoogle?action=Google&name=" +
            profile.getName() + "&email=" + profile.getEmail() + "&id=" + profile.getId() + "&givenName=" +
            profile.getGivenName() + "&familyName=" + profile.getFamilyName() + "&imageUrl=" + profile.getImageUrl();
    }
</script>
<script>const signUpButton = document.getElementById("signUp");
const signInButton = document.getElementById("signIn");
const container = document.getElementById("container");
const tilleSign = document.getElementById("tilte-text");
/*sign-in or sign-up*/
signUpButton.addEventListener("click", () => {
    $(':input').not(':button, :submit, :reset, :hidden, :checkbox, :radio').val('');
    $(':checkbox, :radio').prop('checked', false);
    container.classList.add("right-panel-active");
    document.title = "Đăng ký";
    tilleSign.innerHTML = "Đăng ký";
    document.getElementById("content-error-registration").innerHTML = "";
    setSuccess(pwdSignInLoad);
    setSuccess(emailSignInLoad);


});

signInButton.addEventListener("click", () => {
    $(':input').not(':button, :submit, :reset, :hidden, :checkbox, :radio').val('');
    $(':checkbox, :radio').prop('checked', false);
    container.classList.remove("right-panel-active");
    document.title = "Đăng nhập";
    tilleSign.innerHTML = "Đăng nhập";
    document.getElementById("content-error-login").innerHTML = "";
    setSuccess(emailSignUpLoad);
    setSuccess(usernameSignUpLoad);
    setSuccess(pwdSignUpLoad);
    setSuccess(cfPwdSignUpLoad);
});

//chuyển tab
function openInNewTab(url) {
    var win = window.open(url, "_blank");
    win.focus();
}

/*sign-in*/
const formSignIn = document.getElementById("form-sign-in");
const emailSignInLoad = document.getElementById("email-sign-in-load");
const pwdSignInLoad = document.getElementById("password-sign-in-load");
const btnSignInLoad = document.getElementById("sign-in-load");

formSignIn.addEventListener("input", (e) => {
    checkInputSignInChange();
});
btnSignInLoad.addEventListener("click", (e) => {
    checkInputSignInClick();
});

function checkInputSignInChange() {
    const valueEmailSignInL = emailSignInLoad.value.trim();
    const valuePwdSignInL = pwdSignInLoad.value.trim();

    if (valueEmailSignInL == "" || valuePwdSignInL == "") {
        setBtnOpacity(btnSignInLoad, false);
        if (valueEmailSignInL == "") {
            setErrorFor(emailSignInLoad, "Vui lòng điền vào mục này.");
        } else {
            setSuccess(emailSignInLoad);
            document.getElementById("content-error-registration").innerHTML = "";
            document.getElementById("content-error-login").innerHTML = "";
        }
        if (valuePwdSignInL == "") {
            setErrorFor(pwdSignInLoad, "Vui lòng điền vào mục này.");
        } else {
            setSuccess(pwdSignInLoad);
            document.getElementById("content-error-registration").innerHTML = "";
            document.getElementById("content-error-login").innerHTML = "";
        }
    } else {
        setSuccess(pwdSignInLoad);
        setSuccess(emailSignInLoad);
        setBtnOpacity(btnSignInLoad, true);
    }
}

function checkInputSignInClick() {
    const valueEmailSignInL = emailSignInLoad.value.trim();
    const valuePwdSignInL = pwdSignInLoad.value.trim();
    if (!isEmail(valueEmailSignInL) && !isNumberPhone(valueEmailSignInL)) {
        setErrorFor(emailSignInLoad, "Email hoặc số điện thoại không hợp lệ.");
    } else {
        setSuccess(emailSignInLoad);
        sessionStorage.setItem("icAccount", "block");
        sessionStorage.setItem("linkSignIn", "none");
    }
}

/*sign-up*/
const formSignUp = document.getElementById("form-sign-up");
const emailSignUpLoad = document.getElementById("email-sign-up-load");
const usernameSignUpLoad = document.getElementById("username-sign-up-load");
const pwdSignUpLoad = document.getElementById("password-sign-up-load");
const cfPwdSignUpLoad = document.getElementById("cf-password-sign-up-load");
const btnSignUpLoad = document.getElementById("sign-up-load");

formSignUp.addEventListener("input", (e) => {
    checkInputSignUp();
});

function checkInputSignUp() {
    const valueEmailSignUpL = emailSignUpLoad.value.trim();
    const valueUserNameSignUpL = usernameSignUpLoad.value.trim();
    const valuePwdSignUpL = pwdSignUpLoad.value.trim();
    const valueCfPwdSignUpL = cfPwdSignUpLoad.value.trim();
    if (
        valueEmailSignUpL == "" ||
        valueUserNameSignUpL == "" ||
        valuePwdSignUpL == "" ||
        valueCfPwdSignUpL == ""
    ) {
        setBtnOpacity(btnSignUpLoad, false);
        if (valueEmailSignUpL == "") {
            setErrorFor(emailSignUpLoad, "Vui lòng điền vào mục này.");
        } else {
            setSuccess(emailSignUpLoad);
        }
        if (valueUserNameSignUpL == "") {
            setErrorFor(usernameSignUpLoad, "Vui lòng điền vào mục này.");
        } else {
            setSuccess(usernameSignUpLoad);
        }
        if (valuePwdSignUpL == "") {
            setErrorFor(pwdSignUpLoad, "Vui lòng điền vào mục này.");
        } else {
            setSuccess(pwdSignUpLoad);
        }
        if (valueCfPwdSignUpL == "") {
            setErrorFor(cfPwdSignUpLoad, "Vui lòng điền vào mục này.");
        } else {
            setSuccess(cfPwdSignUpLoad);
        }
    } else {
        setSuccess(emailSignUpLoad);
        setSuccess(usernameSignUpLoad);
        setSuccess(pwdSignUpLoad);
        setSuccess(cfPwdSignUpLoad);
        setBtnOpacity(btnSignUpLoad, true);
    }
}

btnSignUpLoad.addEventListener("click", (e) => {
    checkInputSignUpClick();
});

function checkInputSignUpClick() {
    const valueEmailSignUpL = emailSignUpLoad.value.trim();
    const valueUserNameSignUpL = usernameSignUpLoad.value.trim();
    const valuePwdSignUpL = pwdSignUpLoad.value.trim();
    const valueCfPwdSignUpL = cfPwdSignUpLoad.value.trim();
    var count = 0;
    if (!isEmail(valueEmailSignUpL) && !isNumberPhone(valueEmailSignUpL)) {
        setErrorFor(emailSignUpLoad, "Email hoặc số điện thoại không hợp lệ.");
    } else {
        count = count + 1;
        setSuccess(emailSignUpLoad);
        document.getElementById("content-error-registration").innerHTML = "";
        document.getElementById("content-error-login").innerHTML = "";
    }
    if (!isPwd(valuePwdSignUpL)) {
        setErrorFor(
            pwdSignUpLoad,
            "Mật khẩu phải có độ dài từ 6 ký tự ."
        );
    } else {
        count += 1;
        setSuccess(pwdSignUpLoad);
    }
    if (!equalsPwd(valuePwdSignUpL, valueCfPwdSignUpL)) {
        setErrorFor(cfPwdSignUpLoad, "Mật khẩu không hợp lệ.");
    } else {
        count += 1;
        setSuccess(cfPwdSignUpLoad);
    }
    if (count == 3) {
        formSignUp.onsubmit = function () {
            return true;
        };

    }
}

// load lại trang reset dữ liệu
function loadResetFromSign() {
    document.getElementsByClassName("gg-login-user").innerHTML = "";
    const errorRegistration = document.getElementById("content-error-registration");
    const errorLogin = document.getElementById("content-error-login");
    $(':input').not(':button, :submit, :reset, :hidden, :checkbox, :radio').val('');
    $(':checkbox, :radio').prop('checked', false);
}


//kiểm tra có phải email
function isEmail(email) {
    var rexgEmail =
        /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return rexgEmail.test(email);
}

// kiểm tra có phải sdt
function isNumberPhone(numberPhone) {
    var rexgNumberPhone = /((09|03|07|08|05)+([0-9]{8,9})\b)/g;
    return rexgNumberPhone.test(numberPhone);
}

//kiểm tra password
function isPwd(password) {
    if (password.length < 6)
        return false;
    else
        return true;
}

//kiểm tra value khi sai
function setErrorFor(input, message) {
    const formGroup = input.parentElement;
    const small = formGroup.querySelector("small");
    formGroup.className = "form-group error";
    small.innerText = message;
}

// kiểm tra value khi đúng
function setSuccess(input) {
    const formGroup = input.parentElement;
    const small = formGroup.querySelector("small");
    formGroup.className = "form-group success";
    small.innerText = "";
}

//set hiển thị cuar button
function setBtnOpacity(button, boolean) {
    if (boolean) {
        button.className = "btn-form-sign success";
        button.disabled = false;
        button.style.cursor = "pointer";
    } else {
        button.className = "btn-form-sign error";
        button.disabled = true;
        button.style.cursor = "not-allowed";
    }
}

function equalsPwd(pwd, cfPwd) {
    return pwd === cfPwd;
}

</script>
<script src="<%=request.getContextPath()%>/view/client/assets/js/script.js" ></script>
</body>
</html>
