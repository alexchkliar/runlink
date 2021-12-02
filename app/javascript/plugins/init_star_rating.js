import "jquery-bar-rating";
import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initStarRating = () => {
  const numberOfStarRatings = document.querySelectorAll(".br-widget").length;
  if (numberOfStarRatings === 0){
    $('#trail-star-target').barrating({
      theme: 'css-stars'
    });
    $('#run_participant_difficulty').barrating({
      theme: 'css-stars'
    });
  }
};

export { initStarRating };
