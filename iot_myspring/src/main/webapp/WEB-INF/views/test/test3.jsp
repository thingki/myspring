<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<!-- <script src='//production-assets.codepen.io/assets/editor/live/console_runner-ce3034e6bde3912cc25f83cccb7caa2b0f976196f2f2d52303a462c826d54a73.js'></script> -->
<!-- <script src='//production-assets.codepen.io/assets/editor/live/css_live_reload_init-890dc39bb89183d4642d58b1ae5376a0193342f9aed88ea04330dc14c8d52f55.js'></script>
 -->
<!-- <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css'>
 -->
 
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'> <!--달 해  -->

<style>@import url(https://fonts.googleapis.com/css?family=Josefin+Sans);

html,
body {
  margin: 0;
  padding: 0;
}
body {
  color: #FFF;
  background: #1b2735;
  font-size: 14px;
  overflow: hidden;
  font-family: 'Josefin Sans', sans-serif;
}

a, a:visited{
  color: white;
  text-decoration: none;
  cursor: pointer;
  opacity: 1;
  transition: all .5s;
}

a:hover{
  opacity: .5;
}

.content{
    margin: auto;
    position:absolute;
    text-align: center;
    font-size: calc(5vh + 5vw);
    width: 100%;
    left: 50%;
    top:50%;
    -webkit-transform: translate(-50%,-50%);
        -ms-transform: translate(-50%,-50%);
            transform: translate(-50%,-50%);
}

.day{
  position:absolute;
  background:#1bc0ff;
  min-height:100%;
  min-width:100%;
  width:100%;
  height:100%;
  top:0;
  left:0;
}

.dayclose{
  cursor: pointer;
}

.citynight1{
  position: absolute;
  background-image: url(${rPath}/imgs/main/citynight2.png);
  background-repeat: repeat-x;
  background-position: bottom;
  background-size: contain;
  width: 100%;
  height: 25%;
  bottom: 0;
  left: 0;
  margin: 0;
}

.citynight2{
  position: absolute;
  background-image: url(${rPath}/imgs/main/citynight1.png);
  background-repeat: repeat-x;
  background-position: bottom;
  background-size: contain;
  width: 100%;
  height: 20%;
  bottom: 0;
  left: 0;
  margin: 0;
}

.cityday1{
  position: absolute;
  background-image: url(${rPath}/imgs/main/cityday1.png);
  background-repeat: repeat-x;
  background-position: bottom;
  background-size: contain;
  width: 100%;
  height: 25%;
  bottom: 0;
  left: 0;
  margin: 0;
}

.cityday2{
  position: absolute;
  background-image: url(${rPath}/imgs/main/cityday2.png);
  background-repeat: repeat-x;
  background-position: bottom;
  background-size: contain;
  width: 100%;
  height: 20%;
  bottom: 0;
  left: 0;
  margin: 0;
}

.clouds{
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  margin: auto;
}

#Clouds {
  position: absolute;
  top: 3%;
  right: 0;
  bottom: 67%;
  left: 0;
  margin: auto;
  height: 25%;
  overflow: hidden;
  -webkit-animation: 5s ease-out;
          animation: 5s ease-out;
  -webkit-user-select: none;
     -moz-user-select: none;
      -ms-user-select: none;
          user-select: none;
}
@-webkit-keyframes FadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
@keyframes FadeIn {
  from {
    opacity: 0;
  }
  to {
    opacity: 1;
  }
}
.Cloud {
  position: absolute;
  width: 100%;
  background-repeat: no-repeat;
  background-size: auto 100%;
  height: 70px;
  -webkit-animation-duration: 120s;
          animation-duration: 120s;
  -webkit-animation-iteration-count: infinite;
          animation-iteration-count: infinite;
  -webkit-animation-fill-mode: forwards;
          animation-fill-mode: forwards;
  -webkit-animation-timing-function: linear;
          animation-timing-function: linear;
  -webkit-animation-name: Float, FadeFloat;
          animation-name: Float, FadeFloat;
  z-index: 1;
}
.Cloud.Background1 {
  height: 10%;
  min-height: 20px;
  z-index: 3;
}
.Cloud.Background2 {
  height: 9.09090909%;
  min-height: 8px;
  -webkit-animation-duration: 210s;
          animation-duration: 210s;
}
@-webkit-keyframes Float {
  from {
    -webkit-transform: translateX(100%) translateZ(0);
            transform: translateX(100%) translateZ(0);
  }
  to {
    -webkit-transform: translateX(-15%) translateZ(0);
            transform: translateX(-15%) translateZ(0);
  }
}
@keyframes Float {
  from {
    -webkit-transform: translateX(100%) translateZ(0);
            transform: translateX(100%) translateZ(0);
  }
  to {
    -webkit-transform: translateX(-15%) translateZ(0);
            transform: translateX(-15%) translateZ(0);
  }
}

@-webkit-keyframes FadeFloat {
  0%,
  100% {
    opacity: 0;
  }
  5%,
  90% {
    opacity: 1;
  }
}
@keyframes FadeFloat {
  0%,
  100% {
    opacity: 0;
  }
  5%,
  90% {
    opacity: 1;
  }
}
.Cloud:nth-child(10) {
  -webkit-animation-delay: -184.61538462s;
          animation-delay: -184.61538462s;
  top: 60%;
}
.Cloud.Background1:nth-child(10) {
  -webkit-animation-duration: 80s;
          animation-duration: 80s;
  height: 35%;
}
.Cloud.Background2:nth-child(10) {
  -webkit-animation-duration: 110s;
          animation-duration: 110s;
  height: -3.40909091%;
}
.Cloud:nth-child(9) {
  -webkit-animation-delay: -166.15384615s;
          animation-delay: -166.15384615s;
  top: 54%;
}
.Cloud.Background1:nth-child(9) {
  -webkit-animation-duration: 84s;
          animation-duration: 84s;
  height: 32.5%;
}
.Cloud.Background2:nth-child(9) {
  -webkit-animation-duration: 114s;
          animation-duration: 114s;
  height: -2.15909091%;
}
.Cloud:nth-child(8) {
  -webkit-animation-delay: -147.69230769s;
          animation-delay: -147.69230769s;
  top: 48%;
}
.Cloud.Background1:nth-child(8) {
  -webkit-animation-duration: 88s;
          animation-duration: 88s;
  height: 30%;
}
.Cloud.Background2:nth-child(8) {
  -webkit-animation-duration: 118s;
          animation-duration: 118s;
  height: -0.90909091%;
}
.Cloud:nth-child(7) {
  -webkit-animation-delay: -129.23076923s;
          animation-delay: -129.23076923s;
  top: 42%;
}
.Cloud.Background1:nth-child(7) {
  -webkit-animation-duration: 92s;
          animation-duration: 92s;
  height: 27.5%;
}
.Cloud.Background2:nth-child(7) {
  -webkit-animation-duration: 122s;
          animation-duration: 122s;
  height: 0.34090909%;
}
.Cloud:nth-child(6) {
  -webkit-animation-delay: -110.76923077s;
          animation-delay: -110.76923077s;
  top: 36%;
}
.Cloud.Background1:nth-child(6) {
  -webkit-animation-duration: 96s;
          animation-duration: 96s;
  height: 25%;
}
.Cloud.Background2:nth-child(6) {
  -webkit-animation-duration: 126s;
          animation-duration: 126s;
  height: 1.59090909%;
}
.Cloud:nth-child(5) {
  -webkit-animation-delay: -92.30769231s;
          animation-delay: -92.30769231s;
  top: 30%;
}
.Cloud.Background1:nth-child(5) {
  -webkit-animation-duration: 100s;
          animation-duration: 100s;
  height: 22.5%;
}
.Cloud.Background2:nth-child(5) {
  -webkit-animation-duration: 130s;
          animation-duration: 130s;
  height: 2.84090909%;
}
.Cloud:nth-child(4) {
  -webkit-animation-delay: -73.84615385s;
          animation-delay: -73.84615385s;
  top: 24%;
}
.Cloud.Background1:nth-child(4) {
  -webkit-animation-duration: 104s;
          animation-duration: 104s;
  height: 20%;
}
.Cloud.Background2:nth-child(4) {
  -webkit-animation-duration: 134s;
          animation-duration: 134s;
  height: 4.09090909%;
}
.Cloud:nth-child(3) {
  -webkit-animation-delay: -55.38461538s;
          animation-delay: -55.38461538s;
  top: 18%;
}
.Cloud.Background1:nth-child(3) {
  -webkit-animation-duration: 108s;
          animation-duration: 108s;
  height: 17.5%;
}
.Cloud.Background2:nth-child(3) {
  -webkit-animation-duration: 138s;
          animation-duration: 138s;
  height: 5.34090909%;
}
.Cloud:nth-child(2) {
  -webkit-animation-delay: -36.92307692s;
          animation-delay: -36.92307692s;
  top: 12%;
}
.Cloud.Background1:nth-child(2) {
  -webkit-animation-duration: 112s;
          animation-duration: 112s;
  height: 15%;
}
.Cloud.Background2:nth-child(2) {
  -webkit-animation-duration: 142s;
          animation-duration: 142s;
  height: 6.59090909%;
}
.Cloud:nth-child(1) {
  -webkit-animation-delay: -18.46153846s;
          animation-delay: -18.46153846s;
  top: 6%;
}
.Cloud.Background1:nth-child(1) {
  -webkit-animation-duration: 116s;
          animation-duration: 116s;
  height: 12.5%;
}
.Cloud.Background2:nth-child(1) {
  -webkit-animation-duration: 146s;
          animation-duration: 146s;
  height: 7.84090909%;
}
.Cloud {
  background-image: url(${rPath}/imgs/main/cloud1.png);
}
.Cloud.Background2 {
  background-image: url(${rPath}/imgs/main/cloud2.png);
}


