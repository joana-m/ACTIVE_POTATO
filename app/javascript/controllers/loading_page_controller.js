import { Controller } from "stimulus";
import potato from "../images/logo.png";

export default class extends Controller {
  connect() {
    console.log("Hello");
  }

  load(e) {
    e.preventDefault();
    const template = `
    <div id="loading-screen">
      <img src="${potato}" />
      <div class="load-6">
        <div class="load-text">
          <div class="letter-holder">
            <div class="l-1 letter">P</div>
            <div class="l-2 letter">e</div>
            <div class="l-3 letter">e</div>
            <div class="l-4 letter">l</div>
            <div class="l-5 letter">i</div>
            <div class="l-6 letter">n</div>
            <div class="l-7 letter">g</div>
            <div class="l-8 letter">&nbsp;</div>
            <div class="l-9 letter">t</div>
            <div class="l-10 letter">h</div>
            <div class="l-11 letter">e</div>
            <div class="l-11 letter">&nbsp;</div>
            <div class="l-12 letter">p</div>
            <div class="l-13 letter">o</div>
            <div class="l-14 letter">t</div>
            <div class="l-15 letter">a</div>
            <div class="l-16 letter">t</div>
            <div class="l-17 letter">o</div>
            <div class="l-18 letter">.</div>
            <div class="l-19 letter">.</div>
            <div class="l-20 letter">.</div>
          </div>
        </div>
      </div>
    </div>
    `;
    document.body.insertAdjacentHTML("beforeend", template);
    setTimeout(() => {
      this.element.submit();
    }, 2500);
  }
}
