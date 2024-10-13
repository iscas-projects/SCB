(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1874 0)
(declare-sort var3208 0)
(declare-sort var2160 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1874 var1874)
(declare-const null-String String)
(declare-const var2160-TRUE var2160)
(declare-const var922 var1874) ; Statement: r4 := @this: freemarker.core._ObjectBuilderSettingEvaluator 
(assert (not (= var922 null-var1874)))
(declare-const var1811 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1811 null-String)))
(assert true)
(define-const var2477 Bool (= var1811 "true")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false") 
(assert (not (= (ite var2477 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var707 var2160 var2160-TRUE) ; Statement: $r3 = <java.lang.Boolean: java.lang.Boolean TRUE> 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1874=freemarker.core._ObjectBuilderSettingEvaluator, var922=r4, var1811=r0, var3208=null_type, var2477=$z0, var2160=java.lang.Boolean, var707=$r3}
; {freemarker.core._ObjectBuilderSettingEvaluator=var1874, r4=var922, r0=var1811, null_type=var3208, $z0=var2477, java.lang.Boolean=var2160, $r3=var707}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r4 := @this: freemarker.core._ObjectBuilderSettingEvaluator;	r0 := @parameter0: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false");	$r3 = <java.lang.Boolean: java.lang.Boolean TRUE>;	return $r3
;block_num 2