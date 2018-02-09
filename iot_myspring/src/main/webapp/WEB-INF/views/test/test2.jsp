<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <title></title>
</head>
<style>
body {
	/* background-image: url("http://i.imgur.com/KjyvQ6I.jpg"); */
	background-color: black;
	background-position: center center;
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

.logo-d {
	text-align: center;
	margin-top: 220px;
}

.logo-d img {
	width: 40%;
	height: 40%;
}

/* .line {
	margin: 0 auto;
	width: 45%;
	height: 5px;
	background: #fff;
	border-radius: 20px 60px 20px 50px;
} 가운데 하얀줄*/

#container #dock {
	width: 100%;
	text-align: center;
	margin: 0 auto;
}

#container {
	position: fixed;
	bottom: 0;
	text-align: center;
	right: 20%;
	left: 10%;
	width: 79%;
	background: rgba(255, 255, 255, 0.2);
	border-radius: 10px 10px 0 0;
}

#container li {
	list-style-type: none;
	display: inline-block;
	position: relative;
}

#container li img {
	width: 50px;
	height: 50px;
	-webkit-box-reflect: below 2px
		-webkit-gradient(linear, left top, left bottom, from(transparent),
		color-stop(0.7, transparent), to(rgba(255, 255, 255, .5)));
	-webkit-transition: all 0.3s;
	-webkit-transform-origin: 40% 70%;
}

#container li:hover img {
	-webkit-transform: scale(2);
	margin: 0 2em;
}

#container li:hover+li img, #container li.prev img {
	-webkit-transform: scale(1.5);
	margin: 0 1.5em;
}

#container li span {
	display: none;
	position: absolute;
	bottom: 100px;
	left: 0;
	width: 100%;
	background-color: #222;
	padding: 4px 0;
	border-radius: 7px;
}

#container li:hover span {
	display: block;
	color: #fff;
}
</style>
</head>

<body>
	<div class="logo-d">
		<!-- 메인가운데 화면<img src="https://blog.codepen.io/wp-content/uploads/2012/06/codepen-wordmark-display-inside-white@10x.png" alt=""> -->
	</div>
	<div class="line"></div>
  <div id="container">
    <div id="dock">
      <ul>
		<li>
          <span>Finder</span> <a href="#"><img src=
          "https://upload.wikimedia.org/wikipedia/en/4/45/Mac_Finder_icon_%28OS_X_Yosemite%29.png">
          </a>
        <li>
          <span>Chrome</span> <a href="#"><img src=
          "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Google_Chrome_icon_%282011%29.svg/2000px-Google_Chrome_icon_%282011%29.svg.png">
          </a>
        </li>
        <li>
          <span>Firefox</span> <a href="#"><img src=
          "http://pluspng.com/img-png/mozilla-png-file-mozilla-firefox-3-5-logo-256-png-256.png"></a>
        </li>
        <li>
          <span>App Store</span> <a href="#"><img src=
          "https://upload.wikimedia.org/wikipedia/commons/thumb/5/59/App_Store_OS_X.svg/2000px-App_Store_OS_X.svg.png"></a>
        </li>
        <li>
          <span>Codepen</span> <a href="#"><img src=
          "https://blog.codepen.io/wp-content/uploads/2012/06/Button-Fill-White-Large.png"></a>
        </li>
        <li>
          <span>Launchpad</span> <a href="#"><img src=
          "http://icons.iconarchive.com/icons/johanchalibert/mac-osx-yosemite/1024/launchpad-icon.png"></a>
        </li>
				<li>
          <span>System pereferences</span> <a href="#"><img src=
          "http://icons.iconarchive.com/icons/johanchalibert/mac-osx-yosemite/1024/system-preferences-icon.png"></a>
        </li>
				<li>
          <span>Siri</span> <a href="#"><img src=
          "https://pre00.deviantart.net/008b/th/pre/f/2017/169/1/3/siri_by_hs1987-dbd58rs.png"></a>
        </li>
				<li>
          <span>iTunes</span> <a href="#"><img src=
          "https://forums.macrumors.com/attachments/itunes-1024x1024-png.565323/"></a>
        </li>
      </ul>
    </div>
  </div>
</body>
</html>