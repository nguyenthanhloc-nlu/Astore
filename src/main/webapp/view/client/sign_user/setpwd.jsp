<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <title>Đặt lại mật khẩu</title>
    <link
            rel="stylesheet"
            href="<%=request.getContextPath()%>/view/client/assets/fontawesome-free-5.15.4-web/css/all.min.css"
    />
    <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
    />
    <script>
        function signInNowForgotPWD() {
            document.querySelector(".popUpBox").style.display = "none";
            document.getElementById("popUpOverlay").style.display = "none";
            window.location.href = "view/client/sign_user/signIn.jsp";
            document.getElementById("pwd-set").value = "";
        }</script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/script.js" charset="UTF-8"></script>
    <script src="<%=request.getContextPath()%>/view/client/assets/js/setpwd.js" charset="UTF-8"></script>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/resetPass.css"/>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/view/client/assets/css/sign.css"/>
</head>
<style>
    #set-PWD-forgot-success {
        display: block;
    }</style>
<body>
<div class="container-sign">
    <div class="container-heder">
        <div class="img-logo">
            <a href="<%=request.getContextPath()%>/">
                <img src="<%=request.getContextPath()%>${linkLogoStore}" alt="Astore" width="150px"
                /></a>
        </div>
        <p class="tille-sign" id="tilte-text">Đặt lại mật khẩu</p>
        <p class="sp-sign">
            <a href="<%=request.getContextPath()%>/view/client/help.jsp" style="text-decoration: none; color: white"
            >Trợ giúp?</a
            >
        </p>
    </div>
    <div class="container-section">
        <div class="container-reset">
            <div class="heder-reset" id="heder-set">
                <div class="back-reset" id="back-set">
                    <a href="<%=request.getContextPath()%>/verificationCode">
                        <i class="fas fa-chevron-left fa-2x"></i>
                    </a>
                </div>
                <div class="text-reset">
                    <p id="text-rs">Thiết Lập Mật Khẩu</p>
                </div>
            </div>
            <div class="form-rs-1" style="margin: 66px 0px;">
                <form action="<%=request.getContextPath()%>/setForgotPWD" method="post" onsubmit="return false"
                      id="form-set">
                    <div class="form-group">
                        <input
                                type="password"
                                name="password-set-forgotPWD"
                                class="form-reset"
                                id="pwd-set"
                                placeholder="Mật khẩu"
                        />
                        <small class="form-message"></small>
                    </div>
                    <p class="text-condition-set" style="margin: 5px; margin-left:-46px">
                        Mật khẩu phải có độ dài từ 6-16 ký tự.
                    </p>
                    <button type="submit" class="btn-form-sign" id="agree-set" disabled>ĐỒNG Ý</button>
                </form>
            </div>

            <div id="popUpOverlay"></div>
            <div id="${setPWDForgotSuccess}" class="popUpBox">
                <div id="box">
                    <i class="far fa-check-circle fa-3x" style="color: lime"></i>
                    <p>Xin chúc mừng!</p>
                    <p style="font-size: 11px">Bạn đã thiết lập lại mật khẩu thành công.</p>
                    <div id="closeModal">${loginSccessForgotPwd}</div>
                </div>
                u
            </div>
        </div>
    </div>
</div>
<!-- Footer -->
<jsp:include page="/view/client/footer/footer.jsp"></jsp:include>
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

const formSet = document.getElementById("form-set");
const pwdSet = document.getElementById("pwd-set");
const btnAgreeSet = document.getElementById("agree-set");
formSet.addEventListener("input", (e) => {
    checkInputSet();
});

function checkInputSet() {
    var valuePwdSet = pwdSet.value.trim();
    if (valuePwdSet == "") {
        setErrorFor(pwdSet, "Vui lòng điền vào mục này.");
        setBtnOpacity(btnAgreeSet, false);
    } else {
        setSuccess(pwdSet);
        setBtnOpacity(btnAgreeSet, true);
    }
}

btnAgreeSet.addEventListener("click", (e) => {
    checkInputSetClick();
});

function checkInputSetClick() {
    var valuePwdSet = pwdSet.value.trim();
    if (!isPwd(valuePwdSet)) {
        setErrorFor(pwdSet, "Mật khẩu phải có độ dài từ 6 ký tự .");
    } else {
        formSet.onsubmit = function () {
            return true;
        }
        setSuccess(pwdSet);
    }
}


</script>
</body>
</html>
