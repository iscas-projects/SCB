(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1238 0)
(declare-sort var3233 0)
(declare-sort var1938 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3233-to-var1938 (var3233) var1938)
(declare-fun var1938_getAsString/1157674302 (var1938) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1238 var1238)
(declare-const null-var3233 var3233)
(declare-const var44 var1238) ; Statement: r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm 
(assert (not (= var44 null-var1238)))
(declare-const var425 var3233) ; Statement: r0 := @parameter0: freemarker.template.TemplateModel 
(assert (not (= var425 null-var3233)))
(define-const var3094 Bool true) ; Statement: $z0 = r0 instanceof freemarker.template.TemplateScalarModel 
 ; Statement: if $z0 == 0 goto $r2 = (freemarker.core.TemplateMarkupOutputModel) r0 
(assert (not (= (ite var3094 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2957 var1938 (cast-from-var3233-to-var1938 var425)) ; Statement: $r3 = (freemarker.template.TemplateScalarModel) r0 
(define-const var1433 String (var1938_getAsString/1157674302 var2957)) ; Statement: $r4 = interfaceinvoke $r3.<freemarker.template.TemplateScalarModel: java.lang.String getAsString()>() 
(assert true)
(define-const var2414 Int (length/-134980193 var1433)) ; Statement: $i0 = virtualinvoke $r4.<java.lang.String: int length()>() 
 ; Statement: goto [?= return $i0] 
(assert true) ; Non Conditional
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3233-to-var1938=([freemarker.template.TemplateModel], freemarker.template.TemplateScalarModel), var1938_getAsString/1157674302=([freemarker.template.TemplateScalarModel], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1238=freemarker.core.DefaultTruncateBuiltinAlgorithm, var44=r1, var3233=freemarker.template.TemplateModel, var425=r0, var3094=$z0, var1938=freemarker.template.TemplateScalarModel, var2957=$r3, var1433=$r4, var2414=$i0}
; {freemarker.core.DefaultTruncateBuiltinAlgorithm=var1238, r1=var44, freemarker.template.TemplateModel=var3233, r0=var425, $z0=var3094, freemarker.template.TemplateScalarModel=var1938, $r3=var2957, $r4=var1433, $i0=var2414}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r1 := @this: freemarker.core.DefaultTruncateBuiltinAlgorithm;	r0 := @parameter0: freemarker.template.TemplateModel;	$z0 = r0 instanceof freemarker.template.TemplateScalarModel;	if $z0 == 0 goto $r2 = (freemarker.core.TemplateMarkupOutputModel) r0;	$r3 = (freemarker.template.TemplateScalarModel) r0;	$r4 = interfaceinvoke $r3.<freemarker.template.TemplateScalarModel: java.lang.String getAsString()>();	$i0 = virtualinvoke $r4.<java.lang.String: int length()>();	goto [?= return $i0];	return $i0
;block_num 3