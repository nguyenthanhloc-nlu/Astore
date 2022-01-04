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
<%--<script src="<%=request.getContextPath()%>/view/admin/assets/js/config.js"></script>--%>
<script src="<%=request.getContextPath()%>/view/admin/assets/js/jquery2.js"></script>
<script src="<%=request.getContextPath()%>/view/admin/assets/js/skin.js"></script>


<script src="<%=request.getContextPath()%>/view/admin/assets/js/ckfinder.js"></script>


<script>
	var finder;

	CKFinder.start( {
		onInit: function( instance ) {
			finder = instance;
		}
	} );
</script>

</body>
</html>
