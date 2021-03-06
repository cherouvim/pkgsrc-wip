$NetBSD$

--- content/browser/memory/memory_monitor.cc.orig	2017-02-02 02:02:53.000000000 +0000
+++ content/browser/memory/memory_monitor.cc
@@ -8,6 +8,7 @@
 
 namespace content {
 
+#if !defined(OS_BSD)
 // static
 MemoryMonitorDelegate* MemoryMonitorDelegate::GetInstance() {
   return base::Singleton<
@@ -21,8 +22,9 @@ void MemoryMonitorDelegate::GetSystemMem
     base::SystemMemoryInfoKB* mem_info) {
   base::GetSystemMemoryInfo(mem_info);
 }
+#endif // !defined(OS_BSD)
 
-#if defined(OS_MACOSX)
+#if defined(OS_MACOSX) && !defined(OS_BSD)
 // TODO(bashi,bcwhite): Remove when memory monitor for mac is available.
 std::unique_ptr<MemoryMonitor> CreateMemoryMonitor() {
   NOTREACHED();
