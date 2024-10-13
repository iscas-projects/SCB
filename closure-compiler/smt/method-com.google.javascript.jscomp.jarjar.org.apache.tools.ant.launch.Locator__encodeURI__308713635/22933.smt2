(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2840 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var948 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var948 null-String)))
(define-const var3764 Int 0) ; Statement: i12 = 0 
(assert true)
(define-const var2592 Int (length/-134980193 var948)) ; Statement: i13 = virtualinvoke r0.<java.lang.String: int length()>() 
(define-const var884 String null-String) ; Statement: r16 = null 
(assert true) ; Non Conditional
 ; Statement: if i12 >= i13 goto (branch) 
(assert (>= var3764 var2592)) ; Cond: i12 >= i13 
 ; Statement: if i12 >= i13 goto (branch) 
(assert (>= var3764 var2592)) ; Cond: i12 >= i13 
 ; Statement: if r16 != null goto $r17 = virtualinvoke r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var884 null-String))) ; Cond: r16 != null 
(assert true)
(define-const var1096 String (toString/-2075883882 var884)) ; Statement: $r17 = virtualinvoke r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var948=r0, var2840=null_type, var3764=i12, var2592=i13, var884=r16, var1096=$r17}
; {r0=var948, null_type=var2840, i12=var3764, i13=var2592, r16=var884, $r17=var1096}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	i12 = 0;	i13 = virtualinvoke r0.<java.lang.String: int length()>();	r16 = null;	if i12 >= i13 goto (branch);	if i12 >= i13 goto (branch);	if r16 != null goto $r17 = virtualinvoke r16.<java.lang.StringBuilder: java.lang.String toString()>();	$r17 = virtualinvoke r16.<java.lang.StringBuilder: java.lang.String toString()>();	return $r17
;block_num 6