#star1 {
  width: 1px;
  height: 1px;
  background: transparent;
  box-shadow: 1458px 1965px #FFF , 657px 263px #FFF , 559px 1945px #FFF , 304px 1399px #FFF , 1965px 1318px #FFF , 1336px 439px #FFF , 1889px 1464px #FFF , 1453px 111px #FFF , 1497px 745px #FFF , 1864px 1693px #FFF , 856px 1369px #FFF , 45px 1492px #FFF , 577px 701px #FFF , 1990px 420px #FFF , 234px 1398px #FFF , 361px 213px #FFF , 573px 644px #FFF , 584px 717px #FFF , 1588px 499px #FFF , 176px 934px #FFF , 1401px 623px #FFF , 1703px 1034px #FFF , 1333px 1056px #FFF , 1423px 470px #FFF , 1193px 1649px #FFF , 232px 175px #FFF , 293px 69px #FFF , 1861px 544px #FFF , 1201px 1364px #FFF , 44px 1061px #FFF , 342px 1697px #FFF , 600px 1779px #FFF , 599px 1398px #FFF , 15px 1400px #FFF , 382px 1558px #FFF , 1745px 1499px #FFF , 607px 55px #FFF , 1106px 1456px #FFF , 1127px 217px #FFF , 1784px 494px #FFF , 863px 132px #FFF , 952px 1918px #FFF , 1757px 1157px #FFF , 424px 577px #FFF , 1896px 1619px #FFF , 1307px 1340px #FFF , 1311px 1520px #FFF , 1868px 594px #FFF , 1854px 980px #FFF , 278px 1987px #FFF , 1092px 1377px #FFF , 472px 1361px #FFF , 1524px 1672px #FFF , 1931px 987px #FFF , 1040px 869px #FFF , 1192px 601px #FFF , 689px 1951px #FFF , 1321px 914px #FFF , 173px 1789px #FFF , 1595px 881px #FFF , 1800px 86px #FFF , 1167px 672px #FFF , 1257px 526px #FFF , 960px 1868px #FFF , 81px 636px #FFF , 1993px 392px #FFF , 53px 417px #FFF , 104px 955px #FFF , 1636px 903px #FFF , 1603px 1489px #FFF , 1722px 1626px #FFF , 498px 918px #FFF , 1976px 287px #FFF , 1001px 755px #FFF , 486px 1800px #FFF , 1855px 1382px #FFF , 404px 262px #FFF , 1477px 653px #FFF , 433px 1123px #FFF , 82px 16px #FFF , 740px 1614px #FFF , 455px 609px #FFF , 1272px 608px #FFF , 540px 801px #FFF , 1523px 1780px #FFF , 1014px 937px #FFF , 1188px 1581px #FFF , 603px 422px #FFF , 822px 1817px #FFF , 871px 704px #FFF , 1434px 1795px #FFF , 1061px 408px #FFF , 1645px 82px #FFF , 1412px 181px #FFF , 1809px 1929px #FFF , 1984px 1250px #FFF , 810px 1889px #FFF , 1044px 296px #FFF , 335px 1303px #FFF , 97px 1460px #FFF , 1979px 1800px #FFF , 682px 295px #FFF , 561px 1690px #FFF , 250px 1362px #FFF , 1968px 1108px #FFF , 1954px 1727px #FFF , 993px 108px #FFF , 925px 1278px #FFF , 486px 1807px #FFF , 147px 657px #FFF , 1559px 2px #FFF , 1791px 424px #FFF , 382px 69px #FFF , 1410px 1635px #FFF , 1861px 553px #FFF , 1147px 1920px #FFF , 1712px 634px #FFF , 1953px 422px #FFF , 208px 1817px #FFF , 1366px 822px #FFF , 1111px 1966px #FFF , 132px 620px #FFF , 1098px 931px #FFF , 325px 874px #FFF , 692px 1418px #FFF , 659px 1228px #FFF , 1277px 1852px #FFF , 992px 1188px #FFF , 1687px 956px #FFF , 651px 1505px #FFF , 1034px 1047px #FFF , 56px 877px #FFF , 1706px 491px #FFF , 1479px 1992px #FFF , 1898px 1875px #FFF , 1797px 1981px #FFF , 1571px 1101px #FFF , 439px 783px #FFF , 1875px 430px #FFF , 621px 1731px #FFF , 31px 1723px #FFF , 642px 1827px #FFF , 675px 958px #FFF , 287px 88px #FFF , 194px 1295px #FFF , 1929px 261px #FFF , 859px 781px #FFF , 1098px 246px #FFF , 1297px 1887px #FFF , 449px 1602px #FFF , 504px 1742px #FFF , 1082px 569px #FFF , 821px 521px #FFF , 824px 10px #FFF , 871px 1431px #FFF , 1423px 1661px #FFF , 424px 703px #FFF , 1584px 1587px #FFF , 1960px 1015px #FFF , 816px 199px #FFF , 430px 949px #FFF , 278px 1706px #FFF , 1652px 646px #FFF , 630px 133px #FFF , 1565px 1498px #FFF , 321px 1652px #FFF , 1262px 636px #FFF , 1367px 1369px #FFF , 1402px 655px #FFF , 1538px 1981px #FFF , 1173px 395px #FFF , 1694px 1809px #FFF , 1405px 847px #FFF , 930px 1322px #FFF , 317px 750px #FFF , 283px 1182px #FFF , 1418px 704px #FFF , 41px 916px #FFF , 1626px 1001px #FFF , 656px 81px #FFF , 525px 457px #FFF , 113px 314px #FFF , 918px 80px #FFF , 1745px 1069px #FFF , 1086px 248px #FFF , 1986px 1605px #FFF , 1752px 1911px #FFF , 370px 550px #FFF , 1785px 686px #FFF , 1045px 1412px #FFF , 1847px 1169px #FFF , 7px 775px #FFF , 1742px 568px #FFF , 808px 1872px #FFF , 1602px 1712px #FFF , 1731px 477px #FFF , 226px 1264px #FFF , 1174px 1950px #FFF , 206px 1457px #FFF , 1601px 994px #FFF , 577px 205px #FFF , 19px 61px #FFF , 567px 776px #FFF , 1892px 1926px #FFF , 923px 1136px #FFF , 1516px 1862px #FFF , 216px 1524px #FFF , 768px 1168px #FFF , 768px 1264px #FFF , 1024px 273px #FFF , 1682px 542px #FFF , 1461px 107px #FFF , 1064px 1468px #FFF , 617px 1073px #FFF , 1608px 1730px #FFF , 1581px 1027px #FFF , 1275px 610px #FFF , 1329px 1044px #FFF , 1778px 295px #FFF , 1186px 1339px #FFF , 968px 1833px #FFF , 1250px 1192px #FFF , 1086px 1058px #FFF , 257px 648px #FFF , 1635px 1908px #FFF , 541px 448px #FFF , 588px 1759px #FFF , 1198px 1819px #FFF , 851px 1151px #FFF , 457px 1619px #FFF , 1132px 932px #FFF , 125px 845px #FFF , 1326px 847px #FFF , 1526px 42px #FFF , 1284px 1203px #FFF , 1096px 1771px #FFF , 1429px 222px #FFF , 832px 1136px #FFF , 1135px 1972px #FFF , 1565px 421px #FFF , 1049px 243px #FFF , 440px 952px #FFF , 1466px 1955px #FFF , 1207px 160px #FFF , 764px 1020px #FFF , 112px 1316px #FFF , 1973px 1203px #FFF , 47px 1783px #FFF , 338px 1307px #FFF , 496px 1289px #FFF , 1821px 656px #FFF , 1966px 116px #FFF , 1896px 1907px #FFF , 635px 1290px #FFF , 410px 890px #FFF , 1020px 278px #FFF , 262px 482px #FFF , 1268px 1670px #FFF , 106px 756px #FFF , 309px 35px #FFF , 294px 551px #FFF , 1537px 500px #FFF , 1663px 1886px #FFF , 1079px 1962px #FFF , 1281px 1496px #FFF , 1505px 1112px #FFF , 62px 952px #FFF , 93px 1779px #FFF , 5px 1539px #FFF , 160px 1458px #FFF , 114px 1775px #FFF , 838px 881px #FFF , 1917px 652px #FFF , 1946px 584px #FFF , 64px 606px #FFF , 100px 72px #FFF , 1179px 1622px #FFF , 1788px 1976px #FFF , 1563px 1170px #FFF , 1364px 41px #FFF , 1988px 1346px #FFF , 642px 1089px #FFF , 1382px 69px #FFF , 1151px 378px #FFF , 1932px 1884px #FFF , 1525px 1602px #FFF , 1517px 441px #FFF , 1570px 941px #FFF , 286px 1769px #FFF , 1968px 700px #FFF , 975px 1583px #FFF , 1310px 1368px #FFF , 338px 557px #FFF , 487px 1623px #FFF , 99px 1484px #FFF , 529px 206px #FFF , 1386px 383px #FFF , 1609px 781px #FFF , 1024px 7px #FFF , 445px 1567px #FFF , 738px 410px #FFF , 1428px 738px #FFF , 357px 654px #FFF , 1218px 653px #FFF , 1351px 1653px #FFF , 424px 941px #FFF , 1864px 1411px #FFF , 1314px 1531px #FFF , 1039px 995px #FFF , 602px 290px #FFF , 662px 1503px #FFF , 1462px 1666px #FFF , 1519px 1481px #FFF , 387px 1224px #FFF , 1900px 92px #FFF , 335px 1327px #FFF , 850px 1512px #FFF , 1704px 499px #FFF , 1961px 310px #FFF , 995px 1755px #FFF , 598px 743px #FFF , 1791px 1272px #FFF , 455px 1580px #FFF , 101px 1200px #FFF , 936px 1464px #FFF , 1568px 548px #FFF , 1319px 659px #FFF , 1379px 799px #FFF , 982px 744px #FFF , 1929px 1424px #FFF , 479px 927px #FFF , 1175px 910px #FFF , 735px 572px #FFF , 485px 1503px #FFF , 1467px 1063px #FFF , 299px 1952px #FFF , 891px 424px #FFF , 1341px 278px #FFF , 247px 1335px #FFF , 1479px 260px #FFF , 463px 1861px #FFF , 1767px 646px #FFF , 1154px 1389px #FFF , 11px 172px #FFF , 1554px 1571px #FFF , 71px 1880px #FFF , 743px 1681px #FFF , 176px 48px #FFF , 104px 1809px #FFF , 2px 657px #FFF , 1821px 1124px #FFF , 1586px 1407px #FFF , 151px 796px #FFF , 1101px 1940px #FFF , 1067px 149px #FFF , 1816px 1489px #FFF , 1198px 1879px #FFF , 1446px 1065px #FFF , 965px 251px #FFF , 1424px 1615px #FFF , 1566px 1733px #FFF , 1240px 327px #FFF , 203px 1853px #FFF , 1820px 1815px #FFF , 356px 1570px #FFF , 1118px 840px #FFF , 1690px 488px #FFF , 487px 1837px #FFF , 687px 1122px #FFF , 262px 1025px #FFF , 444px 632px #FFF , 1716px 1946px #FFF , 342px 1939px #FFF , 264px 978px #FFF , 1661px 192px #FFF , 937px 497px #FFF , 986px 527px #FFF , 428px 1017px #FFF , 1571px 495px #FFF , 517px 1894px #FFF , 507px 356px #FFF , 1218px 776px #FFF , 724px 326px #FFF , 25px 1950px #FFF , 866px 579px #FFF , 1598px 1569px #FFF , 348px 1858px #FFF , 404px 380px #FFF , 1652px 1718px #FFF , 1110px 132px #FFF , 1854px 86px #FFF , 268px 1700px #FFF , 1825px 714px #FFF , 1749px 1169px #FFF , 1631px 1077px #FFF , 29px 144px #FFF , 144px 27px #FFF , 1054px 609px #FFF , 374px 1406px #FFF , 799px 1041px #FFF , 1886px 202px #FFF , 839px 1878px #FFF , 1153px 1887px #FFF , 820px 1175px #FFF , 1950px 1140px #FFF , 1211px 1873px #FFF , 1312px 1557px #FFF , 707px 764px #FFF , 1004px 450px #FFF , 1773px 384px #FFF , 648px 1758px #FFF , 1922px 1613px #FFF , 276px 1384px #FFF , 369px 798px #FFF , 274px 567px #FFF , 1962px 855px #FFF , 548px 519px #FFF , 458px 257px #FFF , 51px 183px #FFF , 275px 1211px #FFF , 1943px 1509px #FFF , 211px 1177px #FFF , 463px 71px #FFF , 1454px 1030px #FFF , 1609px 1616px #FFF , 1409px 862px #FFF , 1831px 233px #FFF , 1374px 1177px #FFF , 1919px 862px #FFF , 79px 731px #FFF , 1763px 435px #FFF , 1127px 993px #FFF , 715px 1469px #FFF , 610px 47px #FFF , 541px 1324px #FFF , 81px 1198px #FFF , 946px 593px #FFF , 1441px 979px #FFF , 731px 395px #FFF , 842px 89px #FFF , 1792px 1593px #FFF , 1661px 1673px #FFF , 268px 1393px #FFF , 1111px 684px #FFF , 1250px 194px #FFF , 1093px 959px #FFF , 1898px 667px #FFF , 1052px 106px #FFF , 1456px 89px #FFF , 264px 999px #FFF , 369px 985px #FFF , 1757px 235px #FFF , 1374px 354px #FFF , 1128px 769px #FFF , 998px 350px #FFF , 1758px 1482px #FFF , 503px 678px #FFF , 791px 889px #FFF , 440px 1194px #FFF , 108px 1939px #FFF , 1320px 304px #FFF , 643px 1856px #FFF , 477px 664px #FFF , 1661px 197px #FFF , 1094px 1476px #FFF , 1857px 736px #FFF , 257px 647px #FFF , 812px 1643px #FFF , 421px 552px #FFF , 321px 1148px #FFF , 1180px 193px #FFF , 1409px 1880px #FFF , 215px 105px #FFF , 1358px 838px #FFF , 266px 3px #FFF , 1539px 841px #FFF , 119px 1226px #FFF , 876px 734px #FFF , 1758px 1745px #FFF , 632px 830px #FFF , 1920px 890px #FFF , 1779px 1493px #FFF , 1231px 884px #FFF , 999px 1358px #FFF , 544px 1562px #FFF , 770px 1982px #FFF , 304px 1648px #FFF , 1731px 380px #FFF , 1687px 1947px #FFF , 939px 165px #FFF , 350px 1308px #FFF , 1726px 1400px #FFF , 130px 1440px #FFF , 1146px 481px #FFF , 1904px 1977px #FFF , 241px 957px #FFF , 729px 1731px #FFF , 1752px 150px #FFF , 1805px 1361px #FFF , 191px 606px #FFF , 221px 156px #FFF , 1498px 513px #FFF , 1117px 323px #FFF , 170px 434px #FFF , 1899px 1311px #FFF , 1486px 465px #FFF , 79px 555px #FFF , 1565px 1466px #FFF , 1626px 87px #FFF , 516px 458px #FFF , 1500px 14px #FFF , 182px 1926px #FFF , 106px 167px #FFF , 1231px 1738px #FFF , 1563px 1991px #FFF , 1462px 865px #FFF , 1854px 825px #FFF , 239px 1310px #FFF , 1729px 1711px #FFF , 1873px 1896px #FFF , 728px 1619px #FFF , 343px 1665px #FFF , 710px 758px #FFF , 1617px 105px #FFF , 1486px 1366px #FFF , 1196px 1527px #FFF , 1815px 1082px #FFF , 879px 1367px #FFF , 64px 775px #FFF , 1322px 1956px #FFF , 2000px 225px #FFF , 1914px 107px #FFF , 1854px 1089px #FFF , 806px 139px #FFF , 1204px 1796px #FFF , 113px 132px #FFF , 420px 1873px #FFF , 1340px 1261px #FFF , 1362px 959px #FFF , 934px 140px #FFF , 1090px 1046px #FFF , 991px 1792px #FFF , 1116px 1021px #FFF , 113px 282px #FFF , 1063px 994px #FFF , 17px 1252px #FFF , 109px 123px #FFF , 1061px 1710px #FFF , 1800px 1348px #FFF , 1519px 1481px #FFF , 964px 1077px #FFF , 609px 171px #FFF , 1218px 832px #FFF , 1633px 748px #FFF , 101px 1817px #FFF , 1819px 1607px #FFF , 563px 1208px #FFF , 11px 1003px #FFF , 1618px 1537px #FFF , 1208px 246px #FFF , 1192px 1646px #FFF , 1582px 1483px #FFF , 851px 768px #FFF , 1213px 629px #FFF , 532px 1801px #FFF , 344px 1304px #FFF , 639px 775px #FFF , 1040px 1006px #FFF , 94px 315px #FFF , 1476px 1478px #FFF , 987px 1885px #FFF , 1407px 82px #FFF , 1835px 970px #FFF , 125px 1858px #FFF , 1825px 463px #FFF , 1236px 510px #FFF , 482px 455px #FFF , 490px 261px #FFF , 1016px 1602px #FFF , 861px 1893px #FFF , 910px 1877px #FFF , 1431px 395px #FFF , 1598px 333px #FFF , 1509px 1670px #FFF , 1666px 1544px #FFF , 1902px 874px #FFF , 1481px 1408px #FFF , 1183px 567px #FFF , 1202px 156px #FFF , 340px 1905px #FFF , 1861px 1471px #FFF , 1690px 485px #FFF , 870px 1343px #FFF , 827px 913px #FFF , 373px 1590px #FFF , 1517px 1377px #FFF , 1393px 659px #FFF , 235px 863px #FFF , 1212px 291px #FFF , 896px 940px #FFF , 1617px 447px #FFF , 472px 1216px #FFF , 557px 573px #FFF , 1398px 1927px #FFF , 444px 1717px #FFF , 1799px 1223px #FFF , 1363px 659px #FFF , 1420px 21px #FFF , 1649px 1029px #FFF , 1543px 295px #FFF , 570px 831px #FFF , 1234px 401px #FFF , 864px 1298px #FFF , 42px 1710px #FFF , 150px 1619px #FFF , 776px 147px #FFF , 1657px 1978px #FFF , 1209px 797px #FFF , 1633px 1474px #FFF , 1094px 1623px #FFF , 241px 344px #FFF , 1495px 254px #FFF , 152px 593px #FFF , 1043px 1780px #FFF , 1718px 1243px #FFF , 1305px 1235px #FFF , 370px 865px #FFF , 1999px 1009px #FFF , 1725px 1630px #FFF , 1438px 1338px #FFF , 1206px 1793px #FFF , 326px 1721px #FFF , 10px 841px #FFF , 1906px 1564px #FFF , 1101px 907px #FFF , 185px 1931px #FFF , 1027px 1489px #FFF , 819px 144px #FFF , 1418px 89px #FFF , 272px 1939px #FFF , 501px 1112px #FFF , 1878px 1089px #FFF , 1815px 452px #FFF , 1120px 612px #FFF , 1058px 1025px #FFF , 735px 1999px #FFF , 1615px 1851px #FFF , 1558px 383px #FFF , 1382px 1641px #FFF , 594px 1454px #FFF , 182px 1433px #FFF , 527px 1117px #FFF , 689px 1284px #FFF , 277px 913px #FFF , 44px 1011px #FFF , 755px 1504px #FFF , 1723px 1276px #FFF , 1904px 227px #FFF , 1520px 961px #FFF , 576px 366px #FFF , 200px 209px #FFF , 195px 168px #FFF , 1731px 441px #FFF , 854px 1431px #FFF , 287px 1774px #FFF , 1989px 99px #FFF , 41px 1931px #FFF , 1145px 997px #FFF , 237px 1328px #FFF , 1674px 1565px #FFF , 1301px 970px #FFF , 1160px 1411px #FFF , 1241px 1518px #FFF , 1981px 686px #FFF , 951px 1328px #FFF , 418px 50px #FFF , 205px 781px #FFF , 1773px 1493px #FFF , 1008px 1472px #FFF , 1453px 1468px #FFF , 1123px 129px #FFF , 605px 667px #FFF , 1503px 647px #FFF , 1123px 477px #FFF , 1898px 1590px #FFF , 612px 1502px #FFF , 277px 1433px #FFF , 179px 929px #FFF , 573px 1912px #FFF , 8px 862px #FFF , 625px 700px #FFF , 319px 230px #FFF , 1081px 1014px #FFF , 736px 1248px #FFF , 1862px 208px #FFF , 1386px 276px #FFF , 1354px 1191px #FFF , 964px 1180px #FFF , 1357px 1341px #FFF , 1623px 320px #FFF;
  animation: animStar 300s linear infinite;
}
#star1:after {
  content: " ";
  position: absolute;
  top: 2000px;
  width: 1px;
  height: 1px;
  background: transparent;
  box-shadow: 1458px 1965px #FFF , 657px 263px #FFF , 559px 1945px #FFF , 304px 1399px #FFF , 1965px 1318px #FFF , 1336px 439px #FFF , 1889px 1464px #FFF , 1453px 111px #FFF , 1497px 745px #FFF , 1864px 1693px #FFF , 856px 1369px #FFF , 45px 1492px #FFF , 577px 701px #FFF , 1990px 420px #FFF , 234px 1398px #FFF , 361px 213px #FFF , 573px 644px #FFF , 584px 717px #FFF , 1588px 499px #FFF , 176px 934px #FFF , 1401px 623px #FFF , 1703px 1034px #FFF , 1333px 1056px #FFF , 1423px 470px #FFF , 1193px 1649px #FFF , 232px 175px #FFF , 293px 69px #FFF , 1861px 544px #FFF , 1201px 1364px #FFF , 44px 1061px #FFF , 342px 1697px #FFF , 600px 1779px #FFF , 599px 1398px #FFF , 15px 1400px #FFF , 382px 1558px #FFF , 1745px 1499px #FFF , 607px 55px #FFF , 1106px 1456px #FFF , 1127px 217px #FFF , 1784px 494px #FFF , 863px 132px #FFF , 952px 1918px #FFF , 1757px 1157px #FFF , 424px 577px #FFF , 1896px 1619px #FFF , 1307px 1340px #FFF , 1311px 1520px #FFF , 1868px 594px #FFF , 1854px 980px #FFF , 278px 1987px #FFF , 1092px 1377px #FFF , 472px 1361px #FFF , 1524px 1672px #FFF , 1931px 987px #FFF , 1040px 869px #FFF , 1192px 601px #FFF , 689px 1951px #FFF , 1321px 914px #FFF , 173px 1789px #FFF , 1595px 881px #FFF , 1800px 86px #FFF , 1167px 672px #FFF , 1257px 526px #FFF , 960px 1868px #FFF , 81px 636px #FFF , 1993px 392px #FFF , 53px 417px #FFF , 104px 955px #FFF , 1636px 903px #FFF , 1603px 1489px #FFF , 1722px 1626px #FFF , 498px 918px #FFF , 1976px 287px #FFF , 1001px 755px #FFF , 486px 1800px #FFF , 1855px 1382px #FFF , 404px 262px #FFF , 1477px 653px #FFF , 433px 1123px #FFF , 82px 16px #FFF , 740px 1614px #FFF , 455px 609px #FFF , 1272px 608px #FFF , 540px 801px #FFF , 1523px 1780px #FFF , 1014px 937px #FFF , 1188px 1581px #FFF , 603px 422px #FFF , 822px 1817px #FFF , 871px 704px #FFF , 1434px 1795px #FFF , 1061px 408px #FFF , 1645px 82px #FFF , 1412px 181px #FFF , 1809px 1929px #FFF , 1984px 1250px #FFF , 810px 1889px #FFF , 1044px 296px #FFF , 335px 1303px #FFF , 97px 1460px #FFF , 1979px 1800px #FFF , 682px 295px #FFF , 561px 1690px #FFF , 250px 1362px #FFF , 1968px 1108px #FFF , 1954px 1727px #FFF , 993px 108px #FFF , 925px 1278px #FFF , 486px 1807px #FFF , 147px 657px #FFF , 1559px 2px #FFF , 1791px 424px #FFF , 382px 69px #FFF , 1410px 1635px #FFF , 1861px 553px #FFF , 1147px 1920px #FFF , 1712px 634px #FFF , 1953px 422px #FFF , 208px 1817px #FFF , 1366px 822px #FFF , 1111px 1966px #FFF , 132px 620px #FFF , 1098px 931px #FFF , 325px 874px #FFF , 692px 1418px #FFF , 659px 1228px #FFF , 1277px 1852px #FFF , 992px 1188px #FFF , 1687px 956px #FFF , 651px 1505px #FFF , 1034px 1047px #FFF , 56px 877px #FFF , 1706px 491px #FFF , 1479px 1992px #FFF , 1898px 1875px #FFF , 1797px 1981px #FFF , 1571px 1101px #FFF , 439px 783px #FFF , 1875px 430px #FFF , 621px 1731px #FFF , 31px 1723px #FFF , 642px 1827px #FFF , 675px 958px #FFF , 287px 88px #FFF , 194px 1295px #FFF , 1929px 261px #FFF , 859px 781px #FFF , 1098px 246px #FFF , 1297px 1887px #FFF , 449px 1602px #FFF , 504px 1742px #FFF , 1082px 569px #FFF , 821px 521px #FFF , 824px 10px #FFF , 871px 1431px #FFF , 1423px 1661px #FFF , 424px 703px #FFF , 1584px 1587px #FFF , 1960px 1015px #FFF , 816px 199px #FFF , 430px 949px #FFF , 278px 1706px #FFF , 1652px 646px #FFF , 630px 133px #FFF , 1565px 1498px #FFF , 321px 1652px #FFF , 1262px 636px #FFF , 1367px 1369px #FFF , 1402px 655px #FFF , 1538px 1981px #FFF , 1173px 395px #FFF , 1694px 1809px #FFF , 1405px 847px #FFF , 930px 1322px #FFF , 317px 750px #FFF , 283px 1182px #FFF , 1418px 704px #FFF , 41px 916px #FFF , 1626px 1001px #FFF , 656px 81px #FFF , 525px 457px #FFF , 113px 314px #FFF , 918px 80px #FFF , 1745px 1069px #FFF , 1086px 248px #FFF , 1986px 1605px #FFF , 1752px 1911px #FFF , 370px 550px #FFF , 1785px 686px #FFF , 1045px 1412px #FFF , 1847px 1169px #FFF , 7px 775px #FFF , 1742px 568px #FFF , 808px 1872px #FFF , 1602px 1712px #FFF , 1731px 477px #FFF , 226px 1264px #FFF , 1174px 1950px #FFF , 206px 1457px #FFF , 1601px 994px #FFF , 577px 205px #FFF , 19px 61px #FFF , 567px 776px #FFF , 1892px 1926px #FFF , 923px 1136px #FFF , 1516px 1862px #FFF , 216px 1524px #FFF , 768px 1168px #FFF , 768px 1264px #FFF , 1024px 273px #FFF , 1682px 542px #FFF , 1461px 107px #FFF , 1064px 1468px #FFF , 617px 1073px #FFF , 1608px 1730px #FFF , 1581px 1027px #FFF , 1275px 610px #FFF , 1329px 1044px #FFF , 1778px 295px #FFF , 1186px 1339px #FFF , 968px 1833px #FFF , 1250px 1192px #FFF , 1086px 1058px #FFF , 257px 648px #FFF , 1635px 1908px #FFF , 541px 448px #FFF , 588px 1759px #FFF , 1198px 1819px #FFF , 851px 1151px #FFF , 457px 1619px #FFF , 1132px 932px #FFF , 125px 845px #FFF , 1326px 847px #FFF , 1526px 42px #FFF , 1284px 1203px #FFF , 1096px 1771px #FFF , 1429px 222px #FFF , 832px 1136px #FFF , 1135px 1972px #FFF , 1565px 421px #FFF , 1049px 243px #FFF , 440px 952px #FFF , 1466px 1955px #FFF , 1207px 160px #FFF , 764px 1020px #FFF , 112px 1316px #FFF , 1973px 1203px #FFF , 47px 1783px #FFF , 338px 1307px #FFF , 496px 1289px #FFF , 1821px 656px #FFF , 1966px 116px #FFF , 1896px 1907px #FFF , 635px 1290px #FFF , 410px 890px #FFF , 1020px 278px #FFF , 262px 482px #FFF , 1268px 1670px #FFF , 106px 756px #FFF , 309px 35px #FFF , 294px 551px #FFF , 1537px 500px #FFF , 1663px 1886px #FFF , 1079px 1962px #FFF , 1281px 1496px #FFF , 1505px 1112px #FFF , 62px 952px #FFF , 93px 1779px #FFF , 5px 1539px #FFF , 160px 1458px #FFF , 114px 1775px #FFF , 838px 881px #FFF , 1917px 652px #FFF , 1946px 584px #FFF , 64px 606px #FFF , 100px 72px #FFF , 1179px 1622px #FFF , 1788px 1976px #FFF , 1563px 1170px #FFF , 1364px 41px #FFF , 1988px 1346px #FFF , 642px 1089px #FFF , 1382px 69px #FFF , 1151px 378px #FFF , 1932px 1884px #FFF , 1525px 1602px #FFF , 1517px 441px #FFF , 1570px 941px #FFF , 286px 1769px #FFF , 1968px 700px #FFF , 975px 1583px #FFF , 1310px 1368px #FFF , 338px 557px #FFF , 487px 1623px #FFF , 99px 1484px #FFF , 529px 206px #FFF , 1386px 383px #FFF , 1609px 781px #FFF , 1024px 7px #FFF , 445px 1567px #FFF , 738px 410px #FFF , 1428px 738px #FFF , 357px 654px #FFF , 1218px 653px #FFF , 1351px 1653px #FFF , 424px 941px #FFF , 1864px 1411px #FFF , 1314px 1531px #FFF , 1039px 995px #FFF , 602px 290px #FFF , 662px 1503px #FFF , 1462px 1666px #FFF , 1519px 1481px #FFF , 387px 1224px #FFF , 1900px 92px #FFF , 335px 1327px #FFF , 850px 1512px #FFF , 1704px 499px #FFF , 1961px 310px #FFF , 995px 1755px #FFF , 598px 743px #FFF , 1791px 1272px #FFF , 455px 1580px #FFF , 101px 1200px #FFF , 936px 1464px #FFF , 1568px 548px #FFF , 1319px 659px #FFF , 1379px 799px #FFF , 982px 744px #FFF , 1929px 1424px #FFF , 479px 927px #FFF , 1175px 910px #FFF , 735px 572px #FFF , 485px 1503px #FFF , 1467px 1063px #FFF , 299px 1952px #FFF , 891px 424px #FFF , 1341px 278px #FFF , 247px 1335px #FFF , 1479px 260px #FFF , 463px 1861px #FFF , 1767px 646px #FFF , 1154px 1389px #FFF , 11px 172px #FFF , 1554px 1571px #FFF , 71px 1880px #FFF , 743px 1681px #FFF , 176px 48px #FFF , 104px 1809px #FFF , 2px 657px #FFF , 1821px 1124px #FFF , 1586px 1407px #FFF , 151px 796px #FFF , 1101px 1940px #FFF , 1067px 149px #FFF , 1816px 1489px #FFF , 1198px 1879px #FFF , 1446px 1065px #FFF , 965px 251px #FFF , 1424px 1615px #FFF , 1566px 1733px #FFF , 1240px 327px #FFF , 203px 1853px #FFF , 1820px 1815px #FFF , 356px 1570px #FFF , 1118px 840px #FFF , 1690px 488px #FFF , 487px 1837px #FFF , 687px 1122px #FFF , 262px 1025px #FFF , 444px 632px #FFF , 1716px 1946px #FFF , 342px 1939px #FFF , 264px 978px #FFF , 1661px 192px #FFF , 937px 497px #FFF , 986px 527px #FFF , 428px 1017px #FFF , 1571px 495px #FFF , 517px 1894px #FFF , 507px 356px #FFF , 1218px 776px #FFF , 724px 326px #FFF , 25px 1950px #FFF , 866px 579px #FFF , 1598px 1569px #FFF , 348px 1858px #FFF , 404px 380px #FFF , 1652px 1718px #FFF , 1110px 132px #FFF , 1854px 86px #FFF , 268px 1700px #FFF , 1825px 714px #FFF , 1749px 1169px #FFF , 1631px 1077px #FFF , 29px 144px #FFF , 144px 27px #FFF , 1054px 609px #FFF , 374px 1406px #FFF , 799px 1041px #FFF , 1886px 202px #FFF , 839px 1878px #FFF , 1153px 1887px #FFF , 820px 1175px #FFF , 1950px 1140px #FFF , 1211px 1873px #FFF , 1312px 1557px #FFF , 707px 764px #FFF , 1004px 450px #FFF , 1773px 384px #FFF , 648px 1758px #FFF , 1922px 1613px #FFF , 276px 1384px #FFF , 369px 798px #FFF , 274px 567px #FFF , 1962px 855px #FFF , 548px 519px #FFF , 458px 257px #FFF , 51px 183px #FFF , 275px 1211px #FFF , 1943px 1509px #FFF , 211px 1177px #FFF , 463px 71px #FFF , 1454px 1030px #FFF , 1609px 1616px #FFF , 1409px 862px #FFF , 1831px 233px #FFF , 1374px 1177px #FFF , 1919px 862px #FFF , 79px 731px #FFF , 1763px 435px #FFF , 1127px 993px #FFF , 715px 1469px #FFF , 610px 47px #FFF , 541px 1324px #FFF , 81px 1198px #FFF , 946px 593px #FFF , 1441px 979px #FFF , 731px 395px #FFF , 842px 89px #FFF , 1792px 1593px #FFF , 1661px 1673px #FFF , 268px 1393px #FFF , 1111px 684px #FFF , 1250px 194px #FFF , 1093px 959px #FFF , 1898px 667px #FFF , 1052px 106px #FFF , 1456px 89px #FFF , 264px 999px #FFF , 369px 985px #FFF , 1757px 235px #FFF , 1374px 354px #FFF , 1128px 769px #FFF , 998px 350px #FFF , 1758px 1482px #FFF , 503px 678px #FFF , 791px 889px #FFF , 440px 1194px #FFF , 108px 1939px #FFF , 1320px 304px #FFF , 643px 1856px #FFF , 477px 664px #FFF , 1661px 197px #FFF , 1094px 1476px #FFF , 1857px 736px #FFF , 257px 647px #FFF , 812px 1643px #FFF , 421px 552px #FFF , 321px 1148px #FFF , 1180px 193px #FFF , 1409px 1880px #FFF , 215px 105px #FFF , 1358px 838px #FFF , 266px 3px #FFF , 1539px 841px #FFF , 119px 1226px #FFF , 876px 734px #FFF , 1758px 1745px #FFF , 632px 830px #FFF , 1920px 890px #FFF , 1779px 1493px #FFF , 1231px 884px #FFF , 999px 1358px #FFF , 544px 1562px #FFF , 770px 1982px #FFF , 304px 1648px #FFF , 1731px 380px #FFF , 1687px 1947px #FFF , 939px 165px #FFF , 350px 1308px #FFF , 1726px 1400px #FFF , 130px 1440px #FFF , 1146px 481px #FFF , 1904px 1977px #FFF , 241px 957px #FFF , 729px 1731px #FFF , 1752px 150px #FFF , 1805px 1361px #FFF , 191px 606px #FFF , 221px 156px #FFF , 1498px 513px #FFF , 1117px 323px #FFF , 170px 434px #FFF , 1899px 1311px #FFF , 1486px 465px #FFF , 79px 555px #FFF , 1565px 1466px #FFF , 1626px 87px #FFF , 516px 458px #FFF , 1500px 14px #FFF , 182px 1926px #FFF , 106px 167px #FFF , 1231px 1738px #FFF , 1563px 1991px #FFF , 1462px 865px #FFF , 1854px 825px #FFF , 239px 1310px #FFF , 1729px 1711px #FFF , 1873px 1896px #FFF , 728px 1619px #FFF , 343px 1665px #FFF , 710px 758px #FFF , 1617px 105px #FFF , 1486px 1366px #FFF , 1196px 1527px #FFF , 1815px 1082px #FFF , 879px 1367px #FFF , 64px 775px #FFF , 1322px 1956px #FFF , 2000px 225px #FFF , 1914px 107px #FFF , 1854px 1089px #FFF , 806px 139px #FFF , 1204px 1796px #FFF , 113px 132px #FFF , 420px 1873px #FFF , 1340px 1261px #FFF , 1362px 959px #FFF , 934px 140px #FFF , 1090px 1046px #FFF , 991px 1792px #FFF , 1116px 1021px #FFF , 113px 282px #FFF , 1063px 994px #FFF , 17px 1252px #FFF , 109px 123px #FFF , 1061px 1710px #FFF , 1800px 1348px #FFF , 1519px 1481px #FFF , 964px 1077px #FFF , 609px 171px #FFF , 1218px 832px #FFF , 1633px 748px #FFF , 101px 1817px #FFF , 1819px 1607px #FFF , 563px 1208px #FFF , 11px 1003px #FFF , 1618px 1537px #FFF , 1208px 246px #FFF , 1192px 1646px #FFF , 1582px 1483px #FFF , 851px 768px #FFF , 1213px 629px #FFF , 532px 1801px #FFF , 344px 1304px #FFF , 639px 775px #FFF , 1040px 1006px #FFF , 94px 315px #FFF , 1476px 1478px #FFF , 987px 1885px #FFF , 1407px 82px #FFF , 1835px 970px #FFF , 125px 1858px #FFF , 1825px 463px #FFF , 1236px 510px #FFF , 482px 455px #FFF , 490px 261px #FFF , 1016px 1602px #FFF , 861px 1893px #FFF , 910px 1877px #FFF , 1431px 395px #FFF , 1598px 333px #FFF , 1509px 1670px #FFF , 1666px 1544px #FFF , 1902px 874px #FFF , 1481px 1408px #FFF , 1183px 567px #FFF , 1202px 156px #FFF , 340px 1905px #FFF , 1861px 1471px #FFF , 1690px 485px #FFF , 870px 1343px #FFF , 827px 913px #FFF , 373px 1590px #FFF , 1517px 1377px #FFF , 1393px 659px #FFF , 235px 863px #FFF , 1212px 291px #FFF , 896px 940px #FFF , 1617px 447px #FFF , 472px 1216px #FFF , 557px 573px #FFF , 1398px 1927px #FFF , 444px 1717px #FFF , 1799px 1223px #FFF , 1363px 659px #FFF , 1420px 21px #FFF , 1649px 1029px #FFF , 1543px 295px #FFF , 570px 831px #FFF , 1234px 401px #FFF , 864px 1298px #FFF , 42px 1710px #FFF , 150px 1619px #FFF , 776px 147px #FFF , 1657px 1978px #FFF , 1209px 797px #FFF , 1633px 1474px #FFF , 1094px 1623px #FFF , 241px 344px #FFF , 1495px 254px #FFF , 152px 593px #FFF , 1043px 1780px #FFF , 1718px 1243px #FFF , 1305px 1235px #FFF , 370px 865px #FFF , 1999px 1009px #FFF , 1725px 1630px #FFF , 1438px 1338px #FFF , 1206px 1793px #FFF , 326px 1721px #FFF , 10px 841px #FFF , 1906px 1564px #FFF , 1101px 907px #FFF , 185px 1931px #FFF , 1027px 1489px #FFF , 819px 144px #FFF , 1418px 89px #FFF , 272px 1939px #FFF , 501px 1112px #FFF , 1878px 1089px #FFF , 1815px 452px #FFF , 1120px 612px #FFF , 1058px 1025px #FFF , 735px 1999px #FFF , 1615px 1851px #FFF , 1558px 383px #FFF , 1382px 1641px #FFF , 594px 1454px #FFF , 182px 1433px #FFF , 527px 1117px #FFF , 689px 1284px #FFF , 277px 913px #FFF , 44px 1011px #FFF , 755px 1504px #FFF , 1723px 1276px #FFF , 1904px 227px #FFF , 1520px 961px #FFF , 576px 366px #FFF , 200px 209px #FFF , 195px 168px #FFF , 1731px 441px #FFF , 854px 1431px #FFF , 287px 1774px #FFF , 1989px 99px #FFF , 41px 1931px #FFF , 1145px 997px #FFF , 237px 1328px #FFF , 1674px 1565px #FFF , 1301px 970px #FFF , 1160px 1411px #FFF , 1241px 1518px #FFF , 1981px 686px #FFF , 951px 1328px #FFF , 418px 50px #FFF , 205px 781px #FFF , 1773px 1493px #FFF , 1008px 1472px #FFF , 1453px 1468px #FFF , 1123px 129px #FFF , 605px 667px #FFF , 1503px 647px #FFF , 1123px 477px #FFF , 1898px 1590px #FFF , 612px 1502px #FFF , 277px 1433px #FFF , 179px 929px #FFF , 573px 1912px #FFF , 8px 862px #FFF , 625px 700px #FFF , 319px 230px #FFF , 1081px 1014px #FFF , 736px 1248px #FFF , 1862px 208px #FFF , 1386px 276px #FFF , 1354px 1191px #FFF , 964px 1180px #FFF , 1357px 1341px #FFF , 1623px 320px #FFF;
}

