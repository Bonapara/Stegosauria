// Elements selection
const artworkThumbs = document.querySelectorAll(".artwork-img-thumb");
const artworkImage = document.querySelector(".artwork-photo-1");

// Function to display artwork image and artwork thumbs
const displayArtworkImage = (image) => {
  // Artwork image updating
  artworkImage.src = image.src;
  // Artwork thumbs updating
  artworkThumbs.forEach(function(image, index) {
    image.classList.remove("active-img");
  });
  image.classList.add("active-img");
};

// For each thumbs, we display ArtworkImage on click
artworkThumbs.forEach(function(image, index) {
  image.addEventListener('click', function() {
    displayArtworkImage(image);
  });
});


