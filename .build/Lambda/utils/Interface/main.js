window.onload = WinFunc;
function WinFunc(){
    document.getElementById("memory_editor").addEventListener('mousedown', WinDrag, false);
    window.addEventListener('mouseup', WinStopDrag, false);};
 function WinStopDrag(){
   window.removeEventListener('mousemove', WinMove, true);
 };function WinDrag(e){
   window.addEventListener('mousemove', WinMove, true);
 };function WinMove(e){
   var div = document.getElementById("memory_editor");
   div.style.position = 'absolute';
   div.style.top = e.clientY + 'px';
   div.style.left = e.clientX + 'px';
  };function RemWindow(id){
  var win = document.getElementById(id);
  win.remove();
};
