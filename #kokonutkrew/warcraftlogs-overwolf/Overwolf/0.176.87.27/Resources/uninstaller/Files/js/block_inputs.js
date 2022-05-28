document.ondragstart = function () {
  return false;
};

document.onselectstart = function () {
  return false;
};

function noDragMove(event){
  event.stopPropagation();
}