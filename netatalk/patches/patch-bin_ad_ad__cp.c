$NetBSD: patch-bin_ad_ad__cp.c,v 1.2 2015/06/08 17:38:56 fhajny Exp $

--- bin/ad/ad_cp.c.orig	2013-10-28 15:46:51.000000000 +0000
+++ bin/ad/ad_cp.c
@@ -821,7 +821,7 @@ static int setfile(const struct stat *fs
     islink = !fdval && S_ISLNK(fs->st_mode);
     mode = fs->st_mode & (S_ISUID | S_ISGID | S_ISVTX | S_IRWXU | S_IRWXG | S_IRWXO);
 
-#if defined(__FreeBSD__)
+#if defined(__FreeBSD__) || defined(__NetBSD__)
     TIMESPEC_TO_TIMEVAL(&tv[0], &fs->st_atimespec);
     TIMESPEC_TO_TIMEVAL(&tv[1], &fs->st_mtimespec);
 #else
