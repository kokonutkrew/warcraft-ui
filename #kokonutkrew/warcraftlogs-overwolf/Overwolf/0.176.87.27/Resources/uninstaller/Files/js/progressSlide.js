function ProgressSlide(parent) {

  let _currentStatus = 0;
  let PROGRESS_BAR;

  function start() {
    PROGRESS_BAR = document.querySelector('.progress-bar');

    console.log("Starting progress animation");

    let interval = setInterval(function () {
      if(_currentStatus > 100){
        clearInterval(interval);
        console.log("Progress done, showing next slide");
        parent.selectSlide("finish");
      }
      else {
        _currentStatus++;
        PROGRESS_BAR.value = _currentStatus;
      }
    }, 50);
  }
  
  return {
    start
  }
}