(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var550 0)
(declare-sort var2243 0)
(declare-sort var2633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2243_checkNotNull/1446102589 (var2633) var2633)
(declare-fun cast-from-String-to-var2633 (String) var2633)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2525 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2525 null-String)))
(declare-const var2388 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2388 null-Int)))
(declare-const var942 Int) ; Statement: c2 := @parameter2: char 
(assert (not (= var942 null-Int)))
;(assert (var2243_checkNotNull/1446102589 (cast-from-String-to-var2633 var2525))) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0) 

(declare-const var2525!1 String)
(assert true)
(define-const var150 Int (length/-134980193 var2525!1)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i1 < i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (< var150 var2388))) ; Negate: Cond: $i1 < i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var2243_checkNotNull/1446102589=([java.lang.Object], java.lang.Object), cast-from-String-to-var2633=([java.lang.String], java.lang.Object), length/-134980193=([java.lang.String], int)}
; {var2525=r0, var550=null_type, var2388=i0, var942=c2, var2243=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var2633=java.lang.Object, var150=$i1}
; {r0=var2525, null_type=var550, i0=var2388, c2=var942, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2243, java.lang.Object=var2633, $i1=var150}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i0 := @parameter1: int;	c2 := @parameter2: char;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: java.lang.Object checkNotNull(java.lang.Object)>(r0);	$i1 = virtualinvoke r0.<java.lang.String: int length()>();	if $i1 < i0 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 2