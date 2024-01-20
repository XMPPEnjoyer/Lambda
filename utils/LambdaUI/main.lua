local LambdaUI={};
function LambdaUI.update(dt)
 mouse_x=love.mouse.getX()
 mouse_y=love.mouse.getY()
 window_width=love.graphics.getWidth()
 window_height=love.graphics.getHeight()
end;
function hover(x,y,w,h) 
  if(mouse_x>=x and mouse_x<=x+w and mouse_y>=y and mouse_y<=y+h)then return true;end;
end;
function LambdaUI.Button(x,y,w,h,r,text)
  
  love.graphics.setColor(0.21,0.21,0.21)
  if hover(x,y,w,h) then
   love.graphics.setColor(0.18,0.18,0.18)
  end;
  love.graphics.rectangle("fill",x,y,w,h,r,r,32676)
  love.graphics.setColor(1,1,1)
  love.graphics.print(text,x+w/10,y+h/4,0,0.7,0.7)
  function love.mousepressed(mx, my, button)
   if button == 1 then
      if(hover(x,y,w,h))then return true;end;
   end
end
end;
function LambdaUI.Dropdown(x,y,w,h,r,text,buttons,s,option_width,option_height)
local opened=false
local updown=""
local offset=0
if(s==true)then love.graphics.setColor(0,0,0,0.09);love.graphics.rectangle("fill",x+6,y+6,w,h,r,r,32676);
  love.graphics.setColor(0.21,0.21,0.21)
  if hover(x,y,w,h+10+offset) then
  love.graphics.setColor(0.18,0.18,0.18);opened=true;updown="▲"
  else opened=false;updown="▼";end;
  love.graphics.rectangle("fill",x,y,w,h,r,r,32676)
  love.graphics.setColor(1,1,1)
  love.graphics.print(text.." "..updown,x+w/10,y+h/4,0,0.7,0.7)
  for i,cbt in ipairs(buttons) do
    offset=i*55;
    if (opened==true) then
      if hover(x,y,option_width,option_height+offset) then
        opened=true;updown="▲"
      end
        love.graphics.setColor(0.21,0.21,0.21)
        love.graphics.rectangle("fill",x,y+offset,option_width,option_height,r,r,32676)
        love.graphics.setColor(1,1,1)
        love.graphics.print(cbt,x+w/10,y+offset+option_height/4,0,0.7,0.7)
        
    end;
  end;
end;
function LambdaUI.Checkbox()
   
end;
function LambdaUI.Slider()
end;
function LambdaUI.Text_Box()
end;
function LambdaUI.Window()
end; 



return LambdaUI;
