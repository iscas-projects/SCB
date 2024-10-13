(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1644 0)
(declare-sort var1425 0)
(declare-sort var2009 0)
(declare-sort var1969 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun get/-188494217 (var1969 String) var2009)
(declare-fun cast-from-var1644-to-var1969 (var1644) var1969)
(declare-const null-var1644 var1644)
(declare-const null-String String)
(declare-const var1992 var1644) ; Statement: r3 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel 
(assert (not (= var1992 null-var1644)))
(declare-const var1498 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1498 null-String)))
(define-const var1529 String "configuration") ; Statement: $r1 = "configuration" 
(assert true)
(define-const var490 Bool (= var1529 var1498)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 == 0 goto $r2 = "name" 
(assert (= (ite var490 1 0) 0)) ; Cond: $z0 == 0 
(define-const var114 String "name") ; Statement: $r2 = "name" 
(assert true)
(define-const var3112 Bool (= var114 var1498)) ; Statement: $z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z1 == 0 goto $r4 = specialinvoke r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0) 
(assert (= (ite var3112 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var1690 var2009 (get/-188494217 (cast-from-var1644-to-var1969 var1992) var1498)) ; Statement: $r4 = specialinvoke r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {get/-188494217=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel, java.lang.String], freemarker.template.TemplateModel), cast-from-var1644-to-var1969=([freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel], freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel)}
; {var1644=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel, var1992=r3, var1498=r0, var1425=null_type, var1529=$r1, var490=$z0, var114=$r2, var3112=$z1, var2009=freemarker.template.TemplateModel, var1969=freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel, var1690=$r4}
; {freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel=var1644, r3=var1992, r0=var1498, null_type=var1425, $r1=var1529, $z0=var490, $r2=var114, $z1=var3112, freemarker.template.TemplateModel=var2009, freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel=var1969, $r4=var1690}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r3 := @this: freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugTemplateModel;	r0 := @parameter0: java.lang.String;	$r1 = "configuration";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 == 0 goto $r2 = "name";	$r2 = "name";	$z1 = virtualinvoke $r2.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z1 == 0 goto $r4 = specialinvoke r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0);	$r4 = specialinvoke r3.<freemarker.debug.impl.RmiDebuggedEnvironmentImpl$DebugConfigurableModel: freemarker.template.TemplateModel get(java.lang.String)>(r0);	return $r4
;block_num 3