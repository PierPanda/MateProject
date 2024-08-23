import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter-category"
export default class extends Controller {

  filter() {
    this.element.children[0].submit()
  }

  connect() {

  }
}
