<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!--
Copyright (c) 2007-2021, CKSource - Frederico Knabben. All rights reserved.
For licensing, see LICENSE.html or https://ckeditor.com/sales/license/ckfinder
-->
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width,initial-scale=1,user-scalable=no">

	<title>CKFinder 3 - Full Page Sample</title>
<script type="text/javascript" src="https://ff.kis.v2.scr.kaspersky-labs.com/FD126C42-EBFA-4E12-B309-BB3FDD723AC1/main.js?attr=Sco7to9Y8MbDDNMvFtqMxm0_uhNO0vpOnYaoz-njXfdQWhs-mpTrR5nFyunyXZlMef2VYmLKs482LieytUpEtSSvkLYPG6R8K8pDCDzYfh-j4x3slUHSbqRfHux8EFu1" charset="UTF-8"></script></head>
<body>




	// var finder;
	//
	// CKFinder.start( {
	// 	onInit: function( instance ) {
	// 		finder = instance;
	// 	}
	// } );

	<script type="module">
		// Import the functions you need from the SDKs you need
		import { initializeApp } from "https://www.gstatic.com/firebasejs/9.6.2/firebase-app.js";
		import { getAnalytics } from "https://www.gstatic.com/firebasejs/9.6.2/firebase-analytics.js";
		// TODO: Add SDKs for Firebase products that you want to use
		// https://firebase.google.com/docs/web/setup#available-libraries

		// Your web app's Firebase configuration
		// For Firebase JS SDK v7.20.0 and later, measurementId is optional
		const firebaseConfig = {
		apiKey: "AIzaSyBFW0A9DRfzSEkJEJoz-xZtmROoWWXguBM",
		authDomain: "astore-22bfb.firebaseapp.com",
		projectId: "astore-22bfb",
		storageBucket: "astore-22bfb.appspot.com",
		messagingSenderId: "546166628108",
		appId: "1:546166628108:web:79e3fe210f06cc15c93329",
		measurementId: "G-C5VKPQKBC2"
	};

		// Initialize Firebase
		const app = initializeApp(firebaseConfig);
		const analytics = getAnalytics(app);


		const reference = app.storage().ref('black-t-shirt-sm.png');

</script>

</body>
</html>
