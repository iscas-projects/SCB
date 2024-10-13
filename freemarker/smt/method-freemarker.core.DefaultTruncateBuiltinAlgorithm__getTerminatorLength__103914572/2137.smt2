(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3508 0)
(declare-sort var400 0)
(declare-sort var940 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var400-to-var940 (var400) var940)
(declare-fun getMTerminatorLength/-1575643465 (var3508 var940) Int)
(declare-const null-var3508 var3508)
(declare-const null-var400 var400)
(declare-const var2130 var3508) ; Statement: r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm 
(assert (not (= var2130 null-var3508)))
(declare-const var390 var400) ; Statement: r0 := @parameter0: freemarker.template.TemplateModel 
(assert (not (= var390 null-var400)))
(define-const var1986 Bool true) ; Statement: $z0 = r0 instanceof freemarker.template.TemplateScalarModel 
 ; Statement: if $z0 == 0 goto $r2 = (freemarker.core.TemplateMarkupOutputModel) r0 
(assert (= (ite var1986 1 0) 0)) ; Cond: $z0 == 0 
(define-const var268 var940 (cast-from-var400-to-var940 var390)) ; Statement: $r2 = (freemarker.core.TemplateMarkupOutputModel) r0 
(assert true)
(define-const var1668 Int (getMTerminatorLength/-1575643465 var2130 var268)) ; Statement: $i0 = virtualinvoke r1.<freemarker.core.DefaultTruncateBuiltinAlgorithm: int getMTerminatorLength(freemarker.core.TemplateMarkupOutputModel)>($r2) 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var400-to-var940=([freemarker.template.TemplateModel], freemarker.core.TemplateMarkupOutputModel), getMTerminatorLength/-1575643465=([freemarker.core.DefaultTruncateBuiltinAlgorithm, freemarker.core.TemplateMarkupOutputModel], int)}
; {var3508=freemarker.core.DefaultTruncateBuiltinAlgorithm, var2130=r1, var400=freemarker.template.TemplateModel, var390=r0, var1986=$z0, var940=freemarker.core.TemplateMarkupOutputModel, var268=$r2, var1668=$i0}
; {freemarker.core.DefaultTruncateBuiltinAlgorithm=var3508, r1=var2130, freemarker.template.TemplateModel=var400, r0=var390, $z0=var1986, freemarker.core.TemplateMarkupOutputModel=var940, $r2=var268, $i0=var1668}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm;	r0 := @parameter0: freemarker.template.TemplateModel;	$z0 = r0 instanceof freemarker.template.TemplateScalarModel;	if $z0 == 0 goto $r2 = (freemarker.core.TemplateMarkupOutputModel) r0;	$r2 = (freemarker.core.TemplateMarkupOutputModel) r0;	$i0 = virtualinvoke r1.<freemarker.core.DefaultTruncateBuiltinAlgorithm: int getMTerminatorLength(freemarker.core.TemplateMarkupOutputModel)>($r2);	return $i0
;block_num 3