<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
div.controls {
	margin: 0px 10px;
	font-size: 14px;
	font-family: Tahoma;
	color: #404040;
	height: 60px;
}

div#winVP {
	position: relative;
	height: 500px;
	border: 1px solid #dfdfdf;
	margin: 10px;
}
</style>
<script>
var winF,popW;
$(document).ready(function(){
   winF = new dhtmlXWindows();
   winF.attachViewportTo("winVP");
   popW = winF.createWindow("win1",200,300,400,400);
   popW.hide();
   popW.setText("Add Connection Info");
   
   var formObj = [
   				{type:"fieldset", offsetTop:12, name:"connectionInfo", inputWidth:"auto",
        		list:[
		            {type:"input", name:"ciName", label:"커넥션이름", required:true},
		            {type:"input", name:"ciUrl", label:"접속URL", required:true},
		            {type:"input", name:"ciPort", label:"PORT번호", validate:"ValidInteger", required:true},
		            {type:"input", name:"ciDatabase", label:"데이터베이스", required:true},
		            {type:"input", name:"ciUser", label:"유저ID",  required:true},
		            {type:"password", name:"ciPwd", label:"비밀번호",  required:true},
		            {type:"input", name:"ciEtc", label:"설명"},
		            {type:"block", blockOffset:0, list:[
		            	{type:"button", name:"saveBtn", value:"저장"},
		                {type:"newcolum"},
		                {type:"button", name:"cancelBtn", value:"취소"}
          				]}
         			]}];
   var form = popW.attachForm(formObj,true);
   
   form.attachEvent("onButtonClick", function(id){
	  if(id=="saveBtn"){
		  if(form.validate()){
			  form.send("${root}/connection/insert","post", callback) 
		  }
	  }else if(id=="cancelBtn"){
		  form.clear();
	  } 
   });
})
function callback(loader, res){
	var res = JSON.parse(res);
	alert(res.msg);
}
function setPopW(onoff){         
   if(onoff){
      popW.show();
      return;
   }
   popW.hide();
   
}

</script>
<body>
	<div id="winVP"></div>
	<div class="controls">
		<button onclick="setPopW(true)">떠라 창</button>
		<button onclick="setPopW(false)">꺼라 창</button>
	</div>
</body>
</html>