import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourite"
export default class extends Controller {
  static targets=["bookmark"]
  connect() {
    console.log("favourite");
  }
  toggle(event) {
    console.log("toggle");
    this.bookmarkTarget.classList.toggle("fa-regular");
    this.bookmarkTarget.classList.toggle("fa-solid");
    const url = `/wines/${event.currentTarget.id}/set_favorite`
    fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      console.log(data);
    })
  }

}
