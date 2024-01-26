local FFI = require("ffi");
FFI.cdef[[
int printf(const char *fmt, ...);


]]
local C_LIB={
  C=FFI.C,
  OS=FFI.os,
  ARCH=FFI.arch,
};
function C_LIB:new_struct(name, struct)
  FFI.cdef(struct);
  self.structs = self.structs or {};
  self.structs[name] = FFI.typeof(name);
  self.pointers = self.pointers or {};
  self.pointers[name] = FFI.typeof(name.."*");
end;
function C_LIB:set_struct(name, data)
  return FFI.new(self.structs[name], data);
end;
function C_LIB:encode(data)
  return FFI.string(FFI.cast("const char*", data), FFI.sizeof(data));
end;
function C_LIB:decode(name, data)
  return FFI.cast(self.pointers[name], data)[0];
end;
C_LIB.C.printf("C_LIB INIT")


return C_LIB;