(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2399 0)
(declare-sort var138 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getDescription/996028399 (var2399) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun messageWithoutStackTop/1424937385 (var2399) String)
(declare-fun getFTLInstructionStackTopFew/-1875609904 (var2399) String)
(declare-fun message/1424937385 (var2399) String)
(declare-const null-var2399 var2399)
(declare-const null-String String)
(declare-const var2540 var2399) ; Statement: r0 := @this: freemarker.template.TemplateException 
(assert (not (= var2540 null-var2399)))
(assert true)
(define-const var2335 String (getDescription/996028399 var2540)) ; Statement: r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert (not (= var2335 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var2522 Int (length/-134980193 var2335)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 == 0 goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>() 
(assert (not (= var2522 0))) ; Negate: Cond: $i1 == 0  
(declare-const var2540!1 var2399)
(assert (not (= var2540!1 null-var2399)))
(assert (= (messageWithoutStackTop/1424937385 var2540!1) var2335)) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = r1 
 ; Statement: goto [?= $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var279 String (getFTLInstructionStackTopFew/-1875609904 var2540!1)) ; Statement: $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>() 
 ; Statement: if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(assert (= var279 null-String)) ; Cond: $r29 == null 
(define-const var2597 String (messageWithoutStackTop/1424937385 var2540!1)) ; Statement: $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> 
(declare-const var2540!2 var2399)
(assert (not (= var2540!2 null-var2399)))
(assert (= (message/1424937385 var2540!2) var2597)) ; Statement: r0.<freemarker.template.TemplateException: java.lang.String message> = $r3 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getDescription/996028399=([freemarker.template.TemplateException], java.lang.String), length/-134980193=([java.lang.String], int), messageWithoutStackTop/1424937385=([freemarker.template.TemplateException], java.lang.String), getFTLInstructionStackTopFew/-1875609904=([freemarker.template.TemplateException], java.lang.String), message/1424937385=([freemarker.template.TemplateException], java.lang.String)}
; {var2399=freemarker.template.TemplateException, var2540=r0, var2335=r1, var138=null_type, var2522=$i1, var279=$r29, var2597=$r3}
; {freemarker.template.TemplateException=var2399, r0=var2540, r1=var2335, null_type=var138, $i1=var2522, $r29=var279, $r3=var2597}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r0 := @this: freemarker.template.TemplateException;	r1 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getDescription()>();	if r1 == null goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 == 0 goto $r2 = virtualinvoke r0.<freemarker.template.TemplateException: java.lang.Throwable getCause()>();	r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop> = r1;	goto [?= $r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>()];	$r29 = specialinvoke r0.<freemarker.template.TemplateException: java.lang.String getFTLInstructionStackTopFew()>();	if $r29 == null goto $r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	$r3 = r0.<freemarker.template.TemplateException: java.lang.String messageWithoutStackTop>;	r0.<freemarker.template.TemplateException: java.lang.String message> = $r3;	return
;block_num 6