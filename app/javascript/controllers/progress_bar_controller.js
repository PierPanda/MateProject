import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["fill", "percentage"];
  static values = {
    pourcentage: Number
  }

  connect() {
    this.updateChart();
  }

  updateChart() {
    const percent = this.pourcentageValue;
    const deg = 360 * percent / 100;

    if (percent > 50) {
      this.element.classList.add('gt-50');
    }

    this.fillTarget.style.transform = `rotate(${deg}deg)`;
    this.percentageTarget.textContent = `${percent}%`;
  }
}
