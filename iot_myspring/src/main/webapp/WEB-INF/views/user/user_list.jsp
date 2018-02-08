<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>UserList</title>
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
   popW = winF.createWindow("win1",200,30,400,400);
   popW.hide();
   popW.setText("Add User Info");
   
   var formObj = [
   				{type:"fieldset", offsetTop:12, name:"UserInfo", inputWidth:"auto",
        				list:[
				            {type:"input", name:"uName", label:"이름", required:true},
				            {type:"input", name:"uId", label:"아이디", required:true},
				            {type:"password", name:"uPwd", label:"비밀번호", required:true},
				            {type:"input", name:"uEmail", label:"E-mail", required:true},
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
			  form.send("${root}/user/user_insert","post", callback) 
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
<div class="controls">
<div id="winVP">
<div id="gridbox" style="width:810px;height:400px;margin:0 auto" ></div>
<script>
var mygrid = new dhtmlXGridObject("gridbox");
mygrid.setImagePath("${dPath}/imgs");
mygrid.setHeader("번호,이름,아이디,비밀번호,이메일");
mygrid.setInitWidths("50,148,200,200,200");
mygrid.setColAlign("left,left,left,left,left");
mygrid.setColTypes("ro,ed,ed,ed,ed")
mygrid.setColSorting("int,str,str,str,str");
mygrid.setColumnIds("uNo,uName,uId,uPwd,uEmail");
mygrid.init();


$(document).ready(function(){
	
	var au = new AjaxUtil("${root}/user/user_list", null, "GET", "json");
	function callback(res){
		mygrid.parse({data:res},"js");
	}
	au.setCallbackSuccess(callback);
	au.send();
})
</script>
	</div>
		<button onclick="setPopW(true)">User Insert</button>
		<button onclick="setPopW(false)">Cancel</button>
	</div>
</body>
</html>