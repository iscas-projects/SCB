(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1663 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1342 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1342 null-String)))
(declare-const var1447 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1447 null-Int)))
(declare-const var3716 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var3716 null-String)))
(assert true)
(define-const var3683 Int (length/-134980193 var1342)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (> var1447 var3683))) ; Negate: Cond: i1 > i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1342=r0, var1663=null_type, var1447=i1, var3716=r2, var3683=i0}
; {r0=var1342, null_type=var1663, i1=var1447, r2=var3716, i0=var3683}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r2 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 2