import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    // this.element.textContent = "Hello World!"
  }

  markAsComplete(event) {
    const input = this.element.querySelector("input");
    event.preventDefault()
    console.log(input);
    input.toggleAttribute("checked");
    fetch("localhost:3000/")
    // this.element.querySelector("input").toggleAttribute(checked);
  }
}
