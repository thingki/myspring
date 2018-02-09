<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
<title>Complex content in header</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
	<script>
		var myGrid;
		function doOnLoad(){
			myGrid = new dhtmlXGridObject('gridbox');
			myGrid.setImagePath("../../../codebase/imgs/");
			myGrid.setHeader("Sales,Title,Author,Price,In Store,Shipping,Bestseller,Published");
			myGrid.setInitWidths("70,150,120,80,80,80,80,100");
			myGrid.setColAlign("right,left,left,right,center,left,center,center");
			myGrid.setColTypes("dyn,ed,ed,price,ch,co,ra,ro");
			var combobox = myGrid.getCombo(5);
			combobox.put("1","1 Hour");
			combobox.put("12","12 Hours");
			combobox.put("24","24 Hours");
			combobox.put("48","2 days");
			combobox.put("168","1 week");
			combobox.put("pick","pick up");
			combobox.put("na","na");
			myGrid.setColSorting("int,str,str,int,str,str,str,str");
			myGrid.setColumnColor("white,#d5f1ff,#d5f1ff");
			myGrid.setColumnMinWidth(50,0);
			myGrid.enableAutoWidth(true);
			myGrid.enableAutoHeight(true);
			myGrid.init();
			myGrid.load("../common/grid.xml", function(){
				myGrid.attachHeader("#rspan,<div id='title_flt' style='width:90%'></div>,<div id='author_flt'></div>,#rspan,#rspan,#rspan,#rspan,#rspan");
				//set title filter field
				document.getElementById("title_flt").appendChild(document.getElementById("title_flt_box").childNodes[0]);
				//set author fiter field
				var authFlt = document.getElementById("author_flt").appendChild(document.getElementById("author_flt_box").childNodes[0]);
				populateSelectWithAuthors(authFlt);
				//block sorting and resize actions for second row
				myGrid.hdr.rows[2].onmousedown=myGrid.hdr.rows[2].onclick=function(e){(e||event).cancelBubble=true;};
				myGrid.setSizes();
			});
		}
		function filterBy(){
			var tVal = document.getElementById("title_flt").childNodes[0].value.toLowerCase();
			var aVal = document.getElementById("author_flt").childNodes[0].value.toLowerCase();
			for(var i=0; i< myGrid.getRowsNum();i++){
				var tStr = myGrid.cells2(i,1).getValue().toString().toLowerCase();
				var aStr = myGrid.cells2(i,2).getValue().toString().toLowerCase();
				if((tVal=="" || tStr.indexOf(tVal)==0) && (aVal=="" || aStr.indexOf(aVal)==0))
					myGrid.setRowHidden(myGrid.getRowId(i),false);
				else
					myGrid.setRowHidden(myGrid.getRowId(i),true)
			}
		}
		function populateSelectWithAuthors(selObj){
			selObj.options.add(new Option("All Authors",""));
			var usedAuthAr = new dhtmlxArray();
			for(var i=0;i<myGrid.getRowsNum();i++){
				var authNm = myGrid.cells2(i,2).getValue();
				if(usedAuthAr._dhx_find(authNm)==-1){
					selObj.options.add(new Option(authNm,authNm));
					usedAuthAr[usedAuthAr.length] = authNm;
				}
			}
		}
	</script>
</head>
<body onLoad="doOnLoad()">
	<h1>Complex content in header</h1>
	<p>Setting complex content to header</p>
	<div id="gridbox" style="width:750px;height:450px;overflow:hidden"></div>
	<ul>
		<li>Complex objects to use in grid header can be created in invisible container and attached to div elements in grid header after loading grid.
			Otherwise they can be created using script on the fly.</li>
		<li>Example of functions which can be usefull for filtering grid content (used in current sample):</li>
	</ul>
	<div style="display:none">
		<div id="title_flt_box"><input type="text" style="width: 100%; border:1px solid gray;" onClick="(arguments[0]||window.event).cancelBubble=true;" onKeyUp="filterBy()"></div>
		<div id="author_flt_box"><select style="width:100%" onclick="(arguments[0]||window.event).cancelBubble=true;" onChange="filterBy()"></select></div>
	</div>
</body>
</html>
