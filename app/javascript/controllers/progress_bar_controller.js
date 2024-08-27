import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["circlePercent", "roundPer"];
  static values = {
    pourcentage: Number
  }

  connect() {
    const dataV = this.pourcentageValue;
    const dataDeg = dataV * 3.6;
    const roundPer = this.roundPerTarget;

    roundPer.style.transform = `rotate(${parseInt(dataDeg + 180)}deg)`;

    const circleInbox = document.createElement("div");
    circleInbox.className = "circle_inbox";
    const percentText = document.createElement("span");
    percentText.className = "percent_text";
    circleInbox.appendChild(percentText);
    this.circlePercentTarget.appendChild(circleInbox);

    this.animateCounter(this.circlePercentTarget, percentText, dataV);

    if (dataV >= 51) {
      roundPer.style.transform = "rotate(360deg)";
      setTimeout(() => {
        this.circlePercentTarget.classList.add("percent_more");
      }, 1000);
      setTimeout(() => {
        roundPer.style.transform = `rotate(${parseInt(dataDeg + 180)}deg)`;
      }, 1000);
    }
  }

  animateCounter(element, textElement, value) {
    let counter = { value: 0 };
    const duration = 2000;
    const easing = function(t) {
      return t < 0.5 ? 2 * t * t : -1 + (4 - 2 * t) * t;
    };

    const startAnimation = (startTime) => {
      const animateStep = (timestamp) => {
        if (!startTime) startTime = timestamp;
        const progress = timestamp - startTime;
        const easingProgress = easing(progress / duration);
        counter.value = easingProgress * value;
        textElement.textContent = `${Math.ceil(counter.value)}%`;

        if (progress < duration) {
          requestAnimationFrame(animateStep);
        }
      };

      requestAnimationFrame(animateStep);
    };

    startAnimation();
  }
}
