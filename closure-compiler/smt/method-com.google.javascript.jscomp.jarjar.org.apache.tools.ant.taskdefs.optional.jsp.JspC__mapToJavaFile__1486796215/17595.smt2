(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2002 0)
(declare-sort var3121 0)
(declare-sort var1056 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var1056) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-fun var3121_mapJspToJavaName/421073359 (var3121 var1056) String)
(declare-fun var1056-init () var1056)
(declare-fun <init>/-1833447926 (var1056 var1056 String) void)
(declare-const null-var2002 var2002)
(declare-const null-var3121 var3121)
(declare-const null-var1056 var1056)
(declare-const var2508 var2002) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC 
(assert (not (= var2508 null-var2002)))
(declare-const var2309 var3121) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler 
(assert (not (= var2309 null-var3121)))
(declare-const var1831 var1056) ; Statement: r0 := @parameter1: java.io.File 
(assert (not (= var1831 null-var1056)))
(declare-const var1564 var1056) ; Statement: r7 := @parameter2: java.io.File 
(assert (not (= var1564 null-var1056)))
(declare-const var396 var1056) ; Statement: r5 := @parameter3: java.io.File 
(assert (not (= var396 null-var1056)))
(assert true)
(define-const var3483 String (getName/1128186653 var1831)) ; Statement: $r1 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var2850 Bool (endsWith/985337093 var3483 ".jsp")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jsp") 
 ; Statement: if $z0 != 0 goto r3 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler: java.lang.String mapJspToJavaName(java.io.File)>(r0) 
(assert (not (= (ite var2850 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3516 String (var3121_mapJspToJavaName/421073359 var2309 var1831)) ; Statement: r3 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler: java.lang.String mapJspToJavaName(java.io.File)>(r0) 
(define-const var645 var1056 var1056-init) ; Statement: $r4 = new java.io.File 
(assert true)
;(assert (<init>/-1833447926 var645 var396 var3516)) ; Statement: specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>(r5, r3) 

(declare-const var645!1 var1056)
(declare-const var396!1 var1056)
(declare-const var3516!1 String)
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean), var3121_mapJspToJavaName/421073359=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler, java.io.File], java.lang.String), var1056-init=([], java.io.File), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var2002=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC, var2508=r6, var3121=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler, var2309=r2, var1056=java.io.File, var1831=r0, var1564=r7, var396=r5, var3483=$r1, var2850=$z0, var3516=r3, var645=$r4}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC=var2002, r6=var2508, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler=var3121, r2=var2309, java.io.File=var1056, r0=var1831, r7=var1564, r5=var396, $r1=var3483, $z0=var2850, r3=var3516, $r4=var645}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler;	r0 := @parameter1: java.io.File;	r7 := @parameter2: java.io.File;	r5 := @parameter3: java.io.File;	$r1 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jsp");	if $z0 != 0 goto r3 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler: java.lang.String mapJspToJavaName(java.io.File)>(r0);	r3 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler: java.lang.String mapJspToJavaName(java.io.File)>(r0);	$r4 = new java.io.File;	specialinvoke $r4.<java.io.File: void <init>(java.io.File,java.lang.String)>(r5, r3);	return $r4
;block_num 2