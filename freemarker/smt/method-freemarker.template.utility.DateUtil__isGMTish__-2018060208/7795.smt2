(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1127 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3311 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3311 null-String)))
(assert true)
(define-const var1871 Int (length/-134980193 var3311)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 >= 3 goto c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (>= var1871 3))) ; Negate: Cond: $i0 >= 3  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3311=r0, var1127=null_type, var1871=$i0}
; {r0=var3311, null_type=var1127, $i0=var1871}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 >= 3 goto c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return 0
;block_num 2