(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1942 0)
(declare-sort var2516 0)
(declare-sort var940 0)
(declare-sort var3905 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1942 var1942)
(declare-const null-String String)
(declare-const null-var940 var940)
(declare-const var3905-TRUE var3905)
(declare-const var2294 var1942) ; Statement: r5 := @this: freemarker.core.BuiltInsForStringsMisc$booleanBI 
(assert (not (= var2294 null-var1942)))
(declare-const var3172 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3172 null-String)))
(declare-const var671 var940) ; Statement: r1 := @parameter1: freemarker.core.Environment 
(assert (not (= var671 null-var940)))
(assert true)
(define-const var1923 Bool (= var3172 "true")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false") 
(assert (not (= (ite var1923 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3642 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z4 == 0 goto $r8 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert (not (= (ite var3642 1 0) 0))) ; Negate: Cond: z4 == 0  
(define-const var1414 var3905 var3905-TRUE) ; Statement: $r8 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel TRUE> 
 ; Statement: goto [?= return $r8] 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1942=freemarker.core.BuiltInsForStringsMisc$booleanBI, var2294=r5, var3172=r0, var2516=null_type, var940=freemarker.core.Environment, var671=r1, var1923=$z0, var3642=z4, var3905=freemarker.template.TemplateBooleanModel, var1414=$r8}
; {freemarker.core.BuiltInsForStringsMisc$booleanBI=var1942, r5=var2294, r0=var3172, null_type=var2516, freemarker.core.Environment=var940, r1=var671, $z0=var1923, z4=var3642, freemarker.template.TemplateBooleanModel=var3905, $r8=var1414}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.core.BuiltInsForStringsMisc$booleanBI;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: freemarker.core.Environment;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false");	z4 = 1;	goto [?= (branch)];	if z4 == 0 goto $r8 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	$r8 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel TRUE>;	goto [?= return $r8];	return $r8
;block_num 5