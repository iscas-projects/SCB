(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var950 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var950_getPreference/461511153 (String) String)
(define-const var1506 String (var950_getPreference/461511153 "filterstack")) ; Statement: $r0 = staticinvoke <junit.runner.BaseTestRunner: java.lang.String getPreference(java.lang.String)>("filterstack") 
(assert true)
(define-const var2197 Bool (= var1506 "true")) ; Statement: $z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("true") 
 ; Statement: if $z0 == 0 goto $z2 = 1 
(assert (= (ite var2197 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1531 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= return $z2] 
(assert true) ; Non Conditional
 ; Statement: return $z2 
(check-sat)
(get-model)
(get-unsat-core)
; {var950_getPreference/461511153=([java.lang.String], java.lang.String)}
; {var950=junit.runner.BaseTestRunner, var1506=$r0, var2197=$z0, var1531=$z2}
; {junit.runner.BaseTestRunner=var950, $r0=var1506, $z0=var2197, $z2=var1531}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts $r0 = staticinvoke <junit.runner.BaseTestRunner: java.lang.String getPreference(java.lang.String)>("filterstack");	$z0 = virtualinvoke $r0.<java.lang.String: boolean equals(java.lang.Object)>("true");	if $z0 == 0 goto $z2 = 1;	$z2 = 1;	goto [?= return $z2];	return $z2
;block_num 3