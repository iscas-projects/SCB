(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3425 0)
(declare-sort var3918 0)
(declare-sort var1777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun name/-64243773 (var3425) var1777)
(declare-const null-var3425 var3425)
(declare-const null-String String)
(declare-const var130 var3425) ; Statement: r3 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel 
(assert (not (= var130 null-var3425)))
(declare-const var1963 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1963 null-String)))
(define-const var890 String "configuration") ; Statement: $r1 = "configuration" 
(assert true)
(define-const var1565 Bool (= var890 var1963)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "name" 
(assert (= (ite var1565 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2349 String "name") ; Statement: $r2 = "name" 
(assert true)
(define-const var3880 Bool (= var2349 var1963)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto $r4 = specialinvoke r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0) 
(assert (not (= (ite var3880 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var3633 var1777 (name/-64243773 var130)) ; Statement: $r5 = r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel: freemarker.template.SimpleScalar name> 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {name/-64243773=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel], freemarker.template.SimpleScalar)}
; {var3425=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel, var130=r3, var1963=r0, var3918=null_type, var890=$r1, var1565=$z0, var2349=$r2, var3880=$z1, var1777=freemarker.template.SimpleScalar, var3633=$r5}
; {freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel=var3425, r3=var130, r0=var1963, null_type=var3918, $r1=var890, $z0=var1565, $r2=var2349, $z1=var3880, freemarker.template.SimpleScalar=var1777, $r5=var3633}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r3 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel;	r0 := @parameter0: java.lang.String;	$r1 = "configuration";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "name";	$r2 = "name";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 == 0 goto $r4 = specialinvoke r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0);	$r5 = r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel: freemarker.template.SimpleScalar name>;	return $r5
;block_num 3