import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const currentPath = window.location.pathname;
    const buttonPath = this.element.getAttribute("href");

    if (currentPath === buttonPath) {
      this.element.classList.add("selected");
    }

    this.element.addEventListener("click", () => {
      const navLinks = document.querySelectorAll(".nav-link");
      navLinks.forEach(navLink => {
        navLink.classList.remove("selected");
      });

      this.element.classList.add("selected");
    });
  }
}
//
