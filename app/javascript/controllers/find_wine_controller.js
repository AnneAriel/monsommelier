import { Controller } from "@hotwired/stimulus";
let word = "";
// Connects to data-controller="find-wine"
export default class extends Controller {
  static targets = ["input", "form"]

    connect() {
      console.log("This is the find wine controller");
    };


  type(event) {
    event.preventDefault()
    const wineQuery = event.currentTarget.value

  fetch(`/wines/search?query=${wineQuery}`, {
    headers: { "Accept": "application/json" }
  })
  .then(response => response.text())
  .then(data => {
    console.log(data)
    console.log("azezez")
  })
};
}
