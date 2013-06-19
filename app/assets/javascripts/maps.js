// Document is ready
$(function() {

  // grab address value and put inside variable
  var address = $('#map-canvas').data('address');
  console.log(address);

  $.getJSON('http://maps.googleapis.com/maps/api/geocode/json?address=' + address + '&sensor=false', function(data) {

     var first_result = data.results[0];

    var lat = first_result.geometry.location.lat;
    var lng = first_result.geometry.location.lng;

    //create latlng object
    var latLngObject = new google.maps.LatLng(lat, lng);
    console.log(latLngObject);

    // Create map options
    var mapOptions = {
      center: new google.maps.LatLng(lat, lng),
      zoom: 3,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    //create map
    var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
  
    //draw marker
    var marker = new google.maps.Marker({
      position: latLngObject,
      map: map,
      icon:'/assets/cheese_marker.png',
 
      
    })
    
  });




  
  // //Create info window
  // var infowindow = new google.maps.InfoWindow({
  //   content: 'hello sailor!'
  // });


  // //Form submission event
  // $('#address_form').on('submit', function(event) {

  //   //stop form from submitting
  //   event.preventDefault();


  //   // grab address value and put inside variable
  //   var address = $('#address').val();

    


  //   //set centre of map
  //   map.setCenter(latLngObject);


    //draw marker
    

  //   //info window event
  //   google.maps.event.addListener(marker, 'click', function() {
  //   infowindow.setContent(first_result.formatted_address + '<br><img src="http://www.placecage.com/c/100/100">');
  //   infowindow.open(map,marker);
  //   });



  // });

  // });


});
