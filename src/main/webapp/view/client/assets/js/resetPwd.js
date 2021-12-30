const formReSetPwd = document.getElementById("form-rs");
const emailResetPwd = document.getElementById("email-rs");
const btnNextResetPwd = document.getElementById("next-rs");
formReSetPwd.addEventListener("input", (e) => {
  e.preventDefault();
  checkInputRSpwd();
});

function checkInputRSpwd() {
  const valueEmailResetPwd = emailResetPwd.value.trim();
  if (valueEmailResetPwd == "") {
    setErrorFor(emailResetPwd, "Vui lòng điền vào trường này.");
    setBtnOpacity(btnNextResetPwd, false);
  } else {
    setSuccess(emailResetPwd);
    setBtnOpacity(btnNextResetPwd, true);
  }
}
btnNextResetPwd.addEventListener("click", (e) => {
  e.preventDefault();
  checkInputRSpwdClick();
});
function checkInputRSpwdClick() {
  const valueEmailResetPwd = emailResetPwd.value.trim();
  if (!isEmail(valueEmailResetPwd) && !isNumberPhone(valueEmailResetPwd)) {
    setErrorFor(emailResetPwd, "Email hoặc số điện thoại không hợp lệ.");
  } else {
    if (isEmail(valueEmailResetPwd)) {
      window.location.href = "./confirmationEmail.html";
    } else {
      setSuccess(emailResetPwd);
      console.log("valid email or phone number.");
      window.location.href = "./verificationCode.html";
    }
  }
}
