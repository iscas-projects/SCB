(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var388 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2347 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2347 null-String)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2347 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var3878 Int (length/-134980193 var2347)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r1 = r0 
(assert (not (= var3878 0))) ; Cond: $i0 != 0 
(define-const var2271 String var2347) ; Statement: $r1 = r0 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2347=r0, var388=null_type, var3878=$i0, var2271=$r1}
; {r0=var2347, null_type=var388, $i0=var3878, $r1=var2271}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r1 = r0;	$r1 = r0;	return $r1
;block_num 4