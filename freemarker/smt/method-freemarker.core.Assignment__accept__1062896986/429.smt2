(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3784 0)
(declare-sort var1465 0)
(declare-sort var2603 0)
(declare-sort var3410 0)
(declare-sort var2922 0)
(declare-sort var3169 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun namespaceExp/-630709164 (var3784) var2603)
(declare-fun eval/1105561875 (var2603 var1465) var3410)
(declare-fun var3169-init () var3169)
(declare-fun <init>/-21018247 (var3169 var2603 var3410 var1465) void)
(declare-const null-var3784 var3784)
(declare-const null-var1465 var1465)
(declare-const null-var2603 var2603)
(declare-const null-var2922 var2922)
(declare-const var2217 var3784) ; Statement: r0 := @this: freemarker.core.Assignment 
(assert (not (= var2217 null-var3784)))
(declare-const var3434 var1465) ; Statement: r2 := @parameter0: freemarker.core.Environment 
(assert (not (= var3434 null-var1465)))
(define-const var3585 var2603 (namespaceExp/-630709164 var2217)) ; Statement: $r1 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp> 
 ; Statement: if $r1 != null goto $r3 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp> 
(assert (not (= var3585 null-var2603))) ; Cond: $r1 != null 
(define-const var2977 var2603 (namespaceExp/-630709164 var2217)) ; Statement: $r3 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp> 
(assert true)
(define-const var3324 var3410 (eval/1105561875 var2977 var3434)) ; Statement: r44 = virtualinvoke $r3.<freemarker.core.Expression: freemarker.template.TemplateModel eval(freemarker.core.Environment)>(r2) 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3917 var2922) ; Statement: $r40 := @caughtexception 
(assert (not (= var3917 null-var2922)))
(define-const var34 var3169 var3169-init) ; Statement: $r41 = new freemarker.core.NonNamespaceException 
(define-const var1012 var2603 (namespaceExp/-630709164 var2217)) ; Statement: $r42 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp> 
(assert true)
;(assert (<init>/-21018247 var34 var1012 var3324 var3434)) ; Statement: specialinvoke $r41.<freemarker.core.NonNamespaceException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,freemarker.core.Environment)>($r42, r44, r2) 

(declare-const var34!1 var3169)
(declare-const var1012!1 var2603)
(declare-const var3324!1 var3410)
(declare-const var3434!1 var1465)
 ; Statement: throw $r41 
(check-sat)
(get-model)
(get-unsat-core)
; {namespaceExp/-630709164=([freemarker.core.Assignment], freemarker.core.Expression), eval/1105561875=([freemarker.core.Expression, freemarker.core.Environment], freemarker.template.TemplateModel), var3169-init=([], freemarker.core.NonNamespaceException), <init>/-21018247=([freemarker.core.NonNamespaceException, freemarker.core.Expression, freemarker.template.TemplateModel, freemarker.core.Environment], void)}
; {var3784=freemarker.core.Assignment, var2217=r0, var1465=freemarker.core.Environment, var3434=r2, var2603=freemarker.core.Expression, var3585=$r1, var2977=$r3, var3410=freemarker.template.TemplateModel, var3324=r44, var2922=java.lang.ClassCastException, var3917=$r40, var3169=freemarker.core.NonNamespaceException, var34=$r41, var1012=$r42}
; {freemarker.core.Assignment=var3784, r0=var2217, freemarker.core.Environment=var1465, r2=var3434, freemarker.core.Expression=var2603, $r1=var3585, $r3=var2977, freemarker.template.TemplateModel=var3410, r44=var3324, java.lang.ClassCastException=var2922, $r40=var3917, freemarker.core.NonNamespaceException=var3169, $r41=var34, $r42=var1012}
;seq 
;cnt {}
;stmts r0 := @this: freemarker.core.Assignment;	r2 := @parameter0: freemarker.core.Environment;	$r1 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp>;	if $r1 != null goto $r3 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp>;	$r3 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp>;	r44 = virtualinvoke $r3.<freemarker.core.Expression: freemarker.template.TemplateModel eval(freemarker.core.Environment)>(r2);	$r40 := @caughtexception;	$r41 = new freemarker.core.NonNamespaceException;	$r42 = r0.<freemarker.core.Assignment: freemarker.core.Expression namespaceExp>;	specialinvoke $r41.<freemarker.core.NonNamespaceException: void <init>(freemarker.core.Expression,freemarker.template.TemplateModel,freemarker.core.Environment)>($r42, r44, r2);	throw $r41
;block_num 3