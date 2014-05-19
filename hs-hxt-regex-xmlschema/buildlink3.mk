# $NetBSD: buildlink3.mk,v 1.4 2014/05/19 21:28:49 szptvlfn Exp $

BUILDLINK_TREE+=	hs-hxt-regex-xmlschema

.if !defined(HS_HXT_REGEX_XMLSCHEMA_BUILDLINK3_MK)
HS_HXT_REGEX_XMLSCHEMA_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-hxt-regex-xmlschema+=	hs-hxt-regex-xmlschema>=9.1.0
BUILDLINK_PKGSRCDIR.hs-hxt-regex-xmlschema?=	../../wip/hs-hxt-regex-xmlschema

.include "../../wip/hs-hxt-charproperties/buildlink3.mk"
.include "../../textproc/hs-parsec/buildlink3.mk"
.endif	# HS_HXT_REGEX_XMLSCHEMA_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-hxt-regex-xmlschema
