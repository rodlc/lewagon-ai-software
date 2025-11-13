/* eslint-disable import/extensions */
import { Application } from "@hotwired/stimulus";

// TODO: Import the Stimulus Controller here
import CopyToClipboardController from "./controllers/copy_to_clipboard_controller.js";

// TODO: Register your Stimulus Controller below
window.Stimulus = Application.start();
Stimulus.register("copy-to-clipboard", CopyToClipboardController);
