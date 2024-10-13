(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1515 0)
(declare-sort var2123 0)
(declare-sort var1625 0)
(declare-sort var1189 0)
(declare-sort var1162 0)
(declare-sort var3071 0)
(declare-sort var1362 0)
(declare-sort var2081 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2123_get/-1216255739 (var2123 Int) var1625)
(declare-fun cast-from-var1625-to-var1189 (var1625) var1189)
(declare-fun cast-from-var1189-to-var1162 (var1189) var1162)
(declare-fun var1362_modelToNumber/471460605 (var1162 var2081) var3071)
(declare-const null-var1515 var1515)
(declare-const null-var2123 var2123)
(declare-const null-Int Int)
(declare-const null-var2081 var2081)
(declare-const var989 var1515) ; Statement: r6 := @this: freemarker.core.BuiltIn 
(assert (not (= var989 null-var1515)))
(declare-const var3656 var2123) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var3656 null-var2123)))
(declare-const var853 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var853 null-Int)))
(define-const var3817 var1625 (var2123_get/-1216255739 var3656 var853)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i0) 
(define-const var124 var1189 (cast-from-var1625-to-var1189 var3817)) ; Statement: r2 = (freemarker.template.TemplateModel) $r1 
(define-const var1529 Bool true) ; Statement: $z0 = r2 instanceof freemarker.template.TemplateNumberModel 
 ; Statement: if $z0 != 0 goto $r3 = (freemarker.template.TemplateNumberModel) r2 
(assert (not (= (ite var1529 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3608 var1162 (cast-from-var1189-to-var1162 var124)) ; Statement: $r3 = (freemarker.template.TemplateNumberModel) r2 
(define-const var2836 var3071 (var1362_modelToNumber/471460605 var3608 null-var2081)) ; Statement: $r4 = staticinvoke <freemarker.core.EvalUtil: java.lang.Number modelToNumber(freemarker.template.TemplateNumberModel,freemarker.core.Expression)>($r3, null) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var2123_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var1625-to-var1189=([java.lang.Object], freemarker.template.TemplateModel), cast-from-var1189-to-var1162=([freemarker.template.TemplateModel], freemarker.template.TemplateNumberModel), var1362_modelToNumber/471460605=([freemarker.template.TemplateNumberModel, freemarker.core.Expression], java.lang.Number)}
; {var1515=freemarker.core.BuiltIn, var989=r6, var2123=java.util.List, var3656=r0, var853=i0, var1625=java.lang.Object, var3817=$r1, var1189=freemarker.template.TemplateModel, var124=r2, var1529=$z0, var1162=freemarker.template.TemplateNumberModel, var3608=$r3, var3071=java.lang.Number, var1362=freemarker.core.EvalUtil, var2081=freemarker.core.Expression, var2836=$r4}
; {freemarker.core.BuiltIn=var1515, r6=var989, java.util.List=var2123, r0=var3656, i0=var853, java.lang.Object=var1625, $r1=var3817, freemarker.template.TemplateModel=var1189, r2=var124, $z0=var1529, freemarker.template.TemplateNumberModel=var1162, $r3=var3608, java.lang.Number=var3071, freemarker.core.EvalUtil=var1362, freemarker.core.Expression=var2081, $r4=var2836}
;seq 
;cnt {}
;stmts r6 := @this: freemarker.core.BuiltIn;	r0 := @parameter0: java.util.List;	i0 := @parameter1: int;	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i0);	r2 = (freemarker.template.TemplateModel) $r1;	$z0 = r2 instanceof freemarker.template.TemplateNumberModel;	if $z0 != 0 goto $r3 = (freemarker.template.TemplateNumberModel) r2;	$r3 = (freemarker.template.TemplateNumberModel) r2;	$r4 = staticinvoke <freemarker.core.EvalUtil: java.lang.Number modelToNumber(freemarker.template.TemplateNumberModel,freemarker.core.Expression)>($r3, null);	return $r4
;block_num 2