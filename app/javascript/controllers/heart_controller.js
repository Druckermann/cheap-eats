import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="heart"

export default class extends Controller {
  static targets = ["heart"]
  connect() {
    console.log("test")
  }

  updateHeart(event) {
    event.preventDefault()
    //console.log(event)
     if (event.target.classList.contains("fa-solid"))
     {
      console.log(event.target.classList)
      event.target.classList.remove("fa-solid")
      event.target.classList.add("fa-regular")

     } else {
      console.log(event.target.classList)
      event.target.classList.remove("fa-regular")
      event.target.classList.add("fa-solid")

     }
  }
}
