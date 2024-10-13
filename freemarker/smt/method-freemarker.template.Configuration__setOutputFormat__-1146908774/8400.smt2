(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var56 0)
(declare-sort var3222 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOutputFormat/-1058997668 (var56) var3222)
(declare-fun outputFormat/198980522 (var56) var3222)
(declare-fun outputFormatExplicitlySet/198980522 (var56) Bool)
(declare-const null-var56 var56)
(declare-const null-var3222 var3222)
(declare-const var3260 var56) ; Statement: r1 := @this: freemarker.template.Configuration 
(assert (not (= var3260 null-var56)))
(declare-const var2713 var3222) ; Statement: r0 := @parameter0: freemarker.core.OutputFormat 
(assert (not (= var2713 null-var3222)))
 ; Statement: if r0 != null goto r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>() 
(assert (not (= var2713 null-var3222))) ; Cond: r0 != null 
(assert true)
(define-const var2967 var3222 (getOutputFormat/-1058997668 var3260)) ; Statement: r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>() 
(declare-const var3260!1 var56)
(assert (not (= var3260!1 null-var56)))
(assert (= (outputFormat/198980522 var3260!1) var2713)) ; Statement: r1.<freemarker.template.Configuration: freemarker.core.OutputFormat outputFormat> = r0 
(declare-const var3260!2 var56)
(assert (not (= var3260!2 null-var56)))
(assert (= (outputFormatExplicitlySet/198980522 var3260!2) (ite (= 1 1) true false))) ; Statement: r1.<freemarker.template.Configuration: boolean outputFormatExplicitlySet> = 1 
 ; Statement: if r2 == r0 goto return 
(assert (= var2967 var2713)) ; Cond: r2 == r0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getOutputFormat/-1058997668=([freemarker.template.Configuration], freemarker.core.OutputFormat), outputFormat/198980522=([freemarker.template.Configuration], freemarker.core.OutputFormat), outputFormatExplicitlySet/198980522=([freemarker.template.Configuration], boolean)}
; {var56=freemarker.template.Configuration, var3260=r1, var3222=freemarker.core.OutputFormat, var2713=r0, var2967=r2}
; {freemarker.template.Configuration=var56, r1=var3260, freemarker.core.OutputFormat=var3222, r0=var2713, r2=var2967}
;seq 
;cnt {}
;stmts r1 := @this: freemarker.template.Configuration;	r0 := @parameter0: freemarker.core.OutputFormat;	if r0 != null goto r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>();	r2 = virtualinvoke r1.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat()>();	r1.<freemarker.template.Configuration: freemarker.core.OutputFormat outputFormat> = r0;	r1.<freemarker.template.Configuration: boolean outputFormatExplicitlySet> = 1;	if r2 == r0 goto return;	return
;block_num 3