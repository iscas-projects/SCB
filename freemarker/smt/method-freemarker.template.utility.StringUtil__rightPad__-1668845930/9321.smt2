(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var923 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var1046 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1046 null-String)))
(declare-const var1048 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var1048 null-Int)))
(declare-const var1145 Int) ; Statement: c3 := @parameter2: char 
(assert (not (= var1145 null-Int)))
(assert true)
(define-const var312 Int (length/-134980193 var1046)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (> var1048 var312))) ; Negate: Cond: i1 > i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var1046=r0, var923=null_type, var1048=i1, var1145=c3, var312=i0}
; {r0=var1046, null_type=var923, i1=var1048, c3=var1145, i0=var312}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	c3 := @parameter2: char;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 2