$NetBSD$

--- cmake/config-ix.cmake.orig	2017-08-14 15:43:25.000000000 +0000
+++ cmake/config-ix.cmake
@@ -194,6 +194,7 @@ set(ALL_SANITIZER_COMMON_SUPPORTED_ARCH 
 set(ALL_ASAN_SUPPORTED_ARCH ${X86} ${X86_64} ${ARM32} ${ARM64}
     ${MIPS32} ${MIPS64} ${PPC64} ${S390X})
 set(ALL_DFSAN_SUPPORTED_ARCH ${X86_64} ${MIPS64} ${ARM64})
+set(ALL_FUZZER_SUPPORTED_ARCH x86_64)
 
 if(APPLE)
   set(ALL_LSAN_SUPPORTED_ARCH ${X86} ${X86_64} ${MIPS64} ${ARM64})
@@ -413,7 +414,11 @@ if(APPLE)
     SANITIZER_COMMON_SUPPORTED_ARCH)
   list_intersect(XRAY_SUPPORTED_ARCH
     ALL_XRAY_SUPPORTED_ARCH
-		SANITIZER_COMMON_SUPPORTED_ARCH)
+    SANITIZER_COMMON_SUPPORTED_ARCH)
+  list_intersect(FUZZER_SUPPORTED_ARCH
+    ALL_FUZZER_SUPPORTED_ARCH
+    ALL_SANITIZER_COMMON_SUPPORTED_ARCH)
+
 else()
   # Architectures supported by compiler-rt libraries.
   filter_available_targets(SANITIZER_COMMON_SUPPORTED_ARCH
@@ -425,6 +430,7 @@ else()
   filter_available_targets(UBSAN_COMMON_SUPPORTED_ARCH
     ${SANITIZER_COMMON_SUPPORTED_ARCH})
   filter_available_targets(ASAN_SUPPORTED_ARCH ${ALL_ASAN_SUPPORTED_ARCH})
+  filter_available_targets(FUZZER_SUPPORTED_ARCH ${ALL_FUZZER_SUPPORTED_ARCH})
   filter_available_targets(DFSAN_SUPPORTED_ARCH ${ALL_DFSAN_SUPPORTED_ARCH})
   filter_available_targets(LSAN_SUPPORTED_ARCH ${ALL_LSAN_SUPPORTED_ARCH})
   filter_available_targets(MSAN_SUPPORTED_ARCH ${ALL_MSAN_SUPPORTED_ARCH})
@@ -526,7 +532,7 @@ else()
 endif()
 
 if (COMPILER_RT_HAS_SANITIZER_COMMON AND TSAN_SUPPORTED_ARCH AND
-    OS_NAME MATCHES "Darwin|Linux|FreeBSD|Android")
+    OS_NAME MATCHES "Darwin|Linux|FreeBSD|Android|NetBSD")
   set(COMPILER_RT_HAS_TSAN TRUE)
 else()
   set(COMPILER_RT_HAS_TSAN FALSE)
@@ -573,3 +579,10 @@ if (COMPILER_RT_HAS_SANITIZER_COMMON AND
 else()
   set(COMPILER_RT_HAS_XRAY FALSE)
 endif()
+
+if (COMPILER_RT_HAS_SANITIZER_COMMON AND FUZZER_SUPPORTED_ARCH AND
+      OS_NAME MATCHES "Darwin|Linux|NetBSD")
+  set(COMPILER_RT_HAS_FUZZER TRUE)
+else()
+  set(COMPILER_RT_HAS_FUZZER FALSE)
+endif()
