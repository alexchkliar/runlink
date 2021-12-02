const dayConverter = (day) => {
  const utcSeconds = day
  const date = new Date(0)
  date.setUTCSeconds(utcSeconds)
  const dateString = date.toString()
  return dateString.substring(0, 3)
}

const fetchWeather = () => {
  const city = document.querySelector(".empty-location-div")?.id;
  // const city = "Montreal";
  if (!city) return;
  const apiKey = document.getElementById("weather-table").dataset.weatherApiKey;
  fetch(`https://api.openweathermap.org/data/2.5/forecast?q=${city}&appid=${apiKey}&units=metric`)
  .then(response => response.json())
  .then((weather) => {
    const lat = weather["city"]["coord"]["lat"];
    const lon = weather["city"]["coord"]["lon"];
    fetch(`https://api.openweathermap.org/data/2.5/onecall?lat=${lat}&lon=${lon}&exclude=hourly,minutely&appid=${apiKey}&units=metric`)
    .then(response => response.json())
    .then((forecast) => {
      let range = Array.from({length: 7}, (_, i) => i + 1)
      let forecasts = []
      let boxes = []
      range.forEach(index => {
        forecasts.push([
          dayConverter(forecast["daily"][index]["dt"]),
          (Math.round(forecast["daily"][index]["temp"]["day"], 0)+"°C"),
          forecast["daily"][index]["weather"][0]["icon"]
        ])
      });
      const table = document.getElementById("weather-table")
      table.innerHTML = ""
      for(let i=0; i < forecasts.length; i++){
        const element1 = document.createElement("td");
        const element2 = document.createElement("th");
        const element3 = document.createElement("tr");
        element3.classList.add("first-main-row");
        const element4 = document.createElement("tr");
        element4.classList.add("second-main-row");
        const element5 = document.createElement("img");
        element5.src = `http://openweathermap.org/img/wn/${forecasts[i][2]}@2x.png`;
        element5.classList.add("weather-img");

        element2.innerHTML = forecasts[i][0];
        element3.innerHTML = forecasts[i][1];

        element4.appendChild(element5);
        element1.appendChild(element2);
        element1.appendChild(element3);
        element1.appendChild(element4);
        table.appendChild(element1);
      }
    });
  });
};

export { fetchWeather };
