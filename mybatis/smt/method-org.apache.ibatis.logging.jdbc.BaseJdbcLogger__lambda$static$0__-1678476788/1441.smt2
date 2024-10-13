(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var469 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1227988463 (var469) String)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var469 var469)
(declare-const var3236 var469) ; Statement: r0 := @parameter0: java.lang.reflect.Method 
(assert (not (= var3236 null-var469)))
(assert true)
(define-const var857 String (getName/1227988463 var3236)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>() 
(assert true)
(define-const var3348 Bool (startsWith/-1785782452 var857 "set")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("set") 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1227988463=([java.lang.reflect.Method], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var469=java.lang.reflect.Method, var3236=r0, var857=$r1, var3348=$z0}
; {java.lang.reflect.Method=var469, r0=var3236, $r1=var857, $z0=var3348}
;seq <java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Method;	$r1 = virtualinvoke r0.<java.lang.reflect.Method: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean startsWith(java.lang.String)>("set");	return $z0
;block_num 1