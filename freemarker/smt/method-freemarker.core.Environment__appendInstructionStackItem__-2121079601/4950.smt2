(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3281 0)
(declare-sort var2627 0)
(declare-sort var369 0)
(declare-sort var101 0)
(declare-sort var2458 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/-2015925183 (var3281) String)
(declare-fun var2627_shorten/424324584 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var101_getEnclosingMacro/-221753043 (var3281) var369)
(declare-fun beginLine/-500950432 (var2458) Int)
(declare-fun cast-from-var3281-to-var2458 (var3281) var2458)
(declare-fun beginColumn/-500950432 (var2458) Int)
(declare-fun var2627_formatLocationForEvaluationError/-651800209 (var369 Int Int) String)
(declare-const null-var3281 var3281)
(declare-const null-String String)
(declare-const null-var369 var369)
(declare-const var2594 var3281) ; Statement: r1 := @parameter0: freemarker.core.TemplateElement 
(assert (not (= var2594 null-var3281)))
(declare-const var3724 String) ; Statement: r0 := @parameter1: java.lang.StringBuilder 
(assert (not (= var3724 null-String)))
(assert true)
(define-const var2723 String (getDescription/-2015925183 var2594)) ; Statement: $r2 = virtualinvoke r1.<freemarker.core.TemplateElement: java.lang.String getDescription()>() 
(define-const var3090 String (var2627_shorten/424324584 var2723 40)) ; Statement: $r3 = staticinvoke <freemarker.core._MessageUtil: java.lang.String shorten(java.lang.String,int)>($r2, 40) 
(assert true)
;(assert (append/672562846 var3724 var3090)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var3724!1 String)
(assert (= var3724!1 (str.++ var3724 var3090)))
(assert true)
;(assert (append/672562846 var3724!1 "  [")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  [") 
(declare-const var3724!2 String)
(assert (= var3724!2 (str.++ var3724!1 "  [")))
(define-const var336 var369 (var101_getEnclosingMacro/-221753043 var2594)) ; Statement: r4 = staticinvoke <freemarker.core.Environment: freemarker.core.Macro getEnclosingMacro(freemarker.core.TemplateElement)>(r1) 
 ; Statement: if r4 == null goto $r5 = virtualinvoke r1.<freemarker.core.TemplateElement: freemarker.template.Template getTemplate()>() 
(assert (not (= var336 null-var369))) ; Negate: Cond: r4 == null  
(define-const var3979 Int (beginLine/-500950432 (cast-from-var3281-to-var2458 var2594))) ; Statement: $i3 = r1.<freemarker.core.TemplateElement: int beginLine> 
(define-const var2405 Int (beginColumn/-500950432 (cast-from-var3281-to-var2458 var2594))) ; Statement: $i2 = r1.<freemarker.core.TemplateElement: int beginColumn> 
(define-const var3313 String (var2627_formatLocationForEvaluationError/-651800209 var336 var3979 var2405)) ; Statement: $r7 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatLocationForEvaluationError(freemarker.core.Macro,int,int)>(r4, $i3, $i2) 
(assert true)
;(assert (append/672562846 var3724!2 var3313)) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3724!3 String)
(assert (= var3724!3 (str.++ var3724!2 var3313)))
 ; Statement: goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]")] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var3724!3 "]")) ; Statement: virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3724!4 String)
(assert (= var3724!4 (str.++ var3724!3 "]")))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/-2015925183=([freemarker.core.TemplateElement], java.lang.String), var2627_shorten/424324584=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var101_getEnclosingMacro/-221753043=([freemarker.core.TemplateElement], freemarker.core.Macro), beginLine/-500950432=([freemarker.core.TemplateObject], int), cast-from-var3281-to-var2458=([freemarker.core.TemplateElement], freemarker.core.TemplateObject), beginColumn/-500950432=([freemarker.core.TemplateObject], int), var2627_formatLocationForEvaluationError/-651800209=([freemarker.core.Macro, int, int], java.lang.String)}
; {var3281=freemarker.core.TemplateElement, var2594=r1, var3724=r0, var2723=$r2, var2627=freemarker.core._MessageUtil, var3090=$r3, var369=freemarker.core.Macro, var101=freemarker.core.Environment, var336=r4, var2458=freemarker.core.TemplateObject, var3979=$i3, var2405=$i2, var3313=$r7}
; {freemarker.core.TemplateElement=var3281, r1=var2594, r0=var3724, $r2=var2723, freemarker.core._MessageUtil=var2627, $r3=var3090, freemarker.core.Macro=var369, freemarker.core.Environment=var101, r4=var336, freemarker.core.TemplateObject=var2458, $i3=var3979, $i2=var2405, $r7=var3313}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4}
;stmts r1 := @parameter0: freemarker.core.TemplateElement;	r0 := @parameter1: java.lang.StringBuilder;	$r2 = virtualinvoke r1.<freemarker.core.TemplateElement: java.lang.String getDescription()>();	$r3 = staticinvoke <freemarker.core._MessageUtil: java.lang.String shorten(java.lang.String,int)>($r2, 40);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("  [");	r4 = staticinvoke <freemarker.core.Environment: freemarker.core.Macro getEnclosingMacro(freemarker.core.TemplateElement)>(r1);	if r4 == null goto $r5 = virtualinvoke r1.<freemarker.core.TemplateElement: freemarker.template.Template getTemplate()>();	$i3 = r1.<freemarker.core.TemplateElement: int beginLine>;	$i2 = r1.<freemarker.core.TemplateElement: int beginColumn>;	$r7 = staticinvoke <freemarker.core._MessageUtil: java.lang.String formatLocationForEvaluationError(freemarker.core.Macro,int,int)>(r4, $i3, $i2);	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	goto [?= virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]")];	virtualinvoke r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	return
;block_num 3