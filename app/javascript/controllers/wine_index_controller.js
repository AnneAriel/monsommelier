import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourite"
export default class extends Controller {
  static targets=["checkbox", "sortedcard"]
  static values = {
    class: String
  }
  connect() {
    console.log(this.checkboxTarget);
    console.log(this.sortedcardTarget);

  }

  update(event) {
    event.currentTarget.classList.toggle("fa-square");
    event.currentTarget.classList.toggle("fa-square-check");
    let url ="";
    console.log(event.currentTarget.id);
    console.log(event.currentTarget.classList.value);
    if (event.currentTarget.id == "wine")
      {url = `/wines`;
      console.log("wine reussi")
      console.log(event.currentTarget.classList.contains('check'))}
      fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      console.log(data);
      this.sortedcardTarget.innerHTML = data;
    })

  }
}
