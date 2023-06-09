import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="displayevent"
export default class extends Controller {
  static targets = ["display"];
  connect() {
    // console.log("Hello World!")
  }

  display(event) {
  
    const card = document.querySelector(
      `#card_${parseInt(event.currentTarget.id)}`
    );

    card.classList.remove("d-none");
  }
}
