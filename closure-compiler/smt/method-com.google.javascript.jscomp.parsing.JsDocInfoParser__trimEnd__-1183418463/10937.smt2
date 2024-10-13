(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3797 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3797 null-String)))
(define-const var547 Int 0) ; Statement: i7 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var2241 Int (length/-134980193 var3797)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i7 >= $i0 goto (branch) 
(assert (>= var547 var2241)) ; Cond: i7 >= $i0 
 ; Statement: if i7 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (not (= var547 0)))) ; Negate: Cond: i7 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3797=r0, var1704=null_type, var547=i7, var2241=$i0}
; {r0=var3797, null_type=var1704, i7=var547, $i0=var2241}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i7 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i7 >= $i0 goto (branch);	if i7 != 0 goto $i1 = virtualinvoke r0.<java.lang.String: int length()>();	return r0
;block_num 4