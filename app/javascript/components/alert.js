const closeAlerts = () => {
  const closeButtons = document.querySelectorAll(".alert-timeout")

  if (closeButtons.length > 0) {
    closeButtons.forEach((button) => {
      setTimeout(() => {
        button.click();
      }, 3000);
    });
  }
}

export { closeAlerts }
