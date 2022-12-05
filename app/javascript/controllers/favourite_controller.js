import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourite"
export default class extends Controller {
  static targets=["bookmark"]
  static values = {
    class: String
  }
  connect() {
    //console.log("favourite");
    console.log(this.classValue == "match");
  }
  toggle(event) {
    console.log("toggle");
    this.bookmarkTarget.classList.toggle("fa-regular");
    this.bookmarkTarget.classList.toggle("fa-solid");
    let url ="";
    console.log(this.classValue);
    if (this.classValue == "wine")
      {url = `/wines/${event.currentTarget.id}/set_favorite`}
    else if (this.classValue == "dish")
      {url = `/dishes/${event.currentTarget.id}/set_favorite`}
    else if (this.classValue == "match")
      {url = `/matches/${event.currentTarget.id}/set_favorite`}

      fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      console.log(data);
    })
  }

}
