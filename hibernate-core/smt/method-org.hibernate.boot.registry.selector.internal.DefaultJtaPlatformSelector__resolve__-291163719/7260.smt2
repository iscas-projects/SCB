(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var240 0)
(declare-sort var1388 0)
(declare-sort var3046 0)
(declare-sort var1104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3046_requireNonNull/-961817614 (var1104) var1104)
(declare-fun cast-from-String-to-var1104 (String) var1104)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var240 var240)
(declare-const null-String String)
(declare-const var2704 var240) ; Statement: r1 := @this: org.hibernate.boot.registry.selector.internal.DefaultJtaPlatformSelector 
(assert (not (= var2704 null-var240)))
(declare-const var3717 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3717 null-String)))
;(assert (var3046_requireNonNull/-961817614 (cast-from-String-to-var1104 var3717))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var3717!1 String)
(assert true)
(define-const var472 Bool (isEmpty/-1285796103 var3717!1)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var472 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3046_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var1104=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var240=org.hibernate.boot.registry.selector.internal.DefaultJtaPlatformSelector, var2704=r1, var3717=r0, var1388=null_type, var3046=java.util.Objects, var1104=java.lang.Object, var472=$z0}
; {org.hibernate.boot.registry.selector.internal.DefaultJtaPlatformSelector=var240, r1=var2704, r0=var3717, null_type=var1388, java.util.Objects=var3046, java.lang.Object=var1104, $z0=var472}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r1 := @this: org.hibernate.boot.registry.selector.internal.DefaultJtaPlatformSelector;	r0 := @parameter0: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return null
;block_num 2