// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "chartkick/chart.js"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"

const whynot = () => {
    const markers = document.querySelectorAll(".marker");
    markers.forEach ( mark => {
        if (mark.style['backgroundImage'] === ('url("http://localhost:3000/assets/garbage-fire-2-77f3cfcf1f8d50ffc6b7cb75918ee0d00b2a9ea52d8026d600fd84d71f7fe967.png")' || 'url("http://www.wastrack.fr/assets/garbage-fire-2-77f3cfcf1f8d50ffc6b7cb75918ee0d00b2a9ea52d8026d600fd84d71f7fe967.png")')) {
            console.log(mark);
            mark.classList.add("fire");
        }
    });
}

document.addEventListener("turbolinks:load", () => {
    setTimeout(whynot, 1000);
})