#star2 {
  width: 2px;
  height: 2px;
  background: transparent;
  box-shadow: 1908px 1081px #FFF , 1229px 554px #FFF , 1698px 685px #FFF , 1211px 1896px #FFF , 655px 878px #FFF , 977px 1279px #FFF , 551px 1197px #FFF , 149px 1784px #FFF , 1750px 974px #FFF , 1850px 1798px #FFF , 679px 1854px #FFF , 1826px 1252px #FFF , 1099px 222px #FFF , 627px 1294px #FFF , 1738px 517px #FFF , 1021px 1635px #FFF , 1930px 1091px #FFF , 2px 675px #FFF , 1311px 919px #FFF , 274px 123px #FFF , 531px 937px #FFF , 537px 1622px #FFF , 1572px 1340px #FFF , 1666px 1609px #FFF , 1455px 1540px #FFF , 230px 1223px #FFF , 1742px 1551px #FFF , 437px 532px #FFF , 1504px 1265px #FFF , 1555px 1118px #FFF , 1998px 1805px #FFF , 1142px 1973px #FFF , 434px 1952px #FFF , 1389px 1390px #FFF , 1696px 1321px #FFF , 368px 1048px #FFF , 541px 352px #FFF , 1016px 713px #FFF , 1468px 861px #FFF , 1208px 558px #FFF , 670px 561px #FFF , 1744px 1291px #FFF , 559px 1334px #FFF , 1428px 94px #FFF , 833px 1910px #FFF , 62px 340px #FFF , 708px 1536px #FFF , 1070px 453px #FFF , 1560px 1241px #FFF , 1603px 1666px #FFF , 301px 809px #FFF , 1198px 168px #FFF , 465px 519px #FFF , 1865px 166px #FFF , 899px 1869px #FFF , 107px 607px #FFF , 1974px 343px #FFF , 1340px 1281px #FFF , 1231px 1093px #FFF , 1318px 1869px #FFF , 994px 1933px #FFF , 300px 765px #FFF , 923px 1195px #FFF , 754px 513px #FFF , 1797px 259px #FFF , 1922px 1181px #FFF , 234px 574px #FFF , 1054px 1206px #FFF , 1841px 972px #FFF , 1074px 1777px #FFF , 1677px 1794px #FFF , 257px 1470px #FFF , 1848px 1343px #FFF , 1611px 1317px #FFF , 224px 100px #FFF , 49px 1443px #FFF , 740px 1118px #FFF , 70px 980px #FFF , 1054px 784px #FFF , 1816px 48px #FFF , 923px 1278px #FFF , 402px 881px #FFF , 85px 234px #FFF , 818px 1402px #FFF , 1252px 1365px #FFF , 1234px 326px #FFF , 1493px 644px #FFF , 569px 800px #FFF , 1331px 578px #FFF , 1911px 783px #FFF , 1022px 1211px #FFF , 1081px 1892px #FFF , 73px 718px #FFF , 1725px 1288px #FFF , 1264px 614px #FFF , 1764px 1478px #FFF , 511px 25px #FFF , 1988px 1904px #FFF , 613px 766px #FFF , 672px 851px #FFF , 1422px 47px #FFF , 1547px 937px #FFF , 215px 903px #FFF , 375px 201px #FFF , 828px 1399px #FFF , 1814px 316px #FFF , 1996px 1580px #FFF , 1037px 354px #FFF , 397px 1585px #FFF , 1851px 1099px #FFF , 58px 276px #FFF , 988px 1884px #FFF , 1998px 596px #FFF , 780px 1725px #FFF , 1901px 1898px #FFF , 683px 176px #FFF , 264px 1288px #FFF , 380px 926px #FFF , 658px 1792px #FFF , 1754px 1101px #FFF , 1206px 1672px #FFF , 825px 448px #FFF , 1588px 90px #FFF , 1572px 1866px #FFF , 1490px 1512px #FFF , 403px 806px #FFF , 1558px 49px #FFF , 1347px 1847px #FFF , 475px 1314px #FFF , 469px 147px #FFF , 389px 1418px #FFF , 890px 196px #FFF , 637px 360px #FFF , 592px 272px #FFF , 1338px 552px #FFF , 1747px 148px #FFF , 232px 1165px #FFF , 1472px 1502px #FFF , 1745px 1490px #FFF , 752px 42px #FFF , 655px 1081px #FFF , 1605px 534px #FFF , 602px 1525px #FFF , 1934px 670px #FFF , 217px 1178px #FFF , 1312px 776px #FFF , 1130px 1412px #FFF , 1918px 526px #FFF , 1458px 1410px #FFF , 1156px 1781px #FFF , 674px 1942px #FFF , 734px 1060px #FFF , 1206px 110px #FFF , 174px 1646px #FFF , 1402px 397px #FFF , 1928px 721px #FFF , 1844px 98px #FFF , 720px 1667px #FFF , 23px 1594px #FFF , 1765px 1791px #FFF , 1437px 1414px #FFF , 1441px 625px #FFF , 1694px 670px #FFF , 529px 310px #FFF , 1167px 1324px #FFF , 364px 456px #FFF , 389px 298px #FFF , 1234px 1893px #FFF , 1205px 1306px #FFF , 1856px 363px #FFF , 1319px 985px #FFF , 573px 724px #FFF , 309px 422px #FFF , 452px 1596px #FFF , 1355px 1860px #FFF , 1369px 714px #FFF , 987px 1327px #FFF , 33px 202px #FFF , 643px 644px #FFF , 220px 1797px #FFF , 1117px 913px #FFF , 99px 1784px #FFF , 741px 1449px #FFF , 5px 1197px #FFF , 1138px 791px #FFF , 1467px 1321px #FFF , 576px 1404px #FFF , 598px 120px #FFF , 1809px 1470px #FFF , 499px 1924px #FFF , 230px 1771px #FFF , 148px 26px #FFF , 488px 543px #FFF , 528px 236px #FFF , 1316px 1609px #FFF , 843px 705px #FFF , 1644px 1372px #FFF , 496px 1153px #FFF , 209px 1591px #FFF , 1598px 1018px #FFF;
  animation: animStar 700s linear infinite;
}
#star2:after {
  content: " ";
  position: absolute;
  top: 2000px;
  width: 2px;
  height: 2px;
  background: transparent;
  box-shadow: 1908px 1081px #FFF , 1229px 554px #FFF , 1698px 685px #FFF , 1211px 1896px #FFF , 655px 878px #FFF , 977px 1279px #FFF , 551px 1197px #FFF , 149px 1784px #FFF , 1750px 974px #FFF , 1850px 1798px #FFF , 679px 1854px #FFF , 1826px 1252px #FFF , 1099px 222px #FFF , 627px 1294px #FFF , 1738px 517px #FFF , 1021px 1635px #FFF , 1930px 1091px #FFF , 2px 675px #FFF , 1311px 919px #FFF , 274px 123px #FFF , 531px 937px #FFF , 537px 1622px #FFF , 1572px 1340px #FFF , 1666px 1609px #FFF , 1455px 1540px #FFF , 230px 1223px #FFF , 1742px 1551px #FFF , 437px 532px #FFF , 1504px 1265px #FFF , 1555px 1118px #FFF , 1998px 1805px #FFF , 1142px 1973px #FFF , 434px 1952px #FFF , 1389px 1390px #FFF , 1696px 1321px #FFF , 368px 1048px #FFF , 541px 352px #FFF , 1016px 713px #FFF , 1468px 861px #FFF , 1208px 558px #FFF , 670px 561px #FFF , 1744px 1291px #FFF , 559px 1334px #FFF , 1428px 94px #FFF , 833px 1910px #FFF , 62px 340px #FFF , 708px 1536px #FFF , 1070px 453px #FFF , 1560px 1241px #FFF , 1603px 1666px #FFF , 301px 809px #FFF , 1198px 168px #FFF , 465px 519px #FFF , 1865px 166px #FFF , 899px 1869px #FFF , 107px 607px #FFF , 1974px 343px #FFF , 1340px 1281px #FFF , 1231px 1093px #FFF , 1318px 1869px #FFF , 994px 1933px #FFF , 300px 765px #FFF , 923px 1195px #FFF , 754px 513px #FFF , 1797px 259px #FFF , 1922px 1181px #FFF , 234px 574px #FFF , 1054px 1206px #FFF , 1841px 972px #FFF , 1074px 1777px #FFF , 1677px 1794px #FFF , 257px 1470px #FFF , 1848px 1343px #FFF , 1611px 1317px #FFF , 224px 100px #FFF , 49px 1443px #FFF , 740px 1118px #FFF , 70px 980px #FFF , 1054px 784px #FFF , 1816px 48px #FFF , 923px 1278px #FFF , 402px 881px #FFF , 85px 234px #FFF , 818px 1402px #FFF , 1252px 1365px #FFF , 1234px 326px #FFF , 1493px 644px #FFF , 569px 800px #FFF , 1331px 578px #FFF , 1911px 783px #FFF , 1022px 1211px #FFF , 1081px 1892px #FFF , 73px 718px #FFF , 1725px 1288px #FFF , 1264px 614px #FFF , 1764px 1478px #FFF , 511px 25px #FFF , 1988px 1904px #FFF , 613px 766px #FFF , 672px 851px #FFF , 1422px 47px #FFF , 1547px 937px #FFF , 215px 903px #FFF , 375px 201px #FFF , 828px 1399px #FFF , 1814px 316px #FFF , 1996px 1580px #FFF , 1037px 354px #FFF , 397px 1585px #FFF , 1851px 1099px #FFF , 58px 276px #FFF , 988px 1884px #FFF , 1998px 596px #FFF , 780px 1725px #FFF , 1901px 1898px #FFF , 683px 176px #FFF , 264px 1288px #FFF , 380px 926px #FFF , 658px 1792px #FFF , 1754px 1101px #FFF , 1206px 1672px #FFF , 825px 448px #FFF , 1588px 90px #FFF , 1572px 1866px #FFF , 1490px 1512px #FFF , 403px 806px #FFF , 1558px 49px #FFF , 1347px 1847px #FFF , 475px 1314px #FFF , 469px 147px #FFF , 389px 1418px #FFF , 890px 196px #FFF , 637px 360px #FFF , 592px 272px #FFF , 1338px 552px #FFF , 1747px 148px #FFF , 232px 1165px #FFF , 1472px 1502px #FFF , 1745px 1490px #FFF , 752px 42px #FFF , 655px 1081px #FFF , 1605px 534px #FFF , 602px 1525px #FFF , 1934px 670px #FFF , 217px 1178px #FFF , 1312px 776px #FFF , 1130px 1412px #FFF , 1918px 526px #FFF , 1458px 1410px #FFF , 1156px 1781px #FFF , 674px 1942px #FFF , 734px 1060px #FFF , 1206px 110px #FFF , 174px 1646px #FFF , 1402px 397px #FFF , 1928px 721px #FFF , 1844px 98px #FFF , 720px 1667px #FFF , 23px 1594px #FFF , 1765px 1791px #FFF , 1437px 1414px #FFF , 1441px 625px #FFF , 1694px 670px #FFF , 529px 310px #FFF , 1167px 1324px #FFF , 364px 456px #FFF , 389px 298px #FFF , 1234px 1893px #FFF , 1205px 1306px #FFF , 1856px 363px #FFF , 1319px 985px #FFF , 573px 724px #FFF , 309px 422px #FFF , 452px 1596px #FFF , 1355px 1860px #FFF , 1369px 714px #FFF , 987px 1327px #FFF , 33px 202px #FFF , 643px 644px #FFF , 220px 1797px #FFF , 1117px 913px #FFF , 99px 1784px #FFF , 741px 1449px #FFF , 5px 1197px #FFF , 1138px 791px #FFF , 1467px 1321px #FFF , 576px 1404px #FFF , 598px 120px #FFF , 1809px 1470px #FFF , 499px 1924px #FFF , 230px 1771px #FFF , 148px 26px #FFF , 488px 543px #FFF , 528px 236px #FFF , 1316px 1609px #FFF , 843px 705px #FFF , 1644px 1372px #FFF , 496px 1153px #FFF , 209px 1591px #FFF , 1598px 1018px #FFF;
}

