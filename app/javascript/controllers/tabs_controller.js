import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tabs"
export default class extends Controller {
  static targets = ["link"]

  changeTab(event) {
    event.preventDefault();

    // Retire la classe 'active' de tous les liens
    this.linkTargets.forEach((link) => {
      link.classList.remove("active");
    });

    // Ajoute la classe 'active' au lien cliqué
    event.currentTarget.classList.add("active");
  }
}
