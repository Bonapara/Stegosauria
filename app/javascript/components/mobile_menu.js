// Elements selection
const burgerMenuIcon = document.querySelector("#burger-menu");
const mobileMenu = document.querySelector(".mobile-menu");
const sectionTitle = document.querySelector(".section-title");
const closeButton = document.querySelector("#close-button");
const mainContainer = document.querySelector(".main-container");

// Function to display/delete the mobile menu
const displayBurgerMenu = () => {
  // Displaying mobile menu
  mobileMenu.classList.toggle("show");
  // Replacing burger menu by close button
  burgerMenuIcon.classList.toggle("invisible");
  closeButton.classList.toggle("visible");
  // Removing margin top on the title section
  // sectionTitle.classList.toggle("title-mobile");

};

// When a user clicks on the burger menu icon or close button, the burger menu is displaying
burgerMenuIcon.addEventListener('click', displayBurgerMenu);
closeButton.addEventListener('click', displayBurgerMenu);


