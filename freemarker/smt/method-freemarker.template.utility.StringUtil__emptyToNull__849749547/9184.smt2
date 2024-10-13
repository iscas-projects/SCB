(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1887 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2635 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2635 null-String)))
 ; Statement: if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
(assert (not (= var2635 null-String))) ; Cond: r0 != null 
(assert true)
(define-const var159 Int (length/-134980193 var2635)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r1 = r0 
(assert (not (not (= var159 0)))) ; Negate: Cond: $i0 != 0  
(define-const var3584 String null-String) ; Statement: $r1 = null 
 ; Statement: goto [?= return $r1] 
(assert true) ; Non Conditional
 ; Statement: return $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2635=r0, var1887=null_type, var159=$i0, var3584=$r1}
; {r0=var2635, null_type=var1887, $i0=var159, $r1=var3584}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	if r0 != null goto $i0 = virtualinvoke r0.<java.lang.String: int length()>();	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r1 = r0;	$r1 = null;	goto [?= return $r1];	return $r1
;block_num 4