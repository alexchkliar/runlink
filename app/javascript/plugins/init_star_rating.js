import "jquery-bar-rating";
import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initStarRating = () => {
  $('#run_participant_trail_2').barrating({
    theme: 'css-stars'
  });
  $('#run_participant_difficulty').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };