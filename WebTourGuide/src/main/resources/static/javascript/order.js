function calculateMap() {
    var mapObj = $("#id_map");
    var parent = mapObj.parent(), w, h;

    w = parent.outerWidth(false) - 30;
    h = w * 0.75; // 4/3 | 16/9
    mapObj.css({ width: w, height: h });
}
    
function initMapAutocomplete() {
    var map = new google.maps.Map(document.getElementById('id_map'), {
        center: {lat: -33.8688, lng: 151.2195},
        zoom: 13,
        mapTypeId: 'roadmap'
    });

    // Create the search box and link it to the UI element.

    var from_places = document.getElementById('location-start-2');
    console.log(from_places);
    var searchBox = new google.maps.places.SearchBox(from_places); 
    console.log(searchBox);
    
    var to_places = document.getElementById('location-end-3');
    console.log(to_places);
    var searchBox2 = new google.maps.places.SearchBox(to_places); 
    console.log(searchBox2);
//    map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

    // Bias the SearchBox results towards current map's viewport.
    map.addListener('bounds_changed', function() {
        searchBox.setBounds(map.getBounds());
    });
    
    map.addListener('bounds_changed', function() {
        searchBox2.setBounds(map.getBounds());
    });

    var markers = [];
    // Listen for the event fired when the user selects a prediction and retrieve
    // more details for that place.
    searchBox.addListener('places_changed', function() {
        var places_from = searchBox.getPlaces();
        console.log(places_from);

        if (places_from.length == 0) {
            return;
        }

        // Clear out the old markers.
        markers.forEach(function(marker) {
            marker.setMap(null);
        });
        markers = [];

        // For each place, get the icon, name and location.
        var bounds = new google.maps.LatLngBounds();
        places_from.forEach(function(place) {
            if (!place.geometry) {
                console.log("Returned place contains no geometry");
                return;
            }
            $("#id_lat").val(place.geometry.location.lat());
            $("#id_long").val(place.geometry.location.lng());
            $("#id_location_start").val(place.formatted_address);
//            console.log(place.geometry.location);
//            console.log();
//            console.log(place.geometry.location.lng());
            var icon = {
                url: place.icon,
                size: new google.maps.Size(71, 71),
                origin: new google.maps.Point(0, 0),
                anchor: new google.maps.Point(17, 34),
                scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
                map: map,
                icon: icon,
                title: place.name,
                position: place.geometry.location
            }));

            if (place.geometry.viewport) {
                // Only geocodes have viewport.
                bounds.union(place.geometry.viewport);
            } else {
                bounds.extend(place.geometry.location);
            }
        });
        map.fitBounds(bounds);
    });
    
    searchBox2.addListener('places_changed', function() {
        var places_to = searchBox2.getPlaces();
        console.log(places_to);

        if (places_to.length == 0) {
            return;
        }

        // Clear out the old markers.
        markers.forEach(function(marker) {
            marker.setMap(null);
        });
        markers = [];

        // For each place, get the icon, name and location.
        var bounds = new google.maps.LatLngBounds();
        places_to.forEach(function(place) {
            if (!place.geometry) {
                console.log("Returned place contains no geometry");
                return;
            }
            $("#id_lat2").val(place.geometry.location.lat());
            $("#id_long2").val(place.geometry.location.lng());
            $("#id_location_end").val(place.formatted_address);
//            console.log(place.geometry.location);
//            console.log();
//            console.log(place.geometry.location.lng());
            var icon = {
                url: place.icon,
                size: new google.maps.Size(71, 71),
                origin: new google.maps.Point(0, 0),
                anchor: new google.maps.Point(17, 34),
                scaledSize: new google.maps.Size(25, 25)
            };

            // Create a marker for each place.
            markers.push(new google.maps.Marker({
                map: map,
                icon: icon,
                title: place.name,
                position: place.geometry.location
            }));

            if (place.geometry.viewport) {
                // Only geocodes have viewport.
                bounds.union(place.geometry.viewport);
            } else {
                bounds.extend(place.geometry.location);
            }
        });
        map.fitBounds(bounds);
    });
}