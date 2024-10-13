(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1477 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1477_getPreference/461511153 (String) String)
(declare-const null-var1477 var1477)
(declare-const var2454 var1477) ; Statement: r1 := @this: junit.runner.BaseTestRunner 
(assert (not (= var2454 null-var1477)))
(define-const var2502 String (var1477_getPreference/461511153 "loading")) ; Statement: $r0 = staticinvoke <junit.runner.BaseTestRunner: java.lang.String getPreference(java.lang.String)>("loading") 
(assert true)
(define-const var3825 Bool (= var2502 "true")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("true") 
 ; Statement: if $z0 == 0 goto $z2 = 0 
(assert (= (ite var3825 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2520 Bool (ite (= 1 0) true false)) ; Statement: $z2 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {var1477_getPreference/461511153=([java.lang.String], java.lang.String)}
; {var1477=junit.runner.BaseTestRunner, var2454=r1, var2502=$r0, var3825=$z0, var2520=$z2}
; {junit.runner.BaseTestRunner=var1477, r1=var2454, $r0=var2502, $z0=var3825, $z2=var2520}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: junit.runner.BaseTestRunner;	$r0 = staticinvoke <junit.runner.BaseTestRunner: java.lang.String getPreference(java.lang.String)>("loading");	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("true");	if $z0 == 0 goto $z2 = 0;	$z2 = 0;	return $z2
;block_num 3