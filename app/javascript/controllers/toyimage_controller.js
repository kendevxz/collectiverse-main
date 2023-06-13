import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toyimage"
export default class extends Controller {
  static targets = ["image"]
  connect() {
    console.log(this.imageTarget)
  }

  enlargeImage() {
    this.imageTarget.classList.toggle("big-image")
  }
}
