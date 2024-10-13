(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2480 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2326 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2326 null-String)))
(declare-const var260 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var260 null-String)))
(declare-const var756 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var756 null-String)))
(assert true)
(define-const var1815 Int (length/-134980193 var260)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r1 = new java.lang.IllegalStateException 
(assert (not (not (= var1815 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2326=r2, var2480=null_type, var260=r0, var756=r4, var1815=$i0}
; {r2=var2326, null_type=var2480, r0=var260, r4=var756, $i0=var1815}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	r4 := @parameter2: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r1 = new java.lang.IllegalStateException;	return r4
;block_num 2