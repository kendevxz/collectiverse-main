import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["subcomments", "form"]
  static values = { position: String }

  connect() {
    // console.log("zxcvbnm");
    // console.log(this.subcommentsTarget);
    // console.log(this.formTarget.action);
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
      if (data.inserted_item) {
        this.subcommentsTarget.insertAdjacentHTML(this.positionValue, data.inserted_item)
      }
      this.formTarget.outerHTML = data.form
    })
  }
}
