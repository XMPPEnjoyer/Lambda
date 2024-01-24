local FFI = require("ffi");
FFI.cdef[[
int printf(const char *fmt, ...);


]]
local C_LIB={
  C=FFI.C,
  OS=FFI.os,
  ARCH=FFI.arch,
};
C_LIB.C.printf("C_LIB INIT")


return C_LIB;