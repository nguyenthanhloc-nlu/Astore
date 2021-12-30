const formSet = document.getElementById("form-set");
const pwdSet = document.getElementById("pwd-set");
const btnAgreeSet = document.getElementById("agree-set");
formSet.addEventListener("input", (e) => {
    e.preventDefault();
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
    e.preventDefault();
    checkInputSetClick();
});

function checkInputSetClick() {
    var valuePwdSet = pwdSet.value.trim();
    if (!isPwd(valuePwdSet)) {
        setErrorFor(pwdSet, "Mật khẩu không hợp lệ.");
    } else {
        setSuccess(pwdSet);
        console.log("valid password.");
        Alert.render();
    }
}
const Alert = new CustomAlert();

function CustomAlert() {
    this.render = function() {
        //Show Modal
        let popUpBox = document.getElementById("popUpBox");
        popUpBox.style.display = "block";
        //Close Modal
        document.getElementById("closeModal").innerHTML =
            '<button onclick="Alert.signInNow()">Đăng nhập ngay</button>';
    };
    this.signInNow = function() {
        document.getElementById("popUpBox").style.display = "none";
        document.getElementById("popUpOverlay").style.display = "none";
        window.location.href = "./signIn.jsp";
    };
}
