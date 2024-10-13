(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2959 0)
(declare-sort var1537 0)
(declare-sort var3730 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3730_checkNotNull/1446102589 (var1537) var1537)
(declare-fun cast-from-String-to-var1537 (String) var1537)
(declare-fun cast-from-var1537-to-String (var1537) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2248 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2248 null-String)))
(declare-const var711 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var711 null-Int)))
(define-const var817 var1537 (var3730_checkNotNull/1446102589 (cast-from-String-to-var1537 var2248))) ; Statement: $r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 
(define-const var2995 String (cast-from-var1537-to-String var817)) ; Statement: $r2 = (java.lang.String) $r1 
(assert true)
(define-const var956 Bool (isEmpty/-1285796103 var2995)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (not (= (ite var956 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {var3730_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var1537=([java.lang.String], java.lang.Object), cast-from-var1537-to-String=([java.lang.Object], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var2248=r0, var2959=null_type, var711=i0, var1537=java.lang.Object, var3730=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var817=$r1, var2995=$r2, var956=$z0}
; {r0=var2248, null_type=var2959, i0=var711, java.lang.Object=var1537, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var3730, $r1=var817, $r2=var2995, $z0=var956}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	$r1 = staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$r2 = (java.lang.String) $r1;	$z0 = virtualinvoke $r2.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto (branch);	return null
;block_num 2