import { Application } from "@hotwired/stimulus"
// AT: Added 18/05 for geocoder/mapbox
import MapController from "./map_controller"


const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application
// AT: Added 18/05 for geocoder/mapbox
application.register("map", MapController)


export { application }
