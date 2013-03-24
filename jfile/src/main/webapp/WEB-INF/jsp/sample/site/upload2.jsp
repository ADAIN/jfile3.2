<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>JFile</title>
	<style>
		body {margin: 0;padding: 0;width: 100%;	font: 14px/1.4em Verdana, Arial, sans-serif;}
		fieldset {margin: 20px 10px;padding: 10px 10px 10px 10px; }
	</style>
	
	<link href="<c:url value="/resources/swfupload/css/custom.css" />" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<c:url value="/resources/jquery/1.3.2/jquery-1.3.2.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/json.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/jwork/jwork.fileUpload.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/jwork/jwork.fileDownload.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/swfupload/swfupload/swfupload.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/swfupload/js/swfupload.queue.js" />"></script>

	<link href="<c:url value="/resources/jqueryui/1.8/themes/base/jquery.ui.all.css" />" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="<c:url value="/resources/jqueryform/2.4/jquery.form.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/jqueryui/1.8/jquery.ui.core.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/jqueryui/1.8/jquery.ui.widget.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/jqueryui/1.8/jquery.ui.tabs.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/json2.js" />"></script>
	
	<script type="text/javascript">
	function send1(){		
		fileUploadObj1.startUpload();
	}
	function uploadCompleted1(){
		fileUploadObj1.refresh();
	}
	</script>
</head>
<body>
<br/>

   <div id="simple">
	<fieldset> 
	<legend><b>파일 업로드1</b></legend>
	<script>
	var fileUploadObj1;
	jQuery(document).ready(function() {
		fileUploadObj1= new jwork.fileUpload(
		"fileUploadObj1", 
		"/jfile", 
		null,
		{ maxFileSize: 10000, 
			  uploadCompleted:uploadCompleted1, 
			  beanId:null, 
			  fileType:"all", 
			  uploadMode:"db", 
			  maxFileCount:30, 
			  usePreview:true, 
			  useSecurity:false 
		});
	});
	</script>
	<div id="fileUploadObj1"></div>
	<input type="button" onclick="send1()" value="전송" style="width: 110px; height: 24px; font-size: 11px"/>
	</fieldset>
</div>
</body>
</html>