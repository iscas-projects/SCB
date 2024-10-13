(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1708 0)
(declare-sort var1411 0)
(declare-sort var651 0)
(declare-sort var1802 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jaxbEntityMapping/-1832848588 (var1708) var1411)
(declare-fun getId/-1829534322 (var1411) var651)
(declare-fun var1802-init () var1802)
(declare-fun <init>/1874992395 (var1802 var1708) void)
(declare-const null-var1708 var1708)
(declare-const null-var651 var651)
(declare-const var961 var1708) ; Statement: r0 := @parameter0: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl 
(assert (not (= var961 null-var1708)))
(assert true)
(define-const var1294 var1411 (jaxbEntityMapping/-1832848588 var961)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>() 
(assert true)
(define-const var3755 var651 (getId/-1829534322 var1294)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType getId()>() 
 ; Statement: if $r2 != null goto $r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>() 
(assert (not (= var3755 null-var651))) ; Cond: $r2 != null 
(assert true)
(define-const var1466 var1411 (jaxbEntityMapping/-1832848588 var961)) ; Statement: $r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>() 
(assert true)
(define-const var2305 var651 (getId/-1829534322 var1466)) ; Statement: $r4 = virtualinvoke $r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType getId()>() 
 ; Statement: if $r4 == null goto $r5 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>() 
(assert (not (= var2305 null-var651))) ; Negate: Cond: $r4 == null  
(define-const var1333 var1802 var1802-init) ; Statement: $r32 = new org.hibernate.boot.model.source.internal.hbm.IdentifierSourceSimpleImpl 
(assert true)
;(assert (<init>/1874992395 var1333 var961)) ; Statement: specialinvoke $r32.<org.hibernate.boot.model.source.internal.hbm.IdentifierSourceSimpleImpl: void <init>(org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl)>(r0) 

(declare-const var1333!1 var1802)
(declare-const var961!1 var1708)
 ; Statement: return $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {jaxbEntityMapping/-1832848588=([org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType), getId/-1829534322=([org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType], org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType), var1802-init=([], org.hibernate.boot.model.source.internal.hbm.IdentifierSourceSimpleImpl), <init>/1874992395=([org.hibernate.boot.model.source.internal.hbm.IdentifierSourceSimpleImpl, org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl], void)}
; {var1708=org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl, var961=r0, var1411=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType, var1294=$r1, var651=org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType, var3755=$r2, var1466=$r3, var2305=$r4, var1802=org.hibernate.boot.model.source.internal.hbm.IdentifierSourceSimpleImpl, var1333=$r32}
; {org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl=var1708, r0=var961, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType=var1411, $r1=var1294, org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType=var651, $r2=var3755, $r3=var1466, $r4=var2305, org.hibernate.boot.model.source.internal.hbm.IdentifierSourceSimpleImpl=var1802, $r32=var1333}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl;	$r1 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>();	$r2 = virtualinvoke $r1.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType getId()>();	if $r2 != null goto $r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>();	$r3 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>();	$r4 = virtualinvoke $r3.<org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmSimpleIdType getId()>();	if $r4 == null goto $r5 = virtualinvoke r0.<org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl: org.hibernate.boot.jaxb.hbm.spi.JaxbHbmRootEntityType jaxbEntityMapping()>();	$r32 = new org.hibernate.boot.model.source.internal.hbm.IdentifierSourceSimpleImpl;	specialinvoke $r32.<org.hibernate.boot.model.source.internal.hbm.IdentifierSourceSimpleImpl: void <init>(org.hibernate.boot.model.source.internal.hbm.RootEntitySourceImpl)>(r0);	return $r32
;block_num 3