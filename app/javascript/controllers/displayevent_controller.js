import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="displayevent"
export default class extends Controller {
  static targets = ["display"];
  connect() {
    // console.log("Hello World!")
  }

  display(event) {
    console.log(event.currentTarget.id);
    this.displayTargets.forEach((element) => element.classList.add("d-none"));

    const card = document.querySelector(
      `#card_${parseInt(event.currentTarget.id)}`
    );

    card.classList.remove("d-none");
  }
}
