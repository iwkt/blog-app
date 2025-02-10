import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["dropdown", "button"];

  connect() {
    console.log("DropdownController is connected!");
    this.outsideClickListener = this.handleClickOutside.bind(this);
  }

  toggle(event) {
    event.stopPropagation();
    this.dropdownTarget.classList.toggle("active");

    // クリックイベントを追加して、外側のクリックを検知
    if (this.dropdownTarget.classList.contains("active")) {
      document.addEventListener("click", this.outsideClickListener);
    } else {
      document.removeEventListener("click", this.outsideClickListener);
    }
  }

  handleClickOutside(event) {
    if (!this.dropdownTarget.contains(event.target)) {
      this.dropdownTarget.classList.remove("active");
      document.removeEventListener("click", this.outsideClickListener);
    }
  }
}
