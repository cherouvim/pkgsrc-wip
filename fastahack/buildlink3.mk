# $NetBSD$

BUILDLINK_TREE+=	fastahack

.if !defined(FASTAHACK_BUILDLINK3_MK)
FASTAHACK_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.fastahack+=	fastahack>=18ed4b86ef962fa1b40f89b78625b2f271d9b155
BUILDLINK_PKGSRCDIR.fastahack?=		../../wip/fastahack
.endif	# FASTAHACK_BUILDLINK3_MK

BUILDLINK_TREE+=	-fastahack
