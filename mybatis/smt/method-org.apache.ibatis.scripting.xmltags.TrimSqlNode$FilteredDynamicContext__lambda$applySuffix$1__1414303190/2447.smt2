(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1739 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-String String)
(declare-const var1747 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1747 null-String)))
(declare-const var2603 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var2603 null-String)))
(assert true)
(define-const var1898 Bool (endsWith/985337093 var1747 var2603)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var1898 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3011 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var1747=r0, var1739=null_type, var2603=r1, var1898=$z0, var3011=$z2}
; {r0=var1747, null_type=var1739, r1=var2603, $z0=var1898, $z2=var3011}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean endsWith(java.lang.String)>(r1);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3