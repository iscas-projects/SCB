(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3151 0)
(declare-sort var1808 0)
(declare-sort var3732 0)
(declare-sort var674 0)
(declare-sort var3409 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun naturalIdUniqueKeyBinderMap/1317447214 (var3151) var674)
(declare-fun var674_put/1464166817 (var674 var3409 var3409) var3409)
(declare-fun cast-from-String-to-var3409 (String) var3409)
(declare-fun cast-from-var3732-to-var3409 (var3732) var3409)
(declare-fun cast-from-var3409-to-var3732 (var3409) var3732)
(declare-const null-var3151 var3151)
(declare-const null-String String)
(declare-const null-var3732 var3732)
(declare-const null-var674 var674)
(declare-const var3717 var3151) ; Statement: r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl 
(assert (not (= var3717 null-var3151)))
(declare-const var2322 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2322 null-String)))
(declare-const var3053 var3732) ; Statement: r3 := @parameter1: org.hibernate.boot.spi.NaturalIdUniqueKeyBinder 
(assert (not (= var3053 null-var3732)))
(define-const var3137 var674 (naturalIdUniqueKeyBinderMap/1317447214 var3717)) ; Statement: $r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap> 
 ; Statement: if $r1 != null goto $r4 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap> 
(assert (not (= var3137 null-var674))) ; Cond: $r1 != null 
(define-const var557 var674 (naturalIdUniqueKeyBinderMap/1317447214 var3717)) ; Statement: $r4 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap> 
(define-const var3254 var3409 (var674_put/1464166817 var557 (cast-from-String-to-var3409 var2322) (cast-from-var3732-to-var3409 var3053))) ; Statement: $r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r2, r3) 
(define-const var1068 var3732 (cast-from-var3409-to-var3732 var3254)) ; Statement: $r12 = (org.hibernate.boot.spi.NaturalIdUniqueKeyBinder) $r5 
 ; Statement: if $r12 == null goto return 
(assert (= var1068 null-var3732)) ; Cond: $r12 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {naturalIdUniqueKeyBinderMap/1317447214=([org.hibernate.boot.internal.InFlightMetadataCollectorImpl], java.util.Map), var674_put/1464166817=([java.util.Map, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3409=([java.lang.String], java.lang.Object), cast-from-var3732-to-var3409=([org.hibernate.boot.spi.NaturalIdUniqueKeyBinder], java.lang.Object), cast-from-var3409-to-var3732=([java.lang.Object], org.hibernate.boot.spi.NaturalIdUniqueKeyBinder)}
; {var3151=org.hibernate.boot.internal.InFlightMetadataCollectorImpl, var3717=r0, var2322=r2, var1808=null_type, var3732=org.hibernate.boot.spi.NaturalIdUniqueKeyBinder, var3053=r3, var674=java.util.Map, var3137=$r1, var557=$r4, var3409=java.lang.Object, var3254=$r5, var1068=$r12}
; {org.hibernate.boot.internal.InFlightMetadataCollectorImpl=var3151, r0=var3717, r2=var2322, null_type=var1808, org.hibernate.boot.spi.NaturalIdUniqueKeyBinder=var3732, r3=var3053, java.util.Map=var674, $r1=var3137, $r4=var557, java.lang.Object=var3409, $r5=var3254, $r12=var1068}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.boot.internal.InFlightMetadataCollectorImpl;	r2 := @parameter0: java.lang.String;	r3 := @parameter1: org.hibernate.boot.spi.NaturalIdUniqueKeyBinder;	$r1 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap>;	if $r1 != null goto $r4 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap>;	$r4 = r0.<org.hibernate.boot.internal.InFlightMetadataCollectorImpl: java.util.Map naturalIdUniqueKeyBinderMap>;	$r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object put(java.lang.Object,java.lang.Object)>(r2, r3);	$r12 = (org.hibernate.boot.spi.NaturalIdUniqueKeyBinder) $r5;	if $r12 == null goto return;	return
;block_num 3