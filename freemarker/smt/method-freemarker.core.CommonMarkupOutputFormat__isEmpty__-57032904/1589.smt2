(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1774 0)
(declare-sort var687 0)
(declare-sort var3055 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPlainTextContent/337491010 (var687) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-const null-var1774 var1774)
(declare-const null-var687 var687)
(declare-const null-String String)
(declare-const var579 var1774) ; Statement: r3 := @this: freemarker.core.CommonMarkupOutputFormat 
(assert (not (= var579 null-var1774)))
(declare-const var2346 var687) ; Statement: r0 := @parameter0: freemarker.core.CommonTemplateMarkupOutputModel 
(assert (not (= var2346 null-var687)))
(assert true)
(define-const var276 String (getPlainTextContent/337491010 var2346)) ; Statement: r1 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getPlainTextContent()>() 
 ; Statement: if r1 == null goto $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>() 
(assert (not (= var276 null-String))) ; Negate: Cond: r1 == null  
(assert true)
(define-const var2254 Int (length/-134980193 var276)) ; Statement: $i1 = virtualinvoke r1.<java.lang.String: int length()>() 
 ; Statement: if $i1 != 0 goto $z0 = 0 
(assert (not (not (= var2254 0)))) ; Negate: Cond: $i1 != 0  
(define-const var3330 Bool (ite (= 1 1) true false)) ; Statement: $z0 = 1 
 ; Statement: goto [?= return $z0] 
(assert true) ; Non Conditional
 ; Statement: return $z0 
(check-sat)
(get-model)
(get-unsat-core)
; {getPlainTextContent/337491010=([freemarker.core.CommonTemplateMarkupOutputModel], java.lang.String), length/-134980193=([java.lang.String], int)}
; {var1774=freemarker.core.CommonMarkupOutputFormat, var579=r3, var687=freemarker.core.CommonTemplateMarkupOutputModel, var2346=r0, var276=r1, var3055=null_type, var2254=$i1, var3330=$z0}
; {freemarker.core.CommonMarkupOutputFormat=var1774, r3=var579, freemarker.core.CommonTemplateMarkupOutputModel=var687, r0=var2346, r1=var276, null_type=var3055, $i1=var2254, $z0=var3330}
;seq <java.lang.String: int length()>
;cnt {"<java.lang.String: int length()>": 1}
;stmts r3 := @this: freemarker.core.CommonMarkupOutputFormat;	r0 := @parameter0: freemarker.core.CommonTemplateMarkupOutputModel;	r1 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getPlainTextContent()>();	if r1 == null goto $r2 = virtualinvoke r0.<freemarker.core.CommonTemplateMarkupOutputModel: java.lang.String getMarkupContent()>();	$i1 = virtualinvoke r1.<java.lang.String: int length()>();	if $i1 != 0 goto $z0 = 0;	$z0 = 1;	goto [?= return $z0];	return $z0
;block_num 4