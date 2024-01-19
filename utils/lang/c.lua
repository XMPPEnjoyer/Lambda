local ffi = require("ffi");local c = {};
function c:new_struct(name, struct)ffi.cdef(struct);self.structs = self.structs or {};self.structs[name] = ffi.typeof(name);self.pointers = self.pointers or {};self.pointers[name] = ffi.typeof(name.."*");end;
function c:set_struct(name, data)return ffi.new(self.structs[name], data);end;
function c:encode(data)return ffi.string(ffi.cast("const char*", data), ffi.sizeof(data));end;
function c:decode(name, data)return ffi.cast(self.pointers[name], data)[0];end;return c;