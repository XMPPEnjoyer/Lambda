_VERSION_ = "0.0.1";
scroll=0;command_text="";textoffset=0;
local socket = require("socket");
local interface = require("utils/Interface/interface");
local command_manager = require("utils/manager")
local logger_font = love.graphics.newFont("utils/font/font.ttf", 30);
love.graphics.setFont(logger_font);
local major, minor, revision, codename = love.getVersion()
local log_list={"Welcome to Lambda B-".._VERSION_,
  "Running on "..string.format("Love.%d.%d.%d", major, minor, revision);};local command_history_counter=0;local command_history={"","","","","","","","","","","","","",""};function lambda_log(str)table.insert(log_list, str);end;
function send_cmd(cmd)command_manager.command(cmd)lambda_log(cmd);table.insert(command_history,1, cmd)command_history_counter=0;command_text="";textoffset=textoffset+25-scroll;if(#log_list>8)then scroll=scroll+25;end;
end;

function love.load()love.keyboard.setKeyRepeat(true);end;
function love.textinput(t)command_text=command_text..t;end;
function love.keypressed(key)if(key=="tab")then if(command_history_counter<=10)then command_history_counter=(command_history_counter+1)%#command_history;command_text=command_history[command_history_counter]else command_history_counter=0;command_text="";end;end;if(key=="backspace")then command_text=command_text:sub(1, -2);end;if(key=="escape")then love.event.quit();end;if(key=="return")then send_cmd(command_text)end;end;function love.wheelmoved(x, y)if y > 0 then scroll=scroll-y-27;elseif y < 0 then scroll=scroll+y+27;end;end;function love.draw()love.graphics.setColor(0.3,0.1,0.2)love.graphics.rectangle("fill", 0, 0, love.graphics.getWidth(), love.graphics.getHeight());love.graphics.setColor(1,1,1);for log_counter,logged_text in pairs(log_list) do love.graphics.printf(">>> "..logged_text, 0, log_counter*25-scroll, 2000, 'left');end;love.graphics.printf("> "..command_text, 0, 25+#log_list*25-scroll, 1000, 'left');end;function love.textinput(t)command_text = command_text .. t;end;local pt=0;function love.update(dt)if(scroll < 0)then scroll=0;end;pt=pt+1;if(pt==10) then interface.start();lambda_log("Interface started at localhost:3621");end;
end;

 