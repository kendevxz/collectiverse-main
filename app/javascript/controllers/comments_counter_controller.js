import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="comments-counter"
export default class extends Controller {
  static targets = ["count"]

  updateCount(event) {
    const count = event.detail.count
    this.countTarget.innerText = count
  }
}
