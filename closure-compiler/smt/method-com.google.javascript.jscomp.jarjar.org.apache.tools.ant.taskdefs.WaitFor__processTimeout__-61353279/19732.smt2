(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1577 0)
(declare-sort var2308 0)
(declare-sort var1276 0)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskName/-1475415957 (var2308) String)
(declare-fun cast-from-var1577-to-var2308 (var1577) var2308)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1039617696 (var1276 String Int) void)
(declare-fun cast-from-var1577-to-var1276 (var1577) var1276)
(declare-fun timeoutProperty/294552120 (var1577) String)
(declare-const null-var1577 var1577)
(declare-const null-String String)
(declare-const var2477 var1577) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor 
(assert (not (= var2477 null-var1577)))
(define-const var1114 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1114)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1114!1 String)
(assert (= var1114!1 ""))
(assert true)
(define-const var1895 String (getTaskName/-1475415957 (cast-from-var1577-to-var2308 var2477))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: java.lang.String getTaskName()>() 
(assert true)
(define-const var1101 String (append/672562846 var1114!1 var1895)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1114!2 String)
(assert (= var1114!2 (str.++ var1114!1 var1895)))
(assert true)
(define-const var598 String (append/672562846 var1101 ": timeout")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": timeout") 
(declare-const var1101!1 String)
(assert (= var1101!1 (str.++ var1101 ": timeout")))
(assert true)
(define-const var2333 String (toString/-2075883882 var598)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1039617696 (cast-from-var1577-to-var1276 var2477) var2333 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: void log(java.lang.String,int)>($r5, 3) 

(declare-const var2477!1 var1577)
(declare-const var2333!1 String)
(declare-const var3151 Int)
(define-const var267 String (timeoutProperty/294552120 var2477!1)) ; Statement: $r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: java.lang.String timeoutProperty> 
 ; Statement: if $r6 == null goto return 
(assert (= var267 null-String)) ; Cond: $r6 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskName/-1475415957=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase], java.lang.String), cast-from-var1577-to-var2308=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1039617696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, java.lang.String, int], void), cast-from-var1577-to-var1276=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent), timeoutProperty/294552120=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor], java.lang.String)}
; {var1577=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor, var2477=r0, var1114=$r1, var2308=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase, var1895=$r2, var1101=$r3, var598=$r4, var2333=$r5, var1276=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var3151=3, var267=$r6, var1381=null_type}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor=var1577, r0=var2477, $r1=var1114, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase=var2308, $r2=var1895, $r3=var1101, $r4=var598, $r5=var2333, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1276, 3=var3151, $r6=var267, null_type=var1381}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: java.lang.String getTaskName()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": timeout");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: void log(java.lang.String,int)>($r5, 3);	$r6 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: java.lang.String timeoutProperty>;	if $r6 == null goto return;	return
;block_num 2