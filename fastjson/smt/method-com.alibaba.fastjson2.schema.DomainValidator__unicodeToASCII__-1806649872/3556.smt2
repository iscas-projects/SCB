(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var690 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3123 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3123 null-String)))
(define-const var282 Bool (ite (= 1 1) true false)) ; Statement: z0 = 1 
(define-const var116 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var469 Int (length/-134980193 var3123)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i2 >= $i0 goto (branch) 
(assert (>= var116 var469)) ; Cond: i2 >= $i0 
 ; Statement: if z0 == 0 goto $r1 = staticinvoke <java.net.IDN: java.lang.String toASCII(java.lang.String)>(r0) 
(assert (not (= (ite var282 1 0) 0))) ; Negate: Cond: z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3123=r0, var690=null_type, var282=z0, var116=i2, var469=$i0}
; {r0=var3123, null_type=var690, z0=var282, i2=var116, $i0=var469}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 = 1;	i2 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i2 >= $i0 goto (branch);	if z0 == 0 goto $r1 = staticinvoke <java.net.IDN: java.lang.String toASCII(java.lang.String)>(r0);	return r0
;block_num 4