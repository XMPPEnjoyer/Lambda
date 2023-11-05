window.onload = addListeners;
function addListeners(){
    document.getElementById("memeditorui").addEventListener('mousedown', doodoocaca, false);window.addEventListener('mouseup', cacadoodoo, false);};
function cacadoodoo(){window.removeEventListener('mousemove', divMove, true);};
function doodoocaca(e){window.addEventListener('mousemove', divMove, true);};
function divMove(e){
    var div = document.getElementById("memeditorui");
  div.style.position = 'absolute';
  div.style.top = e.clientY + 'px';
  div.style.left = e.clientX + 'px';
}