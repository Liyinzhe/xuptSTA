<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.5.2/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/jquery-easyui-1.5.2/themes/icon.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.5.2/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.5.2/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/jquery-easyui-1.5.2/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	function openTab(text,url,iconCls){
		if($("#tabs").tabs("exists",text)){
			$("#tabs").tabs("select",text);
		}else{
			var content="<iframe frameborder=0 scrolling='aotu' style='width:100%;height:100%' src='${pageContext.request.contextPath}/"+url+"'></iframe>";
			$("#tabs").tabs("add",{
				title:text,
				iconCls:iconCls,
				closable:true,
				content:content
			});
		}
	}
</script>
</head>
<body class="easyui-layout">
<div region="north" style="height:78px;background-color:#E0ECFF; ">
	<table style="padding:5px; width:100%">
		<tr>
			<td width="50%">
				<img src="${pageContext.request.contextPath}/images/bglogo.png" height="60">
			</td>
			<td valign="bottom" align="right" width="50%">
				<font size="3">&nbsp;&nbsp;<strong>欢迎：</strong>${currentUser.userName }</font>
			</td>
		</tr>
	</table>
</div>
<div region="center">
	<div class="easyui-tabs" fit="true" border="false" id="tabs">
		<div title="首页" data-options="iconCls:'icon-home'">
			<div align="center" style="padding-top:100px;">
				
			</div>
		</div>
	</div>
</div>
<div region="west" style="width:200px;" title="导航菜单" split="true">
	<div class="easyui-accordion" data-options="fit:true,border:false">
		<div title="用户管理" data-options="iconCls:'icon-man',selected:true" style="padding:10px;">
			<a href="javascript:openTab('用户管理','userManage.jsp','icon-man')" class="easyui-linkbutton" data-options="plain:true,iconCls:'icon-man'" style="width: 150px;">管理用户</a>
		</div>
		<div title="博客管理"  data-options="iconCls:'icon-man'" style="padding:10px;">
		
		</div>
		<div title="OJ管理"  data-options="iconCls:'icon-man'" style="padding:10px">
		
		</div>
		<div title="STA管理" data-options="iconCls:'icon-man'" style="padding:10px">
		
		</div>
		<div title="STA管理"  data-options="iconCls:'icon-man'" style="padding:10px">
		
		</div>
		<div title="STA管理"  data-options="iconCls:'icon-man'" style="padding:10px">
		
		</div>
		<div title="STA管理"  data-options="iconCls:'icon-man'" style="padding:10px">
		
		</div>
		<div title="STA管理"  data-options="iconCls:'icon-man'" style="padding:10px">
		
		</div>
	</div>
</div>
<div region="south" style="height:30px; padding:5px;" align="center">
Copyright &copy; @2017
</div>
</body>
</html>