(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var418 0)
(declare-sort var37 0)
(declare-sort var3249 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPlainTextContent/337491010 (var37) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var418 var418)
(declare-const null-var37 var37)
(declare-const null-String String)
(declare-const var1900 var418) ; Statement: r3 := @this: freemarker.core.CommonMarkupOutputFormat 
(assert (not (= var1900 null-var418)))
(declare-const var1273 var37) ; Statement: r0 := @parameter0: freemarker.core.CommonTemplateMarkupOutputModel 
(assert (not (= var1273 null-var37)))
(assert true)
(define-const var1857 String (getPlainTextContent/337491010 var1273)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getPlainTextContent()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>() 
(assert (not (= var1857 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var1369 Int (length/-134980193 var1857)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 0 goto $z0 = 0 
(assert (not (= var1369 0))) ; Cond: $i1 != 0 
(define-const var2433 Bool (ite (= 1 0) true false)) ; Statement: $z0 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getPlainTextContent/337491010=([freemarker.core.CommonTemplateMarkupOutputModel], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var418=freemarker.core.CommonMarkupOutputFormat, var1900=r3, var37=freemarker.core.CommonTemplateMarkupOutputModel, var1273=r0, var1857=r1, var3249=null_type, var1369=$i1, var2433=$z0}
; {freemarker.core.CommonMarkupOutputFormat=var418, r3=var1900, freemarker.core.CommonTemplateMarkupOutputModel=var37, r0=var1273, r1=var1857, null_type=var3249, $i1=var1369, $z0=var2433}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: freemarker.core.CommonMarkupOutputFormat;	r0 := @parameter0: freemarker.core.CommonTemplateMarkupOutputModel;	r1 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getPlainTextContent()>();	if r1 == null goto $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 != 0 goto $z0 = 0;	$z0 = 0;	return $z0
;block_num 4