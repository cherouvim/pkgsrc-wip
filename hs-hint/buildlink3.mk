# $NetBSD: buildlink3.mk,v 1.9 2014/05/23 21:49:04 szptvlfn Exp $

BUILDLINK_TREE+=	hs-hint

.if !defined(HS_HINT_BUILDLINK3_MK)
HS_HINT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-hint+=	hs-hint>=0.4.0
BUILDLINK_PKGSRCDIR.hs-hint?=	../../wip/hs-hint

.include "../../wip/hs-exceptions/buildlink3.mk"
.include "../../devel/hs-extensible-exceptions/buildlink3.mk"
.include "../../wip/hs-ghc-mtl/buildlink3.mk"
.include "../../devel/hs-ghc-paths/buildlink3.mk"
.include "../../devel/hs-mtl/buildlink3.mk"
.include "../../devel/hs-random/buildlink3.mk"
.include "../../devel/hs-utf8-string/buildlink3.mk"
.endif	# HS_HINT_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-hint
