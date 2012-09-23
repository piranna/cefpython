# Copyright (c) 2012 CefPython Authors. All rights reserved.
# License: New BSD License.
# Website: http://code.google.com/p/cefpython/

from cef_ptr cimport CefRefPtr
from cef_v8 cimport CefV8StackTrace

# Importing static methods only in this file. This is in a separate file as we do not want 
# these names to be imported into global namespace, you will be using them like this:
# > cimport cef_v8_stack
# > cef_v8_stack.GetCurrent()

cdef extern from "include/cef_v8.h" namespace "CefV8StackTrace":

	cdef CefRefPtr[CefV8StackTrace] GetCurrent(int frame_limit)