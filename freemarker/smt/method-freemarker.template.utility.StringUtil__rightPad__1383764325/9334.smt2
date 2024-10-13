(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var519 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var482 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var482 null-String)))
(declare-const var318 Int) ; Statement: i1 := @parameter1: int 
(assert (not (= var318 null-Int)))
(declare-const var2866 String) ; Statement: r2 := @parameter2: java.lang.String 
(assert (not (= var2866 null-String)))
(assert true)
(define-const var1318 Int (length/-134980193 var482)) ; Statement: i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i1 > i0 goto $r1 = new java.lang.StringBuilder 
(assert (not (> var318 var1318))) ; Negate: Cond: i1 > i0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var482=r0, var519=null_type, var318=i1, var2866=r2, var1318=i0}
; {r0=var482, null_type=var519, i1=var318, r2=var2866, i0=var1318}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i1 := @parameter1: int;	r2 := @parameter2: java.lang.String;	i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i1 > i0 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 2