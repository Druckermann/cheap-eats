import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10"
    });
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
    const geocoder = new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl
      });
    document.getElementById('geocoder').appendChild(geocoder.onAdd(this.map));

    // AT: Idea 2 for capturing search result 11/05
    geocoder.on('result', function(e) {
      // Get the new place name from the search result
      const newPlaceName = e.result.place_name;
      // Update the HTML on the page with the new place name
      document.querySelector('#place_name').textContent = newPlaceName;
    });

    // AT: Idea 1 for capturing search result 11/05
    // geocoder.on('result', function(e) {
    //   document.getElementById('place_name').value = e.result.place_name
    //    console.log(e.result)

    // })

  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      new mapboxgl.Marker()
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map);
    })
  }
}
