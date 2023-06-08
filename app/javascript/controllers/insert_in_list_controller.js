import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["items", "form"]
  static values = { position: String }

  send(event) {
    console.log("submit");
    event.preventDefault()

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      if (data.inserted_item) {
        this.itemsTarget.insertAdjacentHTML(this.positionValue, data.inserted_item)
      }
      this.formTarget.outerHTML = data.form

      // Trigger the update in Stimulus
      const commentCount = data.comment_count;
      const event = new CustomEvent("updateCount", { detail: { count: commentCount } })
      document.querySelector("[data-controller='comments']").dispatchEvent(event)
    })
  }
}
