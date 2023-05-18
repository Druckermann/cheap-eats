import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

export default class extends Controller {

  connect() {
    const mapbox_api_key = process.env.MAPBOX_API_KEY;
    console.log("Connect method made");
    mapboxgl.accessToken = mapbox_api_key;

    const geocoder = new MapboxGeocoder({
      accessToken: mapboxgl.accessToken,
      mapboxgl: mapboxgl,
      placeholder: 'Enter your location',
      marker: false,
      countries: 'au',
      autocomplete: true
    })

    geocoder.on('result', (e) => {
      const placeName = e.result.place_name
      console.log(placeName)

      // You can perform additional actions with the new location here, such as making an API call or updating the UI.
    })

    geocoder.addTo('#user_location')
  }
}
