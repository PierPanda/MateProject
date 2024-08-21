import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submit-form-checkbox"
export default class extends Controller {

  submit() {
    this.element.requestSubmit()
  }

  connect() {
    console.log("coucou");
  }
}
