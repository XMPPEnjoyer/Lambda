               ---[Lambda]---
---[This shit made me fucking depressed]---
_VERSION_ = "1";
local LambdaUI = require("utils/LambdaUI/main");
local C_LIB=require("utils/lang/c");
local font = love.graphics.newFont("utils/font/Code New Roman.otf", 45);
love.graphics.setFont(font);
local major, minor, revision, codename = love.getVersion();
function love.load()
  love.keyboard.setKeyRepeat(true);
  love.keyboard.setTextInput(true);
end;
tabscroll=0;
function love.update(dt)
 LambdaUI.update(dt)
 mx=love.mouse.getX()
 my=love.mouse.getY()
 window_width=love.graphics.getWidth()
 window_height=love.graphics.getHeight()

if (tabscroll < 0) then
    tabscroll = 0
end
end;
function love.draw()
  GUI();
end;


function c(r,g,b)love.graphics.setColor(r,g,b);end;
function hover(x,y,w,h)if(mx>=x and mx<=x+w and my>=y and my<=y+h)then return true;end;end;
function GUI()
  Tabs={"Mem Editor","Net Hack","Uni Decomp","RCE Shit","Scripts","Misc","Themes","Settings",};
  c(0.12, 0.12, 0.12);
  love.graphics.rectangle("fill", 0, 0, window_width, window_height);
  c(0.08, 0.08, 0.08);
  love.graphics.rectangle("fill", 0, 0, window_width/3.5, window_height,15,15,32676);
  c(0.13,0.13,0.13);
  love.graphics.rectangle("fill", math.abs(5.5,window_width/5), 60+tabscroll,10,600-#Tabs*50,10,10,32676);
function love.wheelmoved(x, y)
  if hover(0,45+window_height/50,window_width/3.5,window_height) then
    if y > 0 then
        tabscroll = tabscroll - y - 27
    elseif y < 0 then
        tabscroll = tabscroll + y + 27
    end;
  end;
end;
  for i,x in ipairs(Tabs) do
  if LambdaUI.Button(math.abs(32.5,window_width/5),i*65-tabscroll,window_width/5+25,55,15,x) then
  love.quit()
  end;
  end;
    c(0.10, 0.10, 0.10);
  love.graphics.rectangle("fill", 0, 0, window_width, 45+window_height/50,15,15,32676);
  c(1,1,1);love.graphics.print("| λ",window_width-45*2,5);
end;
