(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2404 0)
(declare-sort var321 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var2404 var2404)
(declare-const null-String String)
(declare-const var1459 var2404) ; Statement: r3 := @this: org.apache.ibatis.reflection.Reflector 
(assert (not (= var1459 null-var2404)))
(declare-const var1032 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1032 null-String)))
(assert true)
(define-const var3925 Bool (startsWith/-1785782452 var1032 "$")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("$") 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (= (ite var3925 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2705 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z3 
(check-sat)
(get-model)
(get-unsat-core)
; {startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var2404=org.apache.ibatis.reflection.Reflector, var1459=r3, var1032=r0, var321=null_type, var3925=$z0, var2705=$z3}
; {org.apache.ibatis.reflection.Reflector=var2404, r3=var1459, r0=var1032, null_type=var321, $z0=var3925, $z3=var2705}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r3 := @this: org.apache.ibatis.reflection.Reflector;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>("$");	if $z0 != 0 goto $z3 = 0;	$z3 = 0;	return $z3
;block_num 3