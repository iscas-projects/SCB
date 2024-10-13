(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var922 0)
(declare-sort var287 0)
(declare-sort var939 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1128186653 (var939) String)
(define-fun endsWith/985337093 ((s String) (suffix String)) Bool (str.suffixof suffix s))
(declare-const null-var922 var922)
(declare-const null-var287 var287)
(declare-const null-var939 var939)
(declare-const var187 var922) ; Statement: r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC 
(assert (not (= var187 null-var922)))
(declare-const var1584 var287) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler 
(assert (not (= var1584 null-var287)))
(declare-const var2300 var939) ; Statement: r0 := @parameter1: java.io.File 
(assert (not (= var2300 null-var939)))
(declare-const var2696 var939) ; Statement: r7 := @parameter2: java.io.File 
(assert (not (= var2696 null-var939)))
(declare-const var1782 var939) ; Statement: r5 := @parameter3: java.io.File 
(assert (not (= var1782 null-var939)))
(assert true)
(define-const var1526 String (getName/1128186653 var2300)) ; Statement: $r1 = virtualinvoke r0.<java.io.File: java.lang.String getName()>() 
(assert true)
(define-const var1645 Bool (endsWith/985337093 var1526 ".jsp")) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jsp") 
 ; Statement: if $z0 != 0 goto r3 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler: java.lang.String mapJspToJavaName(java.io.File)>(r0) 
(assert (not (not (= (ite var1645 1 0) 0)))) ; Negate: Cond: $z0 != 0  
 ; Statement: return null 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1128186653=([java.io.File], java.lang.String), endsWith/985337093=([java.lang.String, java.lang.String], boolean)}
; {var922=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC, var187=r6, var287=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler, var1584=r2, var939=java.io.File, var2300=r0, var2696=r7, var1782=r5, var1526=$r1, var1645=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC=var922, r6=var187, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler=var287, r2=var1584, java.io.File=var939, r0=var2300, r7=var2696, r5=var1782, $r1=var1526, $z0=var1645}
;seq <java.lang.String: boolean endsWith(java.lang.String)>
;cnt {"<java.lang.String: boolean endsWith(java.lang.String)>": 1}
;stmts r6 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspC;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler;	r0 := @parameter1: java.io.File;	r7 := @parameter2: java.io.File;	r5 := @parameter3: java.io.File;	$r1 = virtualinvoke r0.<java.io.File: java.lang.String getName()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean endsWith(java.lang.String)>(".jsp");	if $z0 != 0 goto r3 = interfaceinvoke r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.jsp.JspMangler: java.lang.String mapJspToJavaName(java.io.File)>(r0);	return null
;block_num 2