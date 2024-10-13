(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3915 0)
(declare-sort var1758 0)
(declare-sort var3623 0)
(declare-sort var898 0)
(declare-sort var2657 0)
(declare-sort var1979 0)
(declare-sort var2862 0)
(declare-sort var43 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1758_get/-1216255739 (var1758 Int) var3623)
(declare-fun cast-from-var3623-to-var898 (var3623) var898)
(declare-fun cast-from-var898-to-var2657 (var898) var2657)
(declare-fun var1979_modelToString/-420501360 (var2657 var2862 var43) String)
(declare-const null-var3915 var3915)
(declare-const null-var1758 var1758)
(declare-const null-Int Int)
(declare-const null-var2862 var2862)
(declare-const null-var43 var43)
(declare-const var3364 var3915) ; Statement: r6 := @this: freemarker.core.BuiltIn 
(assert (not (= var3364 null-var3915)))
(declare-const var291 var1758) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var291 null-var1758)))
(declare-const var2673 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var2673 null-Int)))
(define-const var761 var3623 (var1758_get/-1216255739 var291 var2673)) ; Statement: $r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i0) 
(define-const var1992 var898 (cast-from-var3623-to-var898 var761)) ; Statement: r2 = (freemarker.template.TemplateModel) $r1 
(define-const var1231 Bool true) ; Statement: $z0 = r2 instanceof freemarker.template.TemplateScalarModel 
 ; Statement: if $z0 != 0 goto $r3 = (freemarker.template.TemplateScalarModel) r2 
(assert (not (= (ite var1231 1 0) 0))) ; Cond: $z0 != 0 
(define-const var77 var2657 (cast-from-var898-to-var2657 var1992)) ; Statement: $r3 = (freemarker.template.TemplateScalarModel) r2 
(define-const var2377 String (var1979_modelToString/-420501360 var77 null-var2862 null-var43)) ; Statement: $r4 = staticinvoke <freemarker.core.EvalUtil: java.lang.String modelToString(freemarker.template.TemplateScalarModel,freemarker.core.Expression,freemarker.core.Environment)>($r3, null, null) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var1758_get/-1216255739=([java.util.List, int], java.lang.Object), cast-from-var3623-to-var898=([java.lang.Object], freemarker.template.TemplateModel), cast-from-var898-to-var2657=([freemarker.template.TemplateModel], freemarker.template.TemplateScalarModel), var1979_modelToString/-420501360=([freemarker.template.TemplateScalarModel, freemarker.core.Expression, freemarker.core.Environment], java.lang.String)}
; {var3915=freemarker.core.BuiltIn, var3364=r6, var1758=java.util.List, var291=r0, var2673=i0, var3623=java.lang.Object, var761=$r1, var898=freemarker.template.TemplateModel, var1992=r2, var1231=$z0, var2657=freemarker.template.TemplateScalarModel, var77=$r3, var1979=freemarker.core.EvalUtil, var2862=freemarker.core.Expression, var43=freemarker.core.Environment, var2377=$r4}
; {freemarker.core.BuiltIn=var3915, r6=var3364, java.util.List=var1758, r0=var291, i0=var2673, java.lang.Object=var3623, $r1=var761, freemarker.template.TemplateModel=var898, r2=var1992, $z0=var1231, freemarker.template.TemplateScalarModel=var2657, $r3=var77, freemarker.core.EvalUtil=var1979, freemarker.core.Expression=var2862, freemarker.core.Environment=var43, $r4=var2377}
;seq 
;cnt {}
;stmts r6 := @this: freemarker.core.BuiltIn;	r0 := @parameter0: java.util.List;	i0 := @parameter1: int;	$r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(i0);	r2 = (freemarker.template.TemplateModel) $r1;	$z0 = r2 instanceof freemarker.template.TemplateScalarModel;	if $z0 != 0 goto $r3 = (freemarker.template.TemplateScalarModel) r2;	$r3 = (freemarker.template.TemplateScalarModel) r2;	$r4 = staticinvoke <freemarker.core.EvalUtil: java.lang.String modelToString(freemarker.template.TemplateScalarModel,freemarker.core.Expression,freemarker.core.Environment)>($r3, null, null);	return $r4
;block_num 2