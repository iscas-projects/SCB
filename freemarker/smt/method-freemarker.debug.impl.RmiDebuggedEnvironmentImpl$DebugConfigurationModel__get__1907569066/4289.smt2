(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3671 0)
(declare-sort var1113 0)
(declare-sort var1104 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun sharedVariables/-1772389537 (var3671) var1104)
(declare-const null-var3671 var3671)
(declare-const null-String String)
(declare-const var1905 var3671) ; Statement: r2 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel 
(assert (not (= var1905 null-var3671)))
(declare-const var389 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var389 null-String)))
(define-const var3733 String "sharedVariables") ; Statement: $r1 = "sharedVariables" 
(assert true)
(define-const var3271 Bool (= var3733 var389)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = specialinvoke r2.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0) 
(assert (not (= (ite var3271 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2810 var1104 (sharedVariables/-1772389537 var1905)) ; Statement: $r4 = r2.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel: freemarker.template.TemplateModel sharedVariables> 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {sharedVariables/-1772389537=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel], freemarker.template.TemplateModel)}
; {var3671=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel, var1905=r2, var389=r0, var1113=null_type, var3733=$r1, var3271=$z0, var1104=freemarker.template.TemplateModel, var2810=$r4}
; {freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel=var3671, r2=var1905, r0=var389, null_type=var1113, $r1=var3733, $z0=var3271, freemarker.template.TemplateModel=var1104, $r4=var2810}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel;	r0 := @parameter0: java.lang.String;	$r1 = "sharedVariables";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = specialinvoke r2.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0);	$r4 = r2.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel: freemarker.template.TemplateModel sharedVariables>;	return $r4
;block_num 2