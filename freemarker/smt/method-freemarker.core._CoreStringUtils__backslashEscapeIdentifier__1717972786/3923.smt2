(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3898 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var2324 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2324 null-String)))
(define-const var1790 String null-String) ; Statement: r2 = null 
(define-const var381 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
(assert true)
(define-const var3009 Int (length/-134980193 var2324)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if i4 >= $i0 goto (branch) 
(assert (>= var381 var3009)) ; Cond: i4 >= $i0 
 ; Statement: if r2 != null goto $r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert (not (not (= var1790 null-String)))) ; Negate: Cond: r2 != null  
(define-const var1821 String var2324) ; Statement: $r3 = r0 
 ; Statement: goto [?= return $r3] 
(assert true) ; Non Conditional
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var2324=r0, var3898=null_type, var1790=r2, var381=i4, var3009=$i0, var1821=$r3}
; {r0=var2324, null_type=var3898, r2=var1790, i4=var381, $i0=var3009, $r3=var1821}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 = null;	i4 = 0;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if i4 >= $i0 goto (branch);	if r2 != null goto $r3 = virtualinvoke r2.<java.lang.StringBuilder: java.lang.String toString()>();	$r3 = r0;	goto [?= return $r3];	return $r3
;block_num 5