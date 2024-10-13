(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var79 0)
(declare-sort var442 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-String String)
(declare-const null-var442 var442)
(declare-const var111 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var111 null-String)))
(declare-const var3031 var442) ; Statement: r2 := @parameter1: com.mysql.cj.util.SaslPrep$StringType 
(assert (not (= var3031 null-var442)))
(assert true)
(define-const var663 Int (length/-134980193 var111)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $r1 = new java.lang.StringBuilder 
(assert (not (not (= var663 0)))) ; Negate: Cond: $i0 != 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {length/-134980193=([java.lang.String], int)}
; {var111=r0, var79=null_type, var442=com.mysql.cj.util.SaslPrep$StringType, var3031=r2, var663=$i0}
; {r0=var111, null_type=var79, com.mysql.cj.util.SaslPrep$StringType=var442, r2=var3031, $i0=var663}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r2 := @parameter1: com.mysql.cj.util.SaslPrep$StringType;	$i0 = virtualinvoke r0.<java.lang.String: int length()>();	if $i0 != 0 goto $r1 = new java.lang.StringBuilder;	return r0
;block_num 2