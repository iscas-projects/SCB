(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var485 0)
(declare-sort var3635 0)
(declare-sort var850 0)
(declare-sort var1051 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var850_requireNonNull/-961817614 (var1051) var1051)
(declare-fun cast-from-String-to-var1051 (String) var1051)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var485 var485)
(declare-const null-String String)
(declare-const var535 var485) ; Statement: r12 := @this: org.hibernate.boot.registry.selector.internal.DefaultDialectSelector 
(assert (not (= var535 null-var485)))
(declare-const var389 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var389 null-String)))
;(assert (var850_requireNonNull/-961817614 (cast-from-String-to-var1051 var389))) ; Statement: staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0) 

(declare-const var389!1 String)
(assert true)
(define-const var1484 Bool (isEmpty/-1285796103 var389!1)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (= (ite var1484 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var850_requireNonNull/-961817614=([java.lang.Object], java.lang.Object), cast-from-String-to-var1051=([java.lang.String], java.lang.Object), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var485=org.hibernate.boot.registry.selector.internal.DefaultDialectSelector, var535=r12, var389=r0, var3635=null_type, var850=java.util.Objects, var1051=java.lang.Object, var1484=$z0}
; {org.hibernate.boot.registry.selector.internal.DefaultDialectSelector=var485, r12=var535, r0=var389, null_type=var3635, java.util.Objects=var850, java.lang.Object=var1051, $z0=var1484}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r12 := @this: org.hibernate.boot.registry.selector.internal.DefaultDialectSelector;	r0 := @parameter0: java.lang.String;	staticinvoke <java.util.Objects: java.lang.Object requireNonNull(java.lang.Object)>(r0);	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto c0 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return null
;block_num 2