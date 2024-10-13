(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3116 0)
(declare-sort var221 0)
(declare-sort var3722 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/996028399 (var3116) String)
(declare-fun getCause/-638798464 (var3722) var3722)
(declare-fun cast-from-var3116-to-var3722 (var3116) var3722)
(declare-fun messageWithoutStackTop/1424937385 (var3116) String)
(declare-fun getFTLInstructionStackTopFew/-1875609904 (var3116) String)
(declare-fun message/1424937385 (var3116) String)
(declare-const null-var3116 var3116)
(declare-const null-String String)
(declare-const null-var3722 var3722)
(declare-const var873 var3116) ; Statement: r0 := @this: freemarker.template.TemplateException 
(assert (not (= var873 null-var3116)))
(assert true)
(define-const var3681 String (getDescription/996028399 var873)) ; Statement: r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert (= var3681 null-String)) ; Cond: r1 == null 
(assert true)
(define-const var2346 var3722 (getCause/-638798464 (cast-from-var3116-to-var3722 var873))) ; Statement: $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
 ; Statement: if $r2 == null goto r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]" 
(assert (= var2346 null-var3722)) ; Cond: $r2 == null 
(declare-const var873!1 var3116)
(assert (not (= var873!1 null-var3116)))
(assert (= (messageWithoutStackTop/1424937385 var873!1) "[No error description was available.]")) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]" 
(assert true) ; Non Conditional
(assert true)
(define-const var1244 String (getFTLInstructionStackTopFew/-1875609904 var873!1)) ; Statement: $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>() 
 ; Statement: if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(assert (= var1244 null-String)) ; Cond: $r29 == null 
(define-const var779 String (messageWithoutStackTop/1424937385 var873!1)) ; Statement: $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(declare-const var873!2 var3116)
(assert (not (= var873!2 null-var3116)))
(assert (= (message/1424937385 var873!2) var779)) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String message> = $r3 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/996028399=([freemarker.template.TemplateException], java.lang.String), getCause/-638798464=([java.lang.Throwable], java.lang.Throwable), cast-from-var3116-to-var3722=([freemarker.template.TemplateException], java.lang.Throwable), messageWithoutStackTop/1424937385=([freemarker.template.TemplateException], java.lang.String), getFTLInstructionStackTopFew/-1875609904=([freemarker.template.TemplateException], java.lang.String), message/1424937385=([freemarker.template.TemplateException], java.lang.String)}
; {var3116=freemarker.template.TemplateException, var873=r0, var3681=r1, var221=null_type, var3722=java.lang.Throwable, var2346=$r2, var1244=$r29, var779=$r3}
; {freemarker.template.TemplateException=var3116, r0=var873, r1=var3681, null_type=var221, java.lang.Throwable=var3722, $r2=var2346, $r29=var1244, $r3=var779}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.template.TemplateException;	r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>();	if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	if $r2 == null goto r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]";	r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = "[No error description was available.]";	$r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>();	if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	$r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	r0.<freemarker.template.TemplateException: java.lang.String message> = $r3;	return
;block_num 6