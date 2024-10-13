(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var24 0)
(declare-sort var281 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var24 var24)
(declare-const null-String String)
(declare-const var3198 var24) ; Statement: r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm 
(assert (not (= var3198 null-var24)))
(declare-const var3039 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3039 null-String)))
(assert true)
(define-const var1587 Bool (startsWith/-1785782452 var3039 ".")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(".") 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var1587 1 0) 0))) ; Cond: $z0 != 0 
(define-const var636 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var24=freemarker.core.DefaultTruncateBuiltinAlgorithm, var3198=r1, var3039=r0, var281=null_type, var1587=$z0, var636=$z2}
; {freemarker.core.DefaultTruncateBuiltinAlgorithm=var24, r1=var3198, r0=var3039, null_type=var281, $z0=var1587, $z2=var636}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>(".");	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3