import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("tutu")
    console.log(document.querySelectorAll('.gl-star-rating--stars span'))
    document.querySelectorAll('.gl-star-rating--stars span').forEach((star) => {
      console.log(star)
      star.addEventListener('click', ()=> {
        this.element.submit();
      })
    })
  }
  submit() {
    console.log("yoyyoyo")
    this.element.submit();
  }
}
