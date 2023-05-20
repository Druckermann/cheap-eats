import { Application } from "@hotwired/stimulus"
import NavButtonController from "./nav_button_controller.js"


const application = Application.start()
application.register("nav-button", NavButtonController)
// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }
//
