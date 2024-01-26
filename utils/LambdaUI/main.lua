local LambdaUI={};
function LambdaUI.update(dt)
 mx=love.mouse.getX()
 my=love.mouse.getY()
 window_width=love.graphics.getWidth()
 window_height=love.graphics.getHeight()
end;
function hover(x,y,w,h) 
  if(mx>=x and mx<=x+w and my>=y and my<=y+h)then return true;end;
end;
function LambdaUI.Button(x,y,w,h,r,text)
  love.graphics.setColor(0.18,0.18,0.18)
  if hover(x,y,w,h) then
   love.graphics.setColor(0.10,0.10,0.10)
  end;
  love.graphics.rectangle("fill",x,y,w,h,r,r,32676)
  love.graphics.setColor(1,1,1)
  love.graphics.print(text,x+w/10,y+h/4,0,0.7,0.7)

  
  if hover(x,y,w,h) then
    function love.mousepressed(mmx, mmy, button, istouch)
     if button == 1 then 
      return text;
     end;
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
