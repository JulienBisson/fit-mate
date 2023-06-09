import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="flatpickr"
import flatpickr from "flatpickr";

export default class extends Controller {
  connect() {
    new flatpickr(this.element, {
      enableTime: true,
      dateFormat: "d-m-Y H:i",
      minDate: "2023-01",
      // more options available on the documentation!
    });
  }
}
