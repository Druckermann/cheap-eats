import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    const currentPath = window.location.pathname;
    const buttonPath = this.element.getAttribute("href");
// console.log(currentPath)
console.log(this.element)
// console.log(buttonPath)
    // if (currentPath === buttonPath) {
    //   this.element.classList.add("selected");
    // }

    // AT: Working but could tidy up by having consistent name format below - would also need to change in _navbar.html.erb
const homePath = document.getElementById("home-button")
const dealsPath = document.getElementById("dealsDropdown")
const recipePath = document.getElementById("recipeDropdown")
const profilePath = document.getElementById("profile-button")
    homePath.addEventListener("click", () => {
      const navLinks = document.querySelectorAll(".nav-link");
      console.log(navLinks)
      navLinks.forEach(navLink => {
        navLink.classList.remove("selected");
      });
console.log(this)
      homePath.classList.add("selected");
    });
    dealsPath.addEventListener("click", () => {
      const navLinks = document.querySelectorAll(".nav-link");
      console.log(navLinks)
      navLinks.forEach(navLink => {
        navLink.classList.remove("selected");
      });
console.log(this)
      dealsPath.classList.add("selected");
    });
    recipePath.addEventListener("click", () => {
      const navLinks = document.querySelectorAll(".nav-link");
      console.log(navLinks)
      navLinks.forEach(navLink => {
        navLink.classList.remove("selected");
      });
console.log(this)
      recipePath.classList.add("selected");
    });
    profilePath.addEventListener("click", () => {
      const navLinks = document.querySelectorAll(".nav-link");
      console.log(navLinks)
      navLinks.forEach(navLink => {
        navLink.classList.remove("selected");
      });
console.log(this)
      profilePath.classList.add("selected");
    });
  }
}
