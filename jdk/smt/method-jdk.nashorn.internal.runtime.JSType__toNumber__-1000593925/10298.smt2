(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3547 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1191 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1191 null-String)))
(assert true)
(define-const var3373 Int (length/-134980193 var1191)) ; Statement: i7 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i7 != 0 goto i8 = 0 
(assert (not (not (= var3373 0)))) ; Negate: Cond: i7 != 0  
 ; Statement: return 0.0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1191=r0, var3547=null_type, var3373=i7}
; {r0=var1191, null_type=var3547, i7=var3373}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i7 = virtualinvoke r0.<java.lang.String: int length()>();	if i7 != 0 goto i8 = 0;	return 0.0
;block_num 2