#star3 {
  width: 3px;
  height: 3px;
  background: transparent;
  box-shadow: 624px 1541px #FFF , 1349px 1823px #FFF , 1343px 1866px #FFF , 132px 1873px #FFF , 1753px 1387px #FFF , 46px 1632px #FFF , 761px 1528px #FFF , 1851px 171px #FFF , 1434px 1889px #FFF , 1799px 1408px #FFF , 435px 1899px #FFF , 920px 1157px #FFF , 679px 906px #FFF , 675px 391px #FFF , 884px 1185px #FFF , 1013px 210px #FFF , 434px 1651px #FFF , 643px 872px #FFF , 1862px 764px #FFF , 463px 369px #FFF , 396px 1004px #FFF , 481px 434px #FFF , 226px 1310px #FFF , 653px 1870px #FFF , 547px 190px #FFF , 96px 846px #FFF , 690px 1230px #FFF , 1258px 1399px #FFF , 182px 116px #FFF , 1744px 1345px #FFF , 1298px 74px #FFF , 540px 16px #FFF , 1716px 1895px #FFF , 1324px 1184px #FFF , 1332px 405px #FFF , 1673px 1651px #FFF , 1516px 1826px #FFF , 1863px 1197px #FFF , 1468px 1881px #FFF , 1653px 1044px #FFF , 457px 596px #FFF , 454px 458px #FFF , 1868px 1338px #FFF , 1928px 11px #FFF , 450px 1131px #FFF , 1582px 281px #FFF , 1405px 1437px #FFF , 1803px 1003px #FFF , 181px 258px #FFF , 4px 1561px #FFF , 1266px 1771px #FFF , 1487px 1958px #FFF , 267px 1709px #FFF , 805px 1699px #FFF , 1736px 1868px #FFF , 1154px 892px #FFF , 1893px 1824px #FFF , 1364px 88px #FFF , 111px 1917px #FFF , 683px 792px #FFF , 1648px 1229px #FFF , 372px 63px #FFF , 128px 1435px #FFF , 1576px 1540px #FFF , 1100px 1096px #FFF , 1922px 1211px #FFF , 1993px 280px #FFF , 1567px 1350px #FFF , 213px 309px #FFF , 1427px 208px #FFF , 984px 1283px #FFF , 891px 1241px #FFF , 868px 787px #FFF , 1475px 324px #FFF , 1622px 195px #FFF , 1821px 1006px #FFF , 1109px 1378px #FFF , 1403px 1535px #FFF , 1071px 686px #FFF , 1660px 678px #FFF , 715px 1668px #FFF , 1286px 1697px #FFF , 703px 809px #FFF , 1806px 1616px #FFF , 231px 36px #FFF , 1015px 1761px #FFF , 1102px 1325px #FFF , 326px 1204px #FFF , 470px 1747px #FFF , 794px 497px #FFF , 1666px 362px #FFF , 379px 530px #FFF , 1683px 1397px #FFF , 100px 1468px #FFF , 551px 1488px #FFF , 587px 1121px #FFF , 937px 1892px #FFF , 1538px 1839px #FFF , 183px 360px #FFF , 234px 537px #FFF;
  animation: animStar 1000s linear infinite;
}
#star3:after {
  content: " ";
  position: absolute;
  top: 2000px;
  width: 3px;
  height: 3px;
  background: transparent;
  box-shadow: 624px 1541px #FFF , 1349px 1823px #FFF , 1343px 1866px #FFF , 132px 1873px #FFF , 1753px 1387px #FFF , 46px 1632px #FFF , 761px 1528px #FFF , 1851px 171px #FFF , 1434px 1889px #FFF , 1799px 1408px #FFF , 435px 1899px #FFF , 920px 1157px #FFF , 679px 906px #FFF , 675px 391px #FFF , 884px 1185px #FFF , 1013px 210px #FFF , 434px 1651px #FFF , 643px 872px #FFF , 1862px 764px #FFF , 463px 369px #FFF , 396px 1004px #FFF , 481px 434px #FFF , 226px 1310px #FFF , 653px 1870px #FFF , 547px 190px #FFF , 96px 846px #FFF , 690px 1230px #FFF , 1258px 1399px #FFF , 182px 116px #FFF , 1744px 1345px #FFF , 1298px 74px #FFF , 540px 16px #FFF , 1716px 1895px #FFF , 1324px 1184px #FFF , 1332px 405px #FFF , 1673px 1651px #FFF , 1516px 1826px #FFF , 1863px 1197px #FFF , 1468px 1881px #FFF , 1653px 1044px #FFF , 457px 596px #FFF , 454px 458px #FFF , 1868px 1338px #FFF , 1928px 11px #FFF , 450px 1131px #FFF , 1582px 281px #FFF , 1405px 1437px #FFF , 1803px 1003px #FFF , 181px 258px #FFF , 4px 1561px #FFF , 1266px 1771px #FFF , 1487px 1958px #FFF , 267px 1709px #FFF , 805px 1699px #FFF , 1736px 1868px #FFF , 1154px 892px #FFF , 1893px 1824px #FFF , 1364px 88px #FFF , 111px 1917px #FFF , 683px 792px #FFF , 1648px 1229px #FFF , 372px 63px #FFF , 128px 1435px #FFF , 1576px 1540px #FFF , 1100px 1096px #FFF , 1922px 1211px #FFF , 1993px 280px #FFF , 1567px 1350px #FFF , 213px 309px #FFF , 1427px 208px #FFF , 984px 1283px #FFF , 891px 1241px #FFF , 868px 787px #FFF , 1475px 324px #FFF , 1622px 195px #FFF , 1821px 1006px #FFF , 1109px 1378px #FFF , 1403px 1535px #FFF , 1071px 686px #FFF , 1660px 678px #FFF , 715px 1668px #FFF , 1286px 1697px #FFF , 703px 809px #FFF , 1806px 1616px #FFF , 231px 36px #FFF , 1015px 1761px #FFF , 1102px 1325px #FFF , 326px 1204px #FFF , 470px 1747px #FFF , 794px 497px #FFF , 1666px 362px #FFF , 379px 530px #FFF , 1683px 1397px #FFF , 100px 1468px #FFF , 551px 1488px #FFF , 587px 1121px #FFF , 937px 1892px #FFF , 1538px 1839px #FFF , 183px 360px #FFF , 234px 537px #FFF;
}

