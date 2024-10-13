(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3867 0)
(declare-sort var1190 0)
(declare-sort var3447 0)
(declare-sort var389 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-188494217 (var389 String) var3447)
(declare-fun cast-from-var3867-to-var389 (var3867) var389)
(declare-const null-var3867 var3867)
(declare-const null-String String)
(declare-const var322 var3867) ; Statement: r2 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel 
(assert (not (= var322 null-var3867)))
(declare-const var2233 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var2233 null-String)))
(define-const var2723 String "sharedVariables") ; Statement: $r1 = "sharedVariables" 
(assert true)
(define-const var2720 Bool (= var2723 var2233)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r3 = specialinvoke r2.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0) 
(assert (= (ite var2720 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var634 var3447 (get/-188494217 (cast-from-var3867-to-var389 var322) var2233)) ; Statement: $r3 = specialinvoke r2.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0) 
 ; Statement: return $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-188494217=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel, java.lang.String], freemarker.template.TemplateModel), cast-from-var3867-to-var389=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel], freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel)}
; {var3867=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel, var322=r2, var2233=r0, var1190=null_type, var2723=$r1, var2720=$z0, var3447=freemarker.template.TemplateModel, var389=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel, var634=$r3}
; {freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel=var3867, r2=var322, r0=var2233, null_type=var1190, $r1=var2723, $z0=var2720, freemarker.template.TemplateModel=var3447, freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel=var389, $r3=var634}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r2 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurationModel;	r0 := @parameter0: java.lang.String;	$r1 = "sharedVariables";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r3 = specialinvoke r2.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0);	$r3 = specialinvoke r2.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0);	return $r3
;block_num 2