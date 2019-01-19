<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD6pXMBBmopSotPkYVBG0fOLsU5vo7F4-Q&callback=initialize"></script>

<script>
var myCenter=new google.maps.LatLng(18.5525, 73.9015);
var marker;

function initialize()
{
var mapProp = {
  center:myCenter,
  zoom:13,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  animation:google.maps.Animation.BOUNCE
  });

marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);
</script>
</head>

<body>
<div id="googleMap" style="width:1200px;height:500px;"></div>
</body>
</html>
