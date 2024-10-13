(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1038 0)
(declare-sort var2894 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1038 var1038)
(declare-const null-var2894 var2894)
(declare-const var1204 var1038) ; Statement: r1 := @this: com.github.jknack.handlebars.internal.antlr.RuleContext 
(assert (not (= var1204 null-var1038)))
(declare-const var3803 var2894) ; Statement: r4 := @parameter0: java.util.List 
(assert (not (= var3803 null-var2894)))
(declare-const var1843 var1038) ; Statement: r3 := @parameter1: com.github.jknack.handlebars.internal.antlr.RuleContext 
(assert (not (= var1843 null-var1038)))
(define-const var80 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var80)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var80!1 String)
(assert (= var80!1 ""))
(define-const var2013 var1038 var1204) ; Statement: r7 = r1 
(assert true)
;(assert (append/672562846 var80!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var80!2 String)
(assert (= var80!2 (str.++ var80!1 "[")))
(assert true) ; Non Conditional
 ; Statement: if r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= var2013 null-var1038)) ; Cond: r7 == null 
(assert true)
;(assert (append/672562846 var80!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var80!3 String)
(assert (= var80!3 (str.++ var80!2 "]")))
(assert true)
(define-const var2212 String (toString/-2075883882 var80!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1038=com.github.jknack.handlebars.internal.antlr.RuleContext, var1204=r1, var2894=java.util.List, var3803=r4, var1843=r3, var80=$r0, var2013=r7, var2212=$r2}
; {com.github.jknack.handlebars.internal.antlr.RuleContext=var1038, r1=var1204, java.util.List=var2894, r4=var3803, r3=var1843, $r0=var80, r7=var2013, $r2=var2212}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.github.jknack.handlebars.internal.antlr.RuleContext;	r4 := @parameter0: java.util.List;	r3 := @parameter1: com.github.jknack.handlebars.internal.antlr.RuleContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r7 = r1;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	if r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3