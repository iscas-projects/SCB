(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2873 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-String String)
(declare-const var491 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var491 null-String)))
(declare-const var53 String) ; Statement: r1 := @parameter1: java.lang.String 
(assert (not (= var53 null-String)))
(declare-const var2758 String) ; Statement: r3 := @parameter2: java.lang.String 
(assert (not (= var2758 null-String)))
(assert true)
(define-const var1160 Bool (startsWith/-1785782452 var491 var53)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1) 
 ; Statement: if $z0 == 0 goto return null 
(assert (= (ite var1160 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var491=r0, var2873=null_type, var53=r1, var2758=r3, var1160=$z0}
; {r0=var491, null_type=var2873, r1=var53, r3=var2758, $z0=var1160}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.String;	r3 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(r1);	if $z0 == 0 goto return null;	return null
;block_num 2