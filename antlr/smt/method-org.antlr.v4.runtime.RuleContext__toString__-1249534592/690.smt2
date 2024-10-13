(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1053 0)
(declare-sort var3141 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1053 var1053)
(declare-const null-var3141 var3141)
(declare-const var53 var1053) ; Statement: r1 := @this: org.antlr.v4.runtime.RuleContext 
(assert (not (= var53 null-var1053)))
(declare-const var531 var3141) ; Statement: r4 := @parameter0: java.util.List 
(assert (not (= var531 null-var3141)))
(declare-const var743 var1053) ; Statement: r3 := @parameter1: org.antlr.v4.runtime.RuleContext 
(assert (not (= var743 null-var1053)))
(define-const var992 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var992)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var992!1 String)
(assert (= var992!1 ""))
(define-const var2920 var1053 var53) ; Statement: r7 = r1 
(assert true)
;(assert (append/672562846 var992!1 "[")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[") 
(declare-const var992!2 String)
(assert (= var992!2 (str.++ var992!1 "[")))
(assert true) ; Non Conditional
 ; Statement: if r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(assert (= var2920 null-var1053)) ; Cond: r7 == null 
(assert true)
;(assert (append/672562846 var992!2 "]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var992!3 String)
(assert (= var992!3 (str.++ var992!2 "]")))
(assert true)
(define-const var3233 String (toString/-2075883882 var992!3)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1053=org.antlr.v4.runtime.RuleContext, var53=r1, var3141=java.util.List, var531=r4, var743=r3, var992=$r0, var2920=r7, var3233=$r2}
; {org.antlr.v4.runtime.RuleContext=var1053, r1=var53, java.util.List=var3141, r4=var531, r3=var743, $r0=var992, r7=var2920, $r2=var3233}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.antlr.v4.runtime.RuleContext;	r4 := @parameter0: java.util.List;	r3 := @parameter1: org.antlr.v4.runtime.RuleContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	r7 = r1;	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[");	if r7 == null goto virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3