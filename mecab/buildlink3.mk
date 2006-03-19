# $NetBSD: buildlink3.mk,v 1.1.1.1 2006/03/19 13:34:37 obache Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
MECAB_BUILDLINK3_MK:=	${MECAB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	mecab
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmecab}
BUILDLINK_PACKAGES+=	mecab

.if !empty(MECAB_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.mecab+=	mecab>=0.90rc10
BUILDLINK_PKGSRCDIR.mecab?=	../../wip/mecab
.endif	# MECAB_BUILDLINK3_MK

.include "../../wip/mecab-base/buildlink3.mk"

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