@keyframes animStar {
  from {
    transform: translateY(0px);
  }
  to {
    transform: translateY(-2000px);
  }
}
</style>
</head>
<body>
<div id="Clouds">
  <div class="Cloud Background1"></div>
  <div class="Cloud Background2"></div>
  <div class="Cloud Background1"></div>
  <div class="Cloud Background2"></div>
  <div class="Cloud Background1"></div>
  <div class="Cloud Background2"></div>
  <div class="Cloud Background2"></div>
  <div class="Cloud Background1"></div>
  <div class="Cloud Background2"></div>
  <div class="Cloud Background2"></div>
</div>

<div class="night">
  <div class="stars">
    <div id='star1'></div>
    <div id='star2'></div>
    <div id='star3'></div>
  </div>
  <div class="citynight1"></div>
  <div class="citynight2"></div>
  <div class="content">
    <a class="dayopen" href="" data-target="day">
      <i class="fa fa-moon-o"></i>
    </a>
  </div>
</div>

<div id="day" class="day" style="display: none;">
  <div class="cityday1"></div>
  <div class="cityday2"></div>
  <div class="content">
    <a class="dayclose">
      <i class="fa fa-sun-o"></i>
    </a>
  </div>
</div>

<script >jQuery(document).ready(function(){
	$('.dayopen').on('click', function(e) {
		var href, target;
		e.preventDefault();
		target = $(this).data('target');
		href = "#" + target;
		$("#" + target).fadeIn().addClass('activeday');
		return $(document).scrollTop(0);
	});
	return $('.dayclose').on('click', function(e) {e.preventDefault();
		return $('.activeday').fadeOut().removeClass('activeday');
	});
});

</script>
</body>
</html>