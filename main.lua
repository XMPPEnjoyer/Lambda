_VERSION_ = "1";
scroll = 0;
command_text = "";
textoffset = 0;
local socket = require("socket");
local LambdaUI = require("utils/LambdaUI/main")
local logger_font = love.graphics.newFont("utils/font/Code New Roman.otf", 45);
love.graphics.setFont(logger_font);
love.keyboard.setTextInput(true)
local major, minor, revision, codename = love.getVersion()
function love.load()
  love.keyboard.setKeyRepeat(true);
end;
function love.textinput(t)
  command_text = command_text .. t;
end;
function love.update(dt)
LambdaUI.update(dt)
windata={
 mouse_x=love.mouse.getX(),
 mouse_y=love.mouse.getY(),
 window_width=love.graphics.getWidth(),
 window_height=love.graphics.getHeight(),
};
silly_billy_ui_height=45+windata.window_height/50
ui_round=15;
end;
function c(r,g,b)love.graphics.setColor(r,g,b);end;
function love.draw()
  c(0.12, 0.12, 0.12);
  love.graphics.rectangle("fill", 0, 0, windata.window_width, windata.window_height);
  c(0.10, 0.10, 0.10);
  love.graphics.rectangle("fill", 0, 0, windata.window_width, 45+windata.window_height/50,15,15,32676);
  c(1,1,1);
  love.graphics.print("| λ",windata.window_width-45*2,5);
  local Lambda_Tools = { 
   "Memory Editor",
   "Network Hack",
   "APK Editor",
   "Decompiler",
   "Macro Builder",
   "Actions",
  }
  local tools_tab=LambdaUI.Dropdown(5,5,150,35+windata.window_height/50,25,"Tools",Lambda_Tools,true,270,50)
  local scripts_tab=LambdaUI.Dropdown(165,5,190,35+windata.window_height/50,25,"Scripts",{"Load","Save","Editor"},true,200,50)
  local rce_tab=LambdaUI.Dropdown(165+190+10,5,120,35+windata.window_height/50,25,"RCE",{"SQUAX3","ASMCrash","Log4Shell","Bleeding Pipe"},true,240,50)




  if(windata.window_width<=700) then
      LambdaUI.Dropdown(windata.window_width-200,5,110,35+windata.window_height/50,25,"...",{},true,200,40)
  end;
end;
