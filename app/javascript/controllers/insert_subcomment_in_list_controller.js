import { Controller } from "@hotwired/stimulus"
  // connect() {
  //   console.log(this.element)
  //   console.log(this.itemsTarget)
  //   console.log(this.formTarget)
  // }

export default class extends Controller {
  static targets = ["items-subcomment", "form-subcomment"]
  static values = { position: String }

  connect() {
    console.log(this.itemsTarget);
    console.log(this.formTarget.action);
  }

  send(event) {
    event.preventDefault()
    console.log("submit");

    fetch(this.formTarget.action, {
      method: "POST",
      headers: { "Accept": "application/json" },
      body: new FormData(this.formTarget)
    })
    .then(response => response.json())
    .then((data) => {
      console.log(data);
      if (data.inserted_subcomment_item) {
        this.itemsTarget.insertAdjacentHTML(this.positionValue, data.inserted_subcomment_item)
      }
      this.formTarget.outerHTML = data.form
    })
  }
}
