import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favourite"
export default class extends Controller {
  static targets=["bookmark", "checkbox", "sortedcard"]
  static values = {
    class: String
  }
  connect() {
    //console.log(this.checkboxTarget);
    //console.log(this.sortedcardTarget);

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

  update(event) {
    console.log("toggle_show");
    event.currentTarget.classList.toggle("fa-square");
    event.currentTarget.classList.toggle("fa-square-check");
    let url ="";
    console.log(event.currentTarget.id);
    console.log(event.currentTarget.classList.value);
    if (event.currentTarget.id == "wine")
      {url = `/bookmarks?query=wine`;
      console.log("wine reussi")}
    else if (event.currentTarget.id == "match")
      {url = `/bookmarks?query=match`;
      console.log("match reussi")}
    else {url = `/bookmarks`;
    console.log("match reussi")
    console.log(event.currentTarget.classList.contains('check'))}
      fetch(url, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data) => {
      console.log(data);
      this.sortedcardTarget.innerHTML = data;
    })

  }
}
