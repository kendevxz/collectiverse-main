import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="calendar"
export default class extends Controller {
  static targets = ["toysbox"]

  connect() {
    console.log(this.element)
  }

  showToys(event) {
    const fullDate = event.currentTarget.dataset.fullDate
    const url = `/profile?date=${fullDate}`
    fetch(url, {headers: {"Accept": "text/plain"}})
      .then(response => response.text())
      .then((data) => {
        this.toysboxTarget.innerHTML = data
      })
  }
}
