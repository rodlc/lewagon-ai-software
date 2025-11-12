// lib/controllers/event_listener_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    // TODO: console.log something!
    console.log("Hello world!");
  }

  disable() {
    this.element.setAttribute("disabled", "");
    this.element.innerText = "Bingo!";
  }
}
