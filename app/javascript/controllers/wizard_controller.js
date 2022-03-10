import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  static targets = ['step']

  goToNext(event) {
    const nextStep = event.target.dataset.nextStep - 1;
    const actualStep = parseInt(event.target.dataset.nextStep, 10)

    console.log(nextStep, actualStep, this.stepTargets[actualStep])

    this.stepTargets[nextStep].classList.add("hidden");
    this.stepTargets[actualStep].classList.remove("hidden");
  }

  goToPrevious(event) {
    const previousStep = event.target.dataset.previousStep - 1;
    const actualStep = event.target.dataset.previousStep;

    this.stepTargets[actualStep].classList.add("hidden");
    this.stepTargets[previousStep].classList.remove("hidden");
  }
}
