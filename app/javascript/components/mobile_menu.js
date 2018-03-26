// Elements selection
const burgerMenuIcon = document.querySelector("#burger-btn");
const mobileMenu = document.querySelector(".mobile-menu-container");
const mobileMenuDarker = document.querySelector(".mobile-menu-darker");

// Function to display/delete the mobile menu
const displayBurgerMenu = () => {
  // Animating the burger menu icon
  burgerMenuIcon.classList.toggle("mobile-navigation");
  // Translating the mobile menu
  mobileMenu.classList.toggle("translation");
  // Adding opacity to the existing content
  mobileMenuDarker.classList.toggle("add-opacity");
};

// When a user clicks on the burger menu icon, the burger menu is displaying
burgerMenuIcon.addEventListener('click', displayBurgerMenu);


