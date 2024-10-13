(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1894 0)
(declare-sort var2520 0)
(declare-sort var1669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPlainTextContent/337491010 (var2520) String)
(declare-fun getMarkupContent/327641957 (var2520) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1894 var1894)
(declare-const null-var2520 var2520)
(declare-const null-String String)
(declare-const var1885 var1894) ; Statement: r3 := @this: freemarker.core.CommonMarkupOutputFormat 
(assert (not (= var1885 null-var1894)))
(declare-const var3467 var2520) ; Statement: r0 := @parameter0: freemarker.core.CommonTemplateMarkupOutputModel 
(assert (not (= var3467 null-var2520)))
(assert true)
(define-const var644 String (getPlainTextContent/337491010 var3467)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getPlainTextContent()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>() 
(assert (= var644 null-String)) ; Cond: r1 == null 
(assert true)
(define-const var1516 String (getMarkupContent/327641957 var3467)) ; Statement: $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>() 
(assert true)
(define-const var1737 Int (length/-134980193 var1516)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
 ; Statement: if $i0 != 0 goto $z1 = 0 
(assert (not (not (= var1737 0)))) ; Negate: Cond: $i0 != 0  
(define-const var532 Bool (ite (= 1 1) true false)) ; Statement: $z1 = 1 
 ; Statement: goto [?= return $z1] 
(assert true) ; Non Conditional
 ; Statement: return $z1 
(check-sat)
(get-model)
(get-unsat-core)
; {getPlainTextContent/337491010=([freemarker.core.CommonTemplateMarkupOutputModel], java.lang.String), getMarkupContent/327641957=([freemarker.core.CommonTemplateMarkupOutputModel], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1894=freemarker.core.CommonMarkupOutputFormat, var1885=r3, var2520=freemarker.core.CommonTemplateMarkupOutputModel, var3467=r0, var644=r1, var1669=null_type, var1516=$r2, var1737=$i0, var532=$z1}
; {freemarker.core.CommonMarkupOutputFormat=var1894, r3=var1885, freemarker.core.CommonTemplateMarkupOutputModel=var2520, r0=var3467, r1=var644, null_type=var1669, $r2=var1516, $i0=var1737, $z1=var532}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: freemarker.core.CommonMarkupOutputFormat;	r0 := @parameter0: freemarker.core.CommonTemplateMarkupOutputModel;	r1 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getPlainTextContent()>();	if r1 == null goto $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>();	$r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	if $i0 != 0 goto $z1 = 0;	$z1 = 1;	goto [?= return $z1];	return $z1
;block_num 4