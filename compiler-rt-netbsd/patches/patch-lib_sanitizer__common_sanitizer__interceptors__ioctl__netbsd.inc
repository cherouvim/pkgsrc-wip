$NetBSD$

--- lib/sanitizer_common/sanitizer_interceptors_ioctl_netbsd.inc.orig	2018-08-21 21:25:40.000000000 +0000
+++ lib/sanitizer_common/sanitizer_interceptors_ioctl_netbsd.inc
@@ -713,14 +713,14 @@ static void ioctl_table_fill() {
   _(SIOCGPPPSTATS, READWRITE, struct_ifpppstatsreq_sz);
   _(SIOCGPPPCSTATS, READWRITE, struct_ifpppcstatsreq_sz);
   /* Entries from file: net/npf.h */
-  _(IOC_NPF_VERSION, WRITE, sizeof(int));
-  _(IOC_NPF_SWITCH, READ, sizeof(int));
-  _(IOC_NPF_LOAD, READWRITE, struct_plistref_sz);
-  _(IOC_NPF_TABLE, READ, struct_npf_ioctl_table_sz);
-  _(IOC_NPF_STATS, READ, sizeof(uptr));
-  _(IOC_NPF_SAVE, WRITE, struct_plistref_sz);
-  _(IOC_NPF_RULE, READWRITE, struct_plistref_sz);
-  _(IOC_NPF_CONN_LOOKUP, READWRITE, struct_plistref_sz);
+//  _(IOC_NPF_VERSION, WRITE, sizeof(int));
+//  _(IOC_NPF_SWITCH, READ, sizeof(int));
+//  _(IOC_NPF_LOAD, READWRITE, struct_plistref_sz);
+//  _(IOC_NPF_TABLE, READ, struct_npf_ioctl_table_sz);
+//  _(IOC_NPF_STATS, READ, sizeof(uptr));
+//  _(IOC_NPF_SAVE, WRITE, struct_plistref_sz);
+//  _(IOC_NPF_RULE, READWRITE, struct_plistref_sz);
+//  _(IOC_NPF_CONN_LOOKUP, READWRITE, struct_plistref_sz);
   /* Entries from file: net/if_pppoe.h */
   _(PPPOESETPARMS, READ, struct_pppoediscparms_sz);
   _(PPPOEGETPARMS, READWRITE, struct_pppoediscparms_sz);
@@ -1095,7 +1095,6 @@ static void ioctl_table_fill() {
   /* Entries from file: sys/power.h */
   _(POWER_EVENT_RECVDICT, READWRITE, struct_plistref_sz);
   _(POWER_IOC_GET_TYPE, WRITE, struct_power_type_sz);
-  _(POWER_IOC_GET_TYPE_WITH_LOSSAGE, WRITE, sizeof(uptr));
   /* Entries from file: sys/radioio.h */
   _(RIOCGINFO, WRITE, struct_radio_info_sz);
   _(RIOCSINFO, READWRITE, struct_radio_info_sz);
