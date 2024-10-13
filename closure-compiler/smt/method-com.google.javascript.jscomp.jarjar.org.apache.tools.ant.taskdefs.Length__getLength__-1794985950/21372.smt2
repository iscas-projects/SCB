(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var854 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const var3900 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3900 null-String)))
(declare-const var1016 Bool) ; Statement: z0 := @parameter1: boolean 
(assert (not (= var1016 null-Bool)))
 ; Statement: if z0 == 0 goto $r1 = r0 
(assert (= (ite var1016 1 0) 0)) ; Cond: z0 == 0 
(define-const var909 String var3900) ; Statement: $r1 = r0 
(assert true) ; Non Conditional
(assert true)
(define-const var2488 Int (length/-134980193 var909)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int length()>() 
(define-const var2941 Int (cast-from-Int-to-Int var2488)) ; Statement: $l1 = (long) $i0 
 ; Statement: return $l1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), cast-from-Int-to-Int=([int], long)}
; {var3900=r0, var854=null_type, var1016=z0, var909=$r1, var2488=$i0, var2941=$l1}
; {r0=var3900, null_type=var854, z0=var1016, $r1=var909, $i0=var2488, $l1=var2941}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	z0 := @parameter1: boolean;	if z0 == 0 goto $r1 = r0;	$r1 = r0;	$i0 = virtualinvoke $r1.<java.lang.String: int length()>();	$l1 = (long) $i0;	return $l1
;block_num 3