$NetBSD: patch-mathmlsvg_main.cc,v 1.1 2014/12/26 21:16:29 nros Exp $
* str* functions need string.h
--- mathmlsvg/main.cc.orig	2007-08-17 10:02:46.000000000 +0000
+++ mathmlsvg/main.cc
@@ -21,6 +21,8 @@
 #include <cassert>
 #include <fstream>
 
+#include <string.h>
+
 #include <popt.h>
 
 // needed for old versions of GCC, must come before String.hh!
