import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tab"
export default class extends Controller {
  static target = ['tab']

 switch(event){
  event.currentTarget.classList.add('active')
 }
}
