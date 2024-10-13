(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var436 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1618348824 (var436) String)
(declare-const null-var436 var436)
(declare-const var3314 var436) ; Statement: r0 := @parameter0: java.lang.reflect.Field 
(assert (not (= var3314 null-var436)))
(define-const var996 String "this$0") ; Statement: $r2 = "this$0" 
(assert true)
(define-const var2046 String (getName/1618348824 var3314)) ; Statement: $r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>() 
(assert true)
(define-const var2568 Bool (= var996 var2046)) ; Statement: $z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1) 
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1618348824=([java.lang.reflect.Field], java.lang.String)}
; {var436=java.lang.reflect.Field, var3314=r0, var996=$r2, var2046=$r1, var2568=$z0}
; {java.lang.reflect.Field=var436, r0=var3314, $r2=var996, $r1=var2046, $z0=var2568}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: java.lang.reflect.Field;	$r2 = "this$0";	$r1 = virtualinvoke r0.<java.lang.reflect.Field: java.lang.String getName()>();	$z0 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>($r1);	return $z0
;block_num 1