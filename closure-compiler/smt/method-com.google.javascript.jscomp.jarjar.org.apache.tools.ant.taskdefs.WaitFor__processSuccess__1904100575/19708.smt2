(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3447 0)
(declare-sort var2724 0)
(declare-sort var1909 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getTaskName/-1475415957 (var2724) String)
(declare-fun cast-from-var3447-to-var2724 (var3447) var2724)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/-1039617696 (var1909 String Int) void)
(declare-fun cast-from-var3447-to-var1909 (var3447) var1909)
(declare-const null-var3447 var3447)
(declare-const var1001 var3447) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor 
(assert (not (= var1001 null-var3447)))
(define-const var2906 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2906)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2906!1 String)
(assert (= var2906!1 ""))
(assert true)
(define-const var609 String (getTaskName/-1475415957 (cast-from-var3447-to-var2724 var1001))) ; Statement: $r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: java.lang.String getTaskName()>() 
(assert true)
(define-const var3903 String (append/672562846 var2906!1 var609)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2906!2 String)
(assert (= var2906!2 (str.++ var2906!1 var609)))
(assert true)
(define-const var2090 String (append/672562846 var3903 ": condition was met")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": condition was met") 
(declare-const var3903!1 String)
(assert (= var3903!1 (str.++ var3903 ": condition was met")))
(assert true)
(define-const var1988 String (toString/-2075883882 var2090)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/-1039617696 (cast-from-var3447-to-var1909 var1001) var1988 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: void log(java.lang.String,int)>($r5, 3) 

(declare-const var1001!1 var3447)
(declare-const var1988!1 String)
(declare-const var2888 Int)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getTaskName/-1475415957=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase], java.lang.String), cast-from-var3447-to-var2724=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/-1039617696=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, java.lang.String, int], void), cast-from-var3447-to-var1909=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent)}
; {var3447=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor, var1001=r0, var2906=$r1, var2724=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase, var609=$r2, var3903=$r3, var2090=$r4, var1988=$r5, var1909=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent, var2888=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor=var3447, r0=var1001, $r1=var2906, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.condition.ConditionBase=var2724, $r2=var609, $r3=var3903, $r4=var2090, $r5=var1988, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.ProjectComponent=var1909, 3=var2888}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: java.lang.String getTaskName()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(": condition was met");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.WaitFor: void log(java.lang.String,int)>($r5, 3);	return
;block_num 1