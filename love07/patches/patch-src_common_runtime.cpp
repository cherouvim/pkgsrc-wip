$NetBSD$

Match SDL1 include paths

--- src/common/runtime.cpp.orig	2011-05-04 16:00:09.000000000 +0000
+++ src/common/runtime.cpp
@@ -30,8 +30,8 @@
 #include <iostream>
 
 // SDL
-#include <SDL_mutex.h>
-#include <SDL_thread.h>
+#include <SDL/SDL_mutex.h>
+#include <SDL/SDL_thread.h>
 
 namespace love
 {
