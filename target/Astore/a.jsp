<%--
  Created by IntelliJ IDEA.
  User: Nguyen Thanh Loc
  Date: 1/4/2022
  Time: 2:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <button id="ckfinder-modal-1" class="button-a button-a-background">Browse Server</button>
</head>
<body>
<script>
    var button1 = document.getElementById( 'ckfinder-popup-1' );
    var button2 = document.getElementById( 'ckfinder-popup-2' );

    button1.onclick = function() {
        selectFileWithCKFinder( 'ckfinder-input-1' );
    };
    button2.onclick = function() {
        selectFileWithCKFinder( 'ckfinder-input-2' );
    };

    function selectFileWithCKFinder( elementId ) {
        CKFinder.modal( {
            chooseFiles: true,
            width: 800,
            height: 600,
            onInit: function( finder ) {
                finder.on( 'files:choose', function( evt ) {
                    var file = evt.data.files.first();
                    var output = document.getElementById( elementId );
                    output.value = file.getUrl();
                } );

                finder.on( 'file:choose:resizedImage', function( evt ) {
                    var output = document.getElementById( elementId );
                    output.value = evt.data.resizedUrl;
                } );
            }
        } );
    }
</script>

</body>
</html>
