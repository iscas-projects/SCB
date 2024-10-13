(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2306 0)
(declare-sort var1250 0)
(declare-sort var992 0)
(declare-sort var1506 0)
(declare-sort var396 0)
(declare-sort var3772 0)
(declare-sort var866 0)
(declare-sort var1173 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun configurable/1537946212 (var1506) var992)
(declare-fun cast-from-var2306-to-var1506 (var2306) var1506)
(declare-fun cast-from-var992-to-var396 (var992) var396)
(declare-fun var866-init () var866)
(declare-fun <init>/480853528 (var866 var1173) void)
(declare-fun cast-from-var3772-to-var1173 (var3772) var1173)
(declare-const null-var2306 var2306)
(declare-const null-String String)
(declare-const null-var3772 var3772)
(declare-const var19 var2306) ; Statement: r3 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel 
(assert (not (= var19 null-var2306)))
(declare-const var3622 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3622 null-String)))
(define-const var171 String "configuration") ; Statement: $r1 = "configuration" 
(assert true)
(define-const var3489 Bool (= var171 var3622)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "name" 
(assert (not (= (ite var3489 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1996 var992 (configurable/1537946212 (cast-from-var2306-to-var1506 var19))) ; Statement: $r6 = r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel: freemarker.core.Configurable configurable> 
(define-const var1022 var396 (cast-from-var992-to-var396 var1996)) ; Statement: $r7 = (freemarker.template.Template) $r6 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1724 var3772) ; Statement: $r11 := @caughtexception 
(assert (not (= var1724 null-var3772)))
(define-const var3258 var866 var866-init) ; Statement: $r12 = new freemarker.template.TemplateModelException 
(assert true)
;(assert (<init>/480853528 var3258 (cast-from-var3772-to-var1173 var1724))) ; Statement: specialinvoke $r12.<freemarker.template.TemplateModelException: void <init>(java.lang.Exception)>($r11) 

(declare-const var3258!1 var866)
(declare-const var1724!1 var3772)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {configurable/1537946212=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel], freemarker.core.Configurable), cast-from-var2306-to-var1506=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel], freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel), cast-from-var992-to-var396=([freemarker.core.Configurable], freemarker.template.Template), var866-init=([], freemarker.template.TemplateModelException), <init>/480853528=([freemarker.template.TemplateModelException, java.lang.Exception], void), cast-from-var3772-to-var1173=([java.rmi.RemoteException], java.lang.Exception)}
; {var2306=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel, var19=r3, var3622=r0, var1250=null_type, var171=$r1, var3489=$z0, var992=freemarker.core.Configurable, var1506=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel, var1996=$r6, var396=freemarker.template.Template, var1022=$r7, var3772=java.rmi.RemoteException, var1724=$r11, var866=freemarker.template.TemplateModelException, var3258=$r12, var1173=java.lang.Exception}
; {freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel=var2306, r3=var19, r0=var3622, null_type=var1250, $r1=var171, $z0=var3489, freemarker.core.Configurable=var992, freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel=var1506, $r6=var1996, freemarker.template.Template=var396, $r7=var1022, java.rmi.RemoteException=var3772, $r11=var1724, freemarker.template.TemplateModelException=var866, $r12=var3258, java.lang.Exception=var1173}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel;	r0 := @parameter0: java.lang.String;	$r1 = "configuration";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "name";	$r6 = r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel: freemarker.core.Configurable configurable>;	$r7 = (freemarker.template.Template) $r6;	$r11 := @caughtexception;	$r12 = new freemarker.template.TemplateModelException;	specialinvoke $r12.<freemarker.template.TemplateModelException: void <init>(java.lang.Exception)>($r11);	throw $r12
;block_num 3