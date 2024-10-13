(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3391 0)
(declare-sort var1784 0)
(declare-sort var3823 0)
(declare-sort var2188 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOutputFormat/1287781761 (var3391 String) var3823)
(declare-fun cast-from-var3823-to-var2188 (var3823) var2188)
(declare-const null-var3391 var3391)
(declare-const null-String String)
(declare-const var1498 var3391) ; Statement: r0 := @this: freemarker.template.Configuration 
(assert (not (= var1498 null-var3391)))
(declare-const var2665 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2665 null-String)))
(assert true)
(define-const var2557 var3823 (getOutputFormat/1287781761 var1498 var2665)) ; Statement: r2 = virtualinvoke r0.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat(java.lang.String)>(r1) 
(define-const var2103 Bool false) ; Statement: $z0 = r2 instanceof freemarker.core.MarkupOutputFormat 
 ; Statement: if $z0 != 0 goto r3 = (freemarker.core.MarkupOutputFormat) r2 
(assert (not (= (ite var2103 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2309 var2188 (cast-from-var3823-to-var2188 var2557)) ; Statement: r3 = (freemarker.core.MarkupOutputFormat) r2 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getOutputFormat/1287781761=([freemarker.template.Configuration, java.lang.String], freemarker.core.OutputFormat), cast-from-var3823-to-var2188=([freemarker.core.OutputFormat], freemarker.core.MarkupOutputFormat)}
; {var3391=freemarker.template.Configuration, var1498=r0, var2665=r1, var1784=null_type, var3823=freemarker.core.OutputFormat, var2557=r2, var2103=$z0, var2188=freemarker.core.MarkupOutputFormat, var2309=r3}
; {freemarker.template.Configuration=var3391, r0=var1498, r1=var2665, null_type=var1784, freemarker.core.OutputFormat=var3823, r2=var2557, $z0=var2103, freemarker.core.MarkupOutputFormat=var2188, r3=var2309}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.template.Configuration;	r1 := @parameter0: java.lang.String;	r2 = virtualinvoke r0.<freemarker.template.Configuration: freemarker.core.OutputFormat getOutputFormat(java.lang.String)>(r1);	$z0 = r2 instanceof freemarker.core.MarkupOutputFormat;	if $z0 != 0 goto r3 = (freemarker.core.MarkupOutputFormat) r2;	r3 = (freemarker.core.MarkupOutputFormat) r2;	return r3
;block_num 2