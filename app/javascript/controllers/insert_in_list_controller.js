import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["items", "form", "count"]
  static values = { position: String }

  send(event) {
    event.preventDefault()

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
    .then(response => response.json())
    .then((data) => {
      if (data.inserted_item) {
        this.itemsTarget.insertAdjacentHTML(this.positionValue, data.inserted_item)
      }
      this.formTarget.outerHTML = data.form

      const currentCount = this.countTarget.innerText.split(" ")[0]
      let updatedCount = Number.parseInt(currentCount, 10)
      this.countTarget.innerText = `${updatedCount += 1} comments`
    })
  }
}
