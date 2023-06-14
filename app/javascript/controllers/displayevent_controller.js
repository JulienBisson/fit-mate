import { Controller } from "@hotwired/stimulus";

let touchstartX = 0;
let touchendX = 0;

function checkDirection(idElementDisplayed, firstId, lastId) {
  idElementDisplayed = parseInt(idElementDisplayed);
  firstId = parseInt(firstId);
  lastId = parseInt(lastId);

  if (null !== idElementDisplayed && firstId !== -1 && lastId !== -1) {
    const hiddenCard = document.getElementById(
      `card_${parseInt(idElementDisplayed)}`
    );

    hiddenCard.classList.add("d-none");

    if (touchendX < touchstartX) {
      const newId =
        idElementDisplayed + 1 > lastId ? firstId : idElementDisplayed + 1;

      const displayedCard = document.getElementById(`card_${newId}`);

      displayedCard.classList.remove("d-none");

      return newId;
    }

    if (touchendX > touchstartX) {
      const newId =
        idElementDisplayed - 1 < firstId ? lastId : idElementDisplayed - 1;

      const displayedCard = document.getElementById(`card_${newId}`);

      displayedCard.classList.remove("d-none");

      return newId;
    }

    if (touchendX === touchstartX) {
      window.location.href = `/events/${idElementDisplayed}`;
    }
  }
}

// Connects to data-controller="displayevent"
export default class extends Controller {
  static targets = ["display"];
  static firstId = -1;
  static lastId = -1;
  static idElementDisplayed = null;

  connect() {
    document
      .getElementById("card-container")
      .addEventListener("touchstart", (e) => {
        touchstartX = e.changedTouches[0].screenX;
      });

    document
      .getElementById("card-container")
      .addEventListener("touchend", (e) => {
        touchendX = e.changedTouches[0].screenX;
        this.idElementDisplayed = checkDirection(
          this.idElementDisplayed,
          this.firstId,
          this.lastId
        );
      });
  }

  display(event) {
    this.idElementDisplayed = event.currentTarget.id;
    this.firstId = this.displayTargets[0].id.split("card_")[1];
    this.lastId =
      this.displayTargets[this.displayTargets.length - 1].id.split("card_")[1];

    this.displayTargets.forEach((element) => element.classList.add("d-none"));

    const card = document.querySelector(
      `#card_${parseInt(event.currentTarget.id)}`
    );

    card.classList.remove("d-none");

    // Ajouter une classe aux images add_event et localisation-button
    const addEventImage = document.querySelector(".add_event");
    const localisationButtonImage = document.querySelector(
      ".localisation-button"
    );
    addEventImage.classList.add("move-up");
    localisationButtonImage.classList.add("move-up");
  }

  submitForm(event) {
    // Submit the form when the user selects a sport
    event.target.form.submit();
  }
}
