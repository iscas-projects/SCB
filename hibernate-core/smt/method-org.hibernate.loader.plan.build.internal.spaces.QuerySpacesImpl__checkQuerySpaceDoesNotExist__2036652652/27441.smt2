(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3770 0)
(declare-sort var1532 0)
(declare-sort var275 0)
(declare-sort var3052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun querySpaceByUid/86166741 (var3770) var275)
(declare-fun var275_containsKey/1715618542 (var275 var3052) Bool)
(declare-fun cast-from-String-to-var3052 (String) var3052)
(declare-const null-var3770 var3770)
(declare-const null-String String)
(declare-const var662 var3770) ; Statement: r0 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl 
(assert (not (= var662 null-var3770)))
(declare-const var357 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var357 null-String)))
(define-const var1645 var275 (querySpaceByUid/86166741 var662)) ; Statement: $r2 = r0.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: java.util.Map querySpaceByUid> 
(define-const var2369 Bool (var275_containsKey/1715618542 var1645 (cast-from-String-to-var3052 var357))) ; Statement: $z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto return 
(assert (= (ite var2369 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {querySpaceByUid/86166741=([org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl], java.util.Map), var275_containsKey/1715618542=([java.util.Map, java.lang.Object], boolean), cast-from-String-to-var3052=([java.lang.String], java.lang.Object)}
; {var3770=org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl, var662=r0, var357=r1, var1532=null_type, var275=java.util.Map, var1645=$r2, var3052=java.lang.Object, var2369=$z0}
; {org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl=var3770, r0=var662, r1=var357, null_type=var1532, java.util.Map=var275, $r2=var1645, java.lang.Object=var3052, $z0=var2369}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl;	r1 := @parameter0: java.lang.String;	$r2 = r0.<org.hibernate.loader.plan.build.internal.spaces.QuerySpacesImpl: java.util.Map querySpaceByUid>;	$z0 = interfaceinvoke $r2.<java.util.Map: boolean containsKey(java.lang.Object)>(r1);	if $z0 == 0 goto return;	return
;block_num 2