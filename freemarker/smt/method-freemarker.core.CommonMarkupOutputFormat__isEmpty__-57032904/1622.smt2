(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1622 0)
(declare-sort var3321 0)
(declare-sort var1171 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPlainTextContent/337491010 (var3321) String)
(declare-fun getMarkupContent/327641957 (var3321) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1622 var1622)
(declare-const null-var3321 var3321)
(declare-const null-String String)
(declare-const var2247 var1622) ; Statement: r3 := @this: freemarker.core.CommonMarkupOutputFormat 
(assert (not (= var2247 null-var1622)))
(declare-const var2924 var3321) ; Statement: r0 := @parameter0: freemarker.core.CommonTemplateMarkupOutputModel 
(assert (not (= var2924 null-var3321)))
(assert true)
(define-const var1488 String (getPlainTextContent/337491010 var2924)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getPlainTextContent()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>() 
(assert (= var1488 null-String)) ; Cond: r1 == null 
(assert true)
(define-const var1709 String (getMarkupContent/327641957 var2924)) ; Statement: $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>() 
(assert true)
(define-const var3736 Int (length/-134980193 var1709)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $z1 = 0 
(assert (not (= var3736 0))) ; Cond: $i0 != 0 
(define-const var3508 Bool (ite (= 1 0) true false)) ; Statement: $z1 = 0 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getPlainTextContent/337491010=([freemarker.core.CommonTemplateMarkupOutputModel], java.lang.String), getMarkupContent/327641957=([freemarker.core.CommonTemplateMarkupOutputModel], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1622=freemarker.core.CommonMarkupOutputFormat, var2247=r3, var3321=freemarker.core.CommonTemplateMarkupOutputModel, var2924=r0, var1488=r1, var1171=null_type, var1709=$r2, var3736=$i0, var3508=$z1}
; {freemarker.core.CommonMarkupOutputFormat=var1622, r3=var2247, freemarker.core.CommonTemplateMarkupOutputModel=var3321, r0=var2924, r1=var1488, null_type=var1171, $r2=var1709, $i0=var3736, $z1=var3508}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: freemarker.core.CommonMarkupOutputFormat;	r0 := @parameter0: freemarker.core.CommonTemplateMarkupOutputModel;	r1 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getPlainTextContent()>();	if r1 == null goto $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>();	$r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 != 0 goto $z1 = 0;	$z1 = 0;	return $z1
;block_num 4