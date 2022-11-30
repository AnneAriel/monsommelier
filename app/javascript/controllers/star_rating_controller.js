import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"

export default class extends Controller {
  connect() {
    new StarRating(this.element)
    document.querySelectorAll('.gl-star-rating--stars span').forEach((star) => {
      console.log(star)
      star.addEventListener('click', ()=> {
        document.getElementById('new_comment').submit();
      })
    })
  }
}
