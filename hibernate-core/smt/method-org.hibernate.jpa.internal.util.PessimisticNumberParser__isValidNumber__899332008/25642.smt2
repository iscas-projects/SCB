(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3287 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const var3951 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3951 null-String)))
(assert true)
(define-const var2096 Int (length/-134980193 var3951)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0) 
(assert (not (not (= var2096 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return 0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var3951=r0, var3287=null_type, var2096=$i0}
; {r0=var3951, null_type=var3287, $i0=var2096}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto c1 = virtualinvoke r0.<java.lang.String: char charAt(int)>(0);	return 0
;block_num 2