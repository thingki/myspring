<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign UP</title>
</head>

<style>
   div#winVP {
      position: relative;
      height: 100%;
      border: 1px solid #dfdfdf;
      margin: 10px;
   }
</style>
<script>
   var winF,popW;
   $(document).ready(function(){
	 
      winF = new dhtmlXWindows();
      winF.attachViewportTo("winVP");
      popW = winF.createWindow("win1",20,30,420,500);
      //popW.hide(); 
      popW.button("close").hide();
      popW.button("minmax").hide();
      popW.button("park").hide();
      popW.setText("Login"); 

      winF.window("win1").centerOnScreen();
      winF.window("win1").denyMove();
      winF.window("win1").denyResize();
      
      var formObj = [
				{type:"fieldset", offsetTop:12, name:"connectionInfo", inputWidth:"auto",
  		list:[
	            {type:"input", name:"uName", label:"NAME : ", required:true},
	            {type:"input", name:"uId", label:"ID : ", required:true},
	            {type:"password", name:"uPwd", label:"PASSWORD : ", required:true},
	            {type:"input", name:"uEmail", label:"Email : ", required:true},
	            {type:"label", name:"uAdmin", label:"관리자권한 : ", list:[
	            	{type: "radio", name:"uAdmin", value:"1", label:"예", checked:true},
	            	{type: "radio", name:"uAdmin", value:"0", label:"아니요"}
	            ]},
	            {type:"block", blockOffset:0, list:[
	            	{type:"button", name:"SignupBtn", value:"Sign Up"},
	                {type:"newcolum"},
	                {type:"button", name:"ResetBtn", value:"Reset"},
	                {type:"newcolum"},
	                {type:"button", name:"CancelBtn", value:"cancel"}
    				]}
   			]}];
      var form = popW.attachForm(formObj,true);
      
      form.attachEvent("onButtonClick",function(id){
         if(id=="SignupBtn"){
            if(form.validate()){
               form.send("${root}/user/signup", "post", callback);
            }
         }else if(id=="ResetBtn"){
            form.clear();
         }else if(id=="CancelBtn"){
        	 form.hide();
         }
        	 
      });
  /*     if(${isLogin}){
          popW.hide();
        }  */

   })
   
   function callback(loader, res){
	      if(loader.xmlDoc.status == 200){
	          var res = JSON.parse(res);
	          alert(res.msg);
	          if(res.loginOk){
	        	  location.href="${root}/path/db/main";
	          }
	       }else{  
	          console.log(res);
	       }
   }
   function setPopW(onOff){
      if(onOff){
         popW.show();
         return;
      }
      popW.hide();
   }
</script>
<body>
   <div id="winVP"></div>
</body>
</html>