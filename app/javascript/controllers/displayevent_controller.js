import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="displayevent"
export default class extends Controller {
  static targets =  ['card']
  connect() {
    // console.log("Hello World!")
  }

  display(event) {
    console.log(event);
  }
}
