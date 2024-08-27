import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="submit-form-checkbox"
export default class extends Controller {

  submit() {
    this.element.requestSubmit()
  }

  connect() {
  }
}

// const form = this.element;
// const formData = new FormData(form);
// console.log(formData)

// const params = new URLSearchParams(formData);
// const newUrl = `${form.action}`;

// fetch(`${form.action}`, {
//   method: "PATCH",
//   // Set the FormData instance as the request body
//   body: formData,
// });

// Turbo.visit(newUrl, { frame: "steps" });
