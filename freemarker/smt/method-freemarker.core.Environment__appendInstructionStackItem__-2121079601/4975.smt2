(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var71 0)
(declare-sort var3052 0)
(declare-sort var476 0)
(declare-sort var2217 0)
(declare-sort var920 0)
(declare-sort var3834 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/-2015925183 (var71) String)
(declare-fun var3052_shorten/424324584 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var2217_getEnclosingMacro/-221753043 (var71) var476)
(declare-fun getTemplate/-542059899 (var3834) var920)
(declare-fun cast-from-var71-to-var3834 (var71) var3834)
(declare-fun beginLine/-500950432 (var3834) Int)
(declare-fun beginColumn/-500950432 (var3834) Int)
(declare-fun var3052_formatLocationForEvaluationError/-1945325934 (var920 Int Int) String)
(declare-const null-var71 var71)
(declare-const null-String String)
(declare-const null-var476 var476)
(declare-const var1762 var71) ; Statement: r1 := @parameter0: freemarker.core.TemplateElement 
(assert (not (= var1762 null-var71)))
(declare-const var2628 String) ; Statement: r0 := @parameter1: java.lang.StringBuilder 
(assert (not (= var2628 null-String)))
(assert true)
(define-const var3175 String (getDescription/-2015925183 var1762)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.TemplateElement: java.lang.String getDescription()>() 
(define-const var627 String (var3052_shorten/424324584 var3175 40)) ; Statement: $r3 = staticinvoke <freemarker.core._MessageUtil: java.lang.String shorten(java.lang.String,int)>($r2, 40) 
(assert true)
;(assert (append/672562846 var2628 var627)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2628!1 String)
(assert (= var2628!1 (str.++ var2628 var627)))
(assert true)
;(assert (append/672562846 var2628!1 "  [")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  [") 
(declare-const var2628!2 String)
(assert (= var2628!2 (str.++ var2628!1 "  [")))
(define-const var214 var476 (var2217_getEnclosingMacro/-221753043 var1762)) ; Statement: r4 = staticinvoke <freemarker.core.Environment: freemarker.core.Macro getEnclosingMacro(freemarker.core.TemplateElement)>(r1) 
 ; Statement: if r4 == null goto $r5 = virtualinvoke r1.<freemarker.core.TemplateElement: freemarker.template.Template getTemplate()>() 
(assert (= var214 null-var476)) ; Cond: r4 == null 
(assert true)
(define-const var919 var920 (getTemplate/-542059899 (cast-from-var71-to-var3834 var1762))) ; Statement: $r5 = virtualinvoke r1.<freemarker.core.TemplateElement: freemarker.template.Template getTemplate()>() 
(define-const var3865 Int (beginLine/-500950432 (cast-from-var71-to-var3834 var1762))) ; Statement: $i1 = r1.<freemarker.core.TemplateElement: int beginLine> 
(define-const var1319 Int (beginColumn/-500950432 (cast-from-var71-to-var3834 var1762))) ; Statement: $i0 = r1.<freemarker.core.TemplateElement: int beginColumn> 
(define-const var2567 String (var3052_formatLocationForEvaluationError/-1945325934 var919 var3865 var1319)) ; Statement: $r6 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatLocationForEvaluationError(freemarker.template.Template,int,int)>($r5, $i1, $i0) 
(assert true)
;(assert (append/672562846 var2628!2 var2567)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var2628!3 String)
(assert (= var2628!3 (str.++ var2628!2 var2567)))
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var2628!3 "]")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2628!4 String)
(assert (= var2628!4 (str.++ var2628!3 "]")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/-2015925183=([freemarker.core.TemplateElement], java.lang.String), var3052_shorten/424324584=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var2217_getEnclosingMacro/-221753043=([freemarker.core.TemplateElement], freemarker.core.Macro), getTemplate/-542059899=([freemarker.core.TemplateObject], freemarker.template.Template), cast-from-var71-to-var3834=([freemarker.core.TemplateElement], freemarker.core.TemplateObject), beginLine/-500950432=([freemarker.core.TemplateObject], int), beginColumn/-500950432=([freemarker.core.TemplateObject], int), var3052_formatLocationForEvaluationError/-1945325934=([freemarker.template.Template, int, int], java.lang.String)}
; {var71=freemarker.core.TemplateElement, var1762=r1, var2628=r0, var3175=$r2, var3052=freemarker.core._MessageUtil, var627=$r3, var476=freemarker.core.Macro, var2217=freemarker.core.Environment, var214=r4, var920=freemarker.template.Template, var3834=freemarker.core.TemplateObject, var919=$r5, var3865=$i1, var1319=$i0, var2567=$r6}
; {freemarker.core.TemplateElement=var71, r1=var1762, r0=var2628, $r2=var3175, freemarker.core._MessageUtil=var3052, $r3=var627, freemarker.core.Macro=var476, freemarker.core.Environment=var2217, r4=var214, freemarker.template.Template=var920, freemarker.core.TemplateObject=var3834, $r5=var919, $i1=var3865, $i0=var1319, $r6=var2567}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r1 := @parameter0: freemarker.core.TemplateElement;	r0 := @parameter1: java.lang.StringBuilder;	$r2 = virtualinvoke r1.<freemarker.core.TemplateElement: java.lang.String getDescription()>();	$r3 = staticinvoke <freemarker.core._MessageUtil: java.lang.String shorten(java.lang.String,int)>($r2, 40);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  [");	r4 = staticinvoke <freemarker.core.Environment: freemarker.core.Macro getEnclosingMacro(freemarker.core.TemplateElement)>(r1);	if r4 == null goto $r5 = virtualinvoke r1.<freemarker.core.TemplateElement: freemarker.template.Template getTemplate()>();	$r5 = virtualinvoke r1.<freemarker.core.TemplateElement: freemarker.template.Template getTemplate()>();	$i1 = r1.<freemarker.core.TemplateElement: int beginLine>;	$i0 = r1.<freemarker.core.TemplateElement: int beginColumn>;	$r6 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatLocationForEvaluationError(freemarker.template.Template,int,int)>($r5, $i1, $i0);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	return
;block_num 3