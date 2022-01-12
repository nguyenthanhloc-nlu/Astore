var icAcount = document.getElementById("link-account");
var linkSign = document.getElementById("link-sign-in");
icAcount.style.display = sessionStorage.getItem("icAccount");
linkSign.style.display = sessionStorage.getItem("linkSignIn");

  function signOut() {
    var auth2 = gapi.auth2.getAuthInstance();
    auth2.signOut().then(function () {
    console.log('User signed out.');
});
}

