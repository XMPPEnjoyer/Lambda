i={}
interface_code="";
function i.start()
  for line in love.filesystem.lines("/utils/Interface/index.html") do
  interface_code=interface_code.."\n"..line;
end;
local interface_thread_code=[===[
local socket = require("socket")
local io = require("io")
function run(code,port)
server = assert(socket.bind("*", port))
local html = code;local client = server:accept();local request = client:receive();
while(true) do
  client:send("HTTP/1.1 200 OK\r\n");
  client:send("Content-Type: text/html\r\n");
  client:send("Content-Length: " .. #html .. "\r\n");
  client:send("\r\n");
  client:send(html);
  client:close();
end;end;
run([[]===]..interface_code..[====[]],3621)]====]
local interface_thread;interface_thread = love.thread.newThread(interface_thread_code);
interface_thread:start();
end;return i;
