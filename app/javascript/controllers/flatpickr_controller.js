import { Controller } from "@hotwired/stimulus";
import flatpickr from "flatpickr";

// Connects to data-controller="flatpickr"
export default class extends Controller {
  connect() {
    console.log(this.element)
    new flatpickr(this.element, {
      enableTime: true,
    });
  }
}
