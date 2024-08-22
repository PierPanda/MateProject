import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submit-form-checkbox"
export default class extends Controller {

  submit() {
    console.log(this.element);
    this.element.requestSubmit()

  }

  connect() {
  }
}
