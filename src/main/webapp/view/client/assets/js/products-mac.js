var MenuItems = document.getElementById("MenuItems");
MenuItems.style.maxHeight = "0px";

function menutoggle() {
  if (MenuItems.style.maxHeight == "0px") {
    MenuItems.style.maxHeight = "200px";
  } else {
    MenuItems.style.maxHeight = "0px";
  }
}
var icAcount = document.getElementById("link-account");
var linkSign = document.getElementById("link-sign-in");
icAcount.style.display = sessionStorage.getItem("icAccount");
linkSign.style.display = sessionStorage.getItem("linkSignIn");
