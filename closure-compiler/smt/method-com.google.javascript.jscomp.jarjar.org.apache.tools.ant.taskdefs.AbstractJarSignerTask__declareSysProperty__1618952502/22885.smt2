(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3167 0)
(declare-sort var2633 0)
(declare-sort var3643 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getContent/1458470026 (var3643) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addValue/1441305810 (var3167 var2633 String) void)
(declare-const null-var3167 var3167)
(declare-const null-var2633 var2633)
(declare-const null-var3643 var3643)
(declare-const var1892 var3167) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask 
(assert (not (= var1892 null-var3167)))
(declare-const var2051 var2633) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask 
(assert (not (= var2051 null-var2633)))
(declare-const var3414 var3643) ; Statement: r3 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable 
(assert (not (= var3414 null-var3643)))
(define-const var2458 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2458)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2458!1 String)
(assert (= var2458!1 ""))
(assert true)
(define-const var762 String (append/672562846 var2458!1 "-J-D")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-J-D") 
(declare-const var2458!2 String)
(assert (= var2458!2 (str.++ var2458!1 "-J-D")))
(assert true)
(define-const var3168 String (getContent/1458470026 var3414)) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable: java.lang.String getContent()>() 
(assert true)
(define-const var689 String (append/672562846 var762 var3168)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var762!1 String)
(assert (= var762!1 (str.++ var762 var3168)))
(assert true)
(define-const var3247 String (toString/-2075883882 var689)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addValue/1441305810 var1892 var2051 var3247)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask: void addValue(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask,java.lang.String)>(r1, $r7) 

(declare-const var1892!1 var3167)
(declare-const var2051!1 var2633)
(declare-const var3247!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getContent/1458470026=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addValue/1441305810=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, java.lang.String], void)}
; {var3167=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask, var1892=r0, var2633=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask, var2051=r1, var3643=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable, var3414=r3, var2458=$r2, var762=$r5, var3168=$r4, var689=$r6, var3247=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask=var3167, r0=var1892, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask=var2633, r1=var2051, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable=var3643, r3=var3414, $r2=var2458, $r5=var762, $r4=var3168, $r6=var689, $r7=var3247}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask;	r3 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-J-D");	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Environment$Variable: java.lang.String getContent()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.AbstractJarSignerTask: void addValue(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecTask,java.lang.String)>(r1, $r7);	return
;block_num 1