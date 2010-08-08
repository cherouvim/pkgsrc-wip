# $NetBSD: buildlink3.mk,v 1.1.1.1 2010/08/08 09:21:20 obache Exp $
#

BUILDLINK_TREE+=	libfakekey

.if !defined(LIBFAKEKEY_BUILDLINK3_MK)
LIBFAKEKEY_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libfakekey+=	libfakekey>=0.1
BUILDLINK_PKGSRCDIR.libfakekey?=	../../wip/libfakekey

.include "../../x11/libXtst/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"

.endif	# LIBFAKEKEY_BUILDLINK3_MK

BUILDLINK_TREE+=	-libfakekey
