(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2617 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3734 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3734 null-String)))
 ; Statement: if r0 == null goto $r4 = "" 
(assert (not (= var3734 null-String))) ; Negate: Cond: r0 == null  
(assert true)
(define-const var1332 Int (length/-134980193 var3734)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 == 0 goto $r4 = "" 
(assert (= var1332 0)) ; Cond: $i0 == 0 
(define-const var1916 String "") ; Statement: $r4 = "" 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3734=r0, var2617=null_type, var1332=$i0, var1916=$r4}
; {r0=var3734, null_type=var2617, $i0=var1332, $r4=var1916}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 == null goto $r4 = "";	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 == 0 goto $r4 = "";	$r4 = "";	return $r4
;block_num 4