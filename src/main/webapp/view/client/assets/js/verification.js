const formVarification = document.getElementById("form-verification");
const verificationCode = document.getElementById("verification-set");
const btnNextVerification = document.getElementById("next-verification");
formVarification.addEventListener("input", (e) => {
  e.preventDefault();
  checkInputVerification();
});
function checkInputVerification() {
  const valueVerificationCode = verificationCode.value;
  if (valueVerificationCode == "") {
    setErrorFor(verificationCode, "Vui lòng điền vào mục này.");
    setBtnOpacity(btnNextVerification, false);
  } else {
    setSuccess(verificationCode);
    setBtnOpacity(btnNextVerification, true);
  }
}
btnNextVerification.addEventListener("click", (e) => {
  e.preventDefault();
  checkInputVerificationClick();
});
function checkInputVerificationClick() {
  const valueVerificationCode = verificationCode.value;
  if (valueVerificationCode.length != 6) {
    setErrorFor(verificationCode, "Mã xác nhận không hợp lệ.");
  } else {
    setSuccess(verificationCode);
    console.log("valid verification code.");
    window.location.href = "./setpwd.html";
    verificationCode.value = "";
  }
}
/*dialog */
const Alert = new CustomAlert();
function CustomAlert() {
  this.render = function () {
    //Show Modal
    let popUpBox = document.getElementById("popUpBox");
    popUpBox.style.display = "block";
    //Close Modal
    document.getElementById("closeModal").innerHTML =
      '<button onclick="Alert.signInNow()">Đăng nhập ngay</button>';
  };
  this.signInNow = function () {
    document.getElementById("popUpBox").style.display = "none";
    document.getElementById("popUpOverlay").style.display = "none";
    window.location.href = "./index.html";
  };
}
