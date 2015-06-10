<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'fileupload.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript">
	function find(){
		var ss = $("#fileName").val().split("\\");
		$("#path",window.parent.document).attr("onclick","down('temp.xls')");
		$("#path",window.parent.document).text(ss[ss.length-1]);
		$("#form").attr("action","base/upload.do");
		$("#form").submit();
	}
		
	</script>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <form id="form"  method="post" enctype="multipart/form-data">
	    	<input id="fileName" type="file" name="file">
	    	<input type="button" name="upload"value="上传" onclick="find()">
		</form>
  </body>
</html>
