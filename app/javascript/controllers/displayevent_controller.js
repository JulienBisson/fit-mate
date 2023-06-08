import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="displayevent"
export default class extends Controller {
  static targets =  ['display']
  connect() {
    // console.log("Hello World!")
  }

  display(event) {
    this.displayTargets.classList.add("d-none")
  }
}
