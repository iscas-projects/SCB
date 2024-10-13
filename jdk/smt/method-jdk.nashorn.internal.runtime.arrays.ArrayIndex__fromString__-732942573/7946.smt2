(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var1398 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1398 null-String)))
(define-const var1524 Int 0) ; Statement: l7 = 0L 
(assert true)
(define-const var3850 Int (length/-134980193 var1398)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i0 == 0 goto return -1L 
(assert (= var3850 0)) ; Cond: i0 == 0 
 ; Statement: return -1L 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1398=r0, var2943=null_type, var1524=l7, var3850=i0}
; {r0=var1398, null_type=var2943, l7=var1524, i0=var3850}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	l7 = 0L;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i0 == 0 goto return -1L;	return -1L
;block_num 2