<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<style type="text/css">
   *{
      margin: 5px;
      padding: 5px;
      text-align: center;
   }
   #map{
      width: auto;
      height: 200px;
      border: 2px #202322;               /*���� �� api�� ��� �� �ִ� ������ �����Ѵ�.*/
   }     
   #sampleEstate {
   	  width: auto;
      height: 300px;
   }                      
</style>
<title>����ȹ� ��۰��۰ | �о�����</title>
</head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="crossorigin="anonymous"></script>
<script src="http://maps.google.com/maps/api/js?key=Ű ��"></script>

<body bgcolor="#202322">
<h1 style="color:white">�о� ����</h1>
<div>
	<img id="sampleEstate" alt="popup-sample" src="images/sampleEstate.png">
</div>
<div>
	
</div>

<div id="map"></div>


<button id="unshow"> �ٽ� ���� �ʱ� </button>


<script type="text/javascript">
   var map;
   function initMap(){
      var ll={lat:37.500600,lng:127.036268};      /*���� �浵 ��ǥ�� �Է��ϴ� �ڵ�*/
      map=new google.maps.Map(
            document.getElementById("map"),
            {zoom:17,center:ll} /*zoom�� ���� Ȯ�� �����̴� ���ڰ� Ŭ���� ��ġ�� Ȯ���ؼ� ������ �����ش� center�� ���״�� ���������� �߽��� ���ϴ� �ڵ�*/
         );
      new google.maps.Marker(   /* �Է��� ��ġ�� ��Ŀ�� �����Ѵ�*/
            {position:ll,map:map,label:"��Ŀ-�� ������ġ"}
         );
   }
   initMap();
   
   $("#unshow").on("click",function(){
   	console.log("click");
       $.ajax({
           url : '${pageContext.request.contextPath}/unshow.pop',
           type : 'POST',
           success : function(result){
              console.log("������ ��ȯ��"+result);
              if(result==1){
           	   alert("����");
               }
              else {
            	alert("����");
               }
           }
        });
       
       window.close();
   });
  
</script>












</body>
</html>