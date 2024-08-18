function clickElement(element) {
  const event = new MouseEvent('click', {
    view: window,
    bubbles: true,
    cancelable: true,
  });
  element.dispatchEvent(event);
}

window.addEventListener('beforeunload', function (event) {
  event.preventDefault();
  event.returnValue = '';
});

let counter = 0;
let clicked = false;

const buttons = document.querySelectorAll('.sc-ae911049-0');


buttons.forEach((button, index) => {
  if (index >= 1) {
    console.log(`Button ${index + 1}:`, button);

    clickElement(button);
    counter++;
    console.log(`The button has been clicked ${counter} time(s).`);

    if (!clicked) {
      clicked = true;
    } else {
      counter = 0;
      clicked = false;
    }
  }
});


setTimeout(() => {
  console.log("Delayed for 5 second.");
  const verify = document.querySelectorAll('.r-ah5dr5');

  let counter_2 = 0;
  let clicked_2 = false;

  verify.forEach((ver, index) => {
    if (index >= 1) {
      console.log(`Button ${index + 1}:`, ver);

      clickElement(ver);
      counter_2++;
      console.log(`The button has been clicked ${counter_2} time(s).`);

      if (!clicked_2) {
        clicked_2 = true;
      } else {
        counter_2 = 0;
        clicked_2 = false;
      }
    }
  });


  console.log('All buttons have been clicked.');
  alert('All tasks completed!');
}, 5000);
