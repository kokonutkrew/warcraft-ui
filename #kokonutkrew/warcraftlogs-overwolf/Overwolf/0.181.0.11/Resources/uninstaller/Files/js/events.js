window.document.addEventListener("DOMContentLoaded", function() {

  var header = document.getElementById("app-header");
  header.ondragstart = Commands.startDragging;
  header.onselectstart = Commands.startDragging;
});
