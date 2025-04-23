// js/nav.js
document.addEventListener("DOMContentLoaded", () => {
  const toggle = document.querySelector(".nav-toggle");
  if (!toggle) return;
  toggle.addEventListener("click", () => {
    document.body.classList.toggle("nav-open");
  });
});
