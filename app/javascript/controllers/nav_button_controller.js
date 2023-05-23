import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "home", "deals", "recipe", "profile" ]

  connect() {
    const pathname = window.location.pathname
    const url = pathname.split("/")
    const controller = url[1]

    if (pathname == "/") {
      this.homeTarget.classList.add("selected")
    }

    if (controller == "deals") {
      this.dealsTarget.classList.add("selected")
    }

    if (controller == "recipes" || controller == "favorites") {
      this.recipeTarget.classList.add("selected")
    }
  }

  navLinks = document.querySelectorAll(".nav-link");

  select(event) {
    this.navLinks.forEach(navLink => {
      navLink.classList.remove("selected");
    });

    event.currentTarget.classList.add("selected")
  }
}
