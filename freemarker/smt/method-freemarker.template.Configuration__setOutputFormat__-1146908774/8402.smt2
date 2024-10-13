(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3139 0)
(declare-sort var1260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOutputFormat/-1058997668 (var3139) var1260)
(declare-fun outputFormat/198980522 (var3139) var1260)
(declare-fun outputFormatExplicitlySet/198980522 (var3139) Bool)
(declare-fun clearTemplateCache/-234072150 (var3139) void)
(declare-const null-var3139 var3139)
(declare-const null-var1260 var1260)
(declare-const var1635 var3139) ; Statement: r1 := @this: freemarker.template.Configuration 
(assert (not (= var1635 null-var3139)))
(declare-const var3379 var1260) ; Statement: r0 := @parameter0: freemarker.core.OutputFormat 
(assert (not (= var3379 null-var1260)))
 ; Statement: if r0 != null goto r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>() 
(assert (not (= var3379 null-var1260))) ; Cond: r0 != null 
(assert true)
(define-const var903 var1260 (getOutputFormat/-1058997668 var1635)) ; Statement: r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>() 
(declare-const var1635!1 var3139)
(assert (not (= var1635!1 null-var3139)))
(assert (= (outputFormat/198980522 var1635!1) var3379)) ; Statement: r1.<freemarker.template.Configuration: freemarker.core.OutputFormat outputFormat> = r0 
(declare-const var1635!2 var3139)
(assert (not (= var1635!2 null-var3139)))
(assert (= (outputFormatExplicitlySet/198980522 var1635!2) (ite (= 1 1) true false))) ; Statement: r1.<freemarker.template.Configuration: boolean outputFormatExplicitlySet> = 1 
 ; Statement: if r2 == r0 goto return 
(assert (not (= var903 var3379))) ; Negate: Cond: r2 == r0  
(assert true)
;(assert (clearTemplateCache/-234072150 var1635!2)) ; Statement: virtualinvoke r1.<freemarker.template.Configuration: void clearTemplateCache()>() 

(declare-const var1635!3 var3139)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getOutputFormat/-1058997668=([freemarker.template.Configuration], freemarker.core.OutputFormat), outputFormat/198980522=([freemarker.template.Configuration], freemarker.core.OutputFormat), outputFormatExplicitlySet/198980522=([freemarker.template.Configuration], boolean), clearTemplateCache/-234072150=([freemarker.template.Configuration], void)}
; {var3139=freemarker.template.Configuration, var1635=r1, var1260=freemarker.core.OutputFormat, var3379=r0, var903=r2}
; {freemarker.template.Configuration=var3139, r1=var1635, freemarker.core.OutputFormat=var1260, r0=var3379, r2=var903}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.template.Configuration;	r0 := @parameter0: freemarker.core.OutputFormat;	if r0 != null goto r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>();	r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>();	r1.<freemarker.template.Configuration: freemarker.core.OutputFormat outputFormat> = r0;	r1.<freemarker.template.Configuration: boolean outputFormatExplicitlySet> = 1;	if r2 == r0 goto return;	virtualinvoke r1.<freemarker.template.Configuration: void clearTemplateCache()>();	return
;block_num 4