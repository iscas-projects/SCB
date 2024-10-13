(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const null-Int Int)
(declare-const var2064 String) ; Statement: r1 := @parameter0: java.lang.CharSequence 
(assert (not (= var2064 null-String)))
(declare-const var1830 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var1830 null-Int)))
(declare-const var878 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var878 null-Int)))
(define-const var168 String null-String) ; Statement: r10 = null 
(define-const var2031 Int var1830) ; Statement: i7 = i0 
(define-const var3377 Int var1830) ; Statement: i8 = i0 
(assert true) ; Non Conditional
 ; Statement: if i8 >= i1 goto (branch) 
(assert (>= var3377 var878)) ; Cond: i8 >= i1 
 ; Statement: if r10 != null goto (branch) 
(assert (not (= var168 null-String))) ; Cond: r10 != null 
 ; Statement: if i7 >= i1 goto $r0 = virtualinvoke r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (>= var2031 var878)) ; Cond: i7 >= i1 
(assert true)
(define-const var416 String (toString/-2075883882 var168)) ; Statement: $r0 = virtualinvoke r10.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2064=r1, var1830=i0, var878=i1, var168=r10, var2031=i7, var3377=i8, var416=$r0}
; {r1=var2064, i0=var1830, i1=var878, r10=var168, i7=var2031, i8=var3377, $r0=var416}
;seq <java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.CharSequence;	i0 := @parameter1: int;	i1 := @parameter2: int;	r10 = null;	i7 = i0;	i8 = i0;	if i8 >= i1 goto (branch);	if r10 != null goto (branch);	if i7 >= i1 goto $r0 = virtualinvoke r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r0 = virtualinvoke r10.<java.lang.StringBuilder: java.lang.String toString()>();	return $r0
;block_num 5