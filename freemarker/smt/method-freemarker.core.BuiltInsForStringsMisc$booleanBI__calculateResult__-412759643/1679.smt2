(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3195 0)
(declare-sort var3180 0)
(declare-sort var1458 0)
(declare-sort var2704 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var3195 var3195)
(declare-const null-String String)
(declare-const null-var1458 var1458)
(declare-const var2704-FALSE var2704)
(declare-const var1239 var3195) ; Statement: r5 := @this: freemarker.core.BuiltInsForStringsMisc$booleanBI 
(assert (not (= var1239 null-var3195)))
(declare-const var361 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var361 null-String)))
(declare-const var2114 var1458) ; Statement: r1 := @parameter1: freemarker.core.Environment 
(assert (not (= var2114 null-var1458)))
(assert true)
(define-const var1008 Bool (= var361 "true")) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false") 
(assert (not (= (ite var1008 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1164 Bool (ite (= 1 1) true false)) ; Statement: z4 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if z4 == 0 goto $r8 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert (= (ite var1164 1 0) 0)) ; Cond: z4 == 0 
(define-const var3331 var2704 var2704-FALSE) ; Statement: $r8 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE> 
(assert true) ; Non Conditional
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var3195=freemarker.core.BuiltInsForStringsMisc$booleanBI, var1239=r5, var361=r0, var3180=null_type, var1458=freemarker.core.Environment, var2114=r1, var1008=$z0, var1164=z4, var2704=freemarker.template.TemplateBooleanModel, var3331=$r8}
; {freemarker.core.BuiltInsForStringsMisc$booleanBI=var3195, r5=var1239, r0=var361, null_type=var3180, freemarker.core.Environment=var1458, r1=var2114, $z0=var1008, z4=var1164, freemarker.template.TemplateBooleanModel=var2704, $r8=var3331}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: freemarker.core.BuiltInsForStringsMisc$booleanBI;	r0 := @parameter0: java.lang.String;	r1 := @parameter1: freemarker.core.Environment;	$z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("true");	if $z0 == 0 goto $z1 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("false");	z4 = 1;	goto [?= (branch)];	if z4 == 0 goto $r8 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	$r8 = <freemarker.template.TemplateBooleanModel: freemarker.template.TemplateBooleanModel FALSE>;	return $r8
;block_num 5