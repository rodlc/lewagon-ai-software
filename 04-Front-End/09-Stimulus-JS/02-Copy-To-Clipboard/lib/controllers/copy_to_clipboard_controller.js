// lib/controllers/copy_to_clipboard_controller.js
import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["field"]

  static values = {
    feedbackText: String
  }

  connect() {
    // TODO : console.log quelque chose !
    console.log("Hello world!");
  }

  copy(event) {
    navigator.clipboard
      .writeText(this.fieldTarget.value)
      .then(() => console.log("✅ Copied:", this.fieldTarget.value))
      .catch(err => console.error("❌ Clipboard error:", err));
    event.target.innerText = this.feedbackTextValue;
    event.target.setAttribute("disabled", "");
  }
}
