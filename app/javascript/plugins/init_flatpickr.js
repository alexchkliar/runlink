import flatpickr from "flatpickr";

const initFlatpickr = function() {
  const dateField = document.getElementById("run_date");

  if (dateField) {
    const fp = flatpickr('#run_date', {
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      minDate: "today"
    });
  }
};

export { initFlatpickr };
