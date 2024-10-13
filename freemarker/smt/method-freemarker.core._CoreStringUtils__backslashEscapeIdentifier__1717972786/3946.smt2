(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2633 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-String String)
(declare-const var3068 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3068 null-String)))
(define-const var2648 String null-String) ; Statement: r2 = null 
(define-const var1294 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var390 Int (length/-134980193 var3068)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto (branch) 
(assert (>= var1294 var390)) ; Cond: i4 >= $i0 
 ; Statement: if r2 != null goto $r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (= var2648 null-String))) ; Cond: r2 != null 
(assert true)
(define-const var3223 String (toString/-2075883882 var2648)) ; Statement: $r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3068=r0, var2633=null_type, var2648=r2, var1294=i4, var390=$i0, var3223=$r3}
; {r0=var3068, null_type=var2633, r2=var2648, i4=var1294, $i0=var390, $r3=var3223}
;seq <java.lang.String: int length()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 = null;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto (branch);	if r2 != null goto $r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	return $r3
;block_num 5