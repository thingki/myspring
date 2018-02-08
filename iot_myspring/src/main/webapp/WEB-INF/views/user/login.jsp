<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<link rel="stylesheet" href="${rPath}/ui/css/sign.css" />
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
function createW(){
   winF = new dhtmlXWindows();
   winF.attachViewportTo("winVP");
   popW = winF.createWindow("win1",550,80,400,400);
   popW.setText("SIGN UP");
   
   var formObj = [
   				{type:"fieldset", offsetTop:12, name:"connectionInfo", inputWidth:"auto",
        		list:[
		            {type:"input", name:"uName", label:"NAME", required:true},
		            {type:"input", name:"uId", label:"ID", required:true},
		            {type:"password", name:"uPwd", label:"PASSWORD", required:true},
		            {type:"input", name:"uEmail", label:"Email", required:true},
		            {type:"block", blockOffset:0, list:[
		            	{type:"button", name:"SignupBtn", value:"Sign Up"},
		                {type:"newcolum"},
		                {type:"button", name:"ResetBtn", value:"Reset"},
		                {type:"newcolum"},
		                {type:"button", name:"CancelBtn", value:"cancel"}
          				]}
         			]}];
   var form = popW.attachForm(formObj,true);
   
   form.attachEvent("onButtonClick", function(id){
	  if(id=="SignupBtn"){
		  if(form.validate()){
			  form.send("${root}/user/user_signup","post", callback) 
		  }
	  }else if(id=="ResetBtn"){
		  form.clear();
	  }else if(id=="CancelBtn"){
		  winF.unload();
	  } 
   });
}
function callback(loader, res){
	var res = JSON.parse(res);
	alert(res.msg);
	location.href="${root}/user/login";
	winF.unload();
}
function setPopW(){         
	createW();
}

</script>
<body>
<div id="winVP">
	<div class="container" style="color: black">
		<div class="starter-template">
			<h2 id="hText2" class="form-signin-heading">Login</h2>
			<div class="row">
				<div class="col-sm-4"></div>
				<div class="col-sm-4">
					<form:form commandName="insertUi" action="${root}/user/user_login" method="get">
						
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-user"></i>
							</span> 
							<input id="uId" type="text" class="form-control" name="uId"
								placeholder="ID" value="${insertUi.uId}" style="width:310px" autofocus>
						</div>
						
						<div class="input-group">
							<span class="input-group-addon">
								<i class="glyphicon glyphicon-lock"></i>
							</span>
							<input id="uPwd" type="password" class="form-control" name="uPwd"
								placeholder="Password" value="${insertUi.uPwd}" style="width:310px">
						</div>
						
						<div class="input-group">
							<span class="input-group-addon text-center">
									<label> <input id="saveId" type="checkbox">Remember Me</label>
							</span>
						</div>

						<div class="input-group">
							<button>Login</button>
						</div>
							<p>
								The test of our progress is not whether we add more to the
								abundance of those who have much; <br> it is whether we
								provide enough for those who have too little.<br> What
								experience and history teach is this - that people and
								government never have learned anything from history,<br> or
								acted on principles deduced from it.<br>
							</p>
					</form:form>
				</div>
			</div>
			<div class="col-sm-4"></div>
		</div>
		
	<div class="controls">
		<button onclick="setPopW()">Sign up</button>
	</div>
	</div>
	</div>
	



</body>
</html>