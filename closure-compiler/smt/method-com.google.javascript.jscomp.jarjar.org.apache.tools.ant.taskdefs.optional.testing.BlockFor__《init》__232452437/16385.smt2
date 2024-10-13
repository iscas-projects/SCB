(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1959 0)
(declare-sort var3376 0)
(declare-sort var3372 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-246330522 (var3376 String) void)
(declare-fun cast-from-var1959-to-var3376 (var1959) var3376)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskName/-1475415957 (var3372) String)
(declare-fun cast-from-var1959-to-var3372 (var1959) var3372)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun text/511193676 (var1959) String)
(declare-const null-var1959 var1959)
(declare-const var1442 var1959) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor 
(assert (not (= var1442 null-var1959)))
(assert true)
;(assert (<init>/-246330522 (cast-from-var1959-to-var3376 var1442) "blockfor")) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: void <init>(java.lang.String)>("blockfor") 

(declare-const var1442!1 var1959)
(declare-const var1219 String)
(define-const var1149 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1149)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1149!1 String)
(assert (= var1149!1 ""))
(assert true)
(define-const var1925 String (getTaskName/-1475415957 (cast-from-var1959-to-var3372 var1442!1))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor: java.lang.String getTaskName()>() 
(assert true)
(define-const var3531 String (append/672562846 var1149!1 var1925)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1149!2 String)
(assert (= var1149!2 (str.++ var1149!1 var1925)))
(assert true)
(define-const var532 String (append/672562846 var3531 " timed out")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" timed out") 
(declare-const var3531!1 String)
(assert (= var3531!1 (str.++ var3531 " timed out")))
(assert true)
(define-const var3647 String (toString/-2075883882 var532)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(declare-const var1442!2 var1959)
(assert (not (= var1442!2 null-var1959)))
(assert (= (text/511193676 var1442!2) var3647)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor: java.lang.String text> = $r5 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-246330522=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor, java.lang.String], void), cast-from-var1959-to-var3376=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskName/-1475415957=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase], java.lang.String), cast-from-var1959-to-var3372=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), text/511193676=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor], java.lang.String)}
; {var1959=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor, var1442=r0, var3376=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor, var1219="blockfor", var1149=$r1, var3372=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase, var1925=$r2, var3531=$r3, var532=$r4, var3647=$r5}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor=var1959, r0=var1442, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor=var3376, "blockfor"=var1219, $r1=var1149, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase=var3372, $r2=var1925, $r3=var3531, $r4=var532, $r5=var3647}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: void <init>(java.lang.String)>("blockfor");	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor: java.lang.String getTaskName()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" timed out");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.testing.BlockFor: java.lang.String text> = $r5;	return
;block_num 1