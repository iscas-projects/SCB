(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1420 0)
(declare-sort var1491 0)
(declare-sort var605 0)
(declare-sort var2005 0)
(declare-sort var296 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var296-init () var296)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$attrName/-1743998278 (var1420) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var296 String) void)
(declare-const null-var1420 var1420)
(declare-const null-var1491 var1491)
(declare-const null-var605 var605)
(declare-const null-String String)
(declare-const var708 var1420) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4 
(assert (not (= var708 null-var1420)))
(declare-const var655 var1491) ; Statement: r14 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var655 null-var1491)))
(declare-const var830 var605) ; Statement: r2 := @parameter1: java.lang.Object 
(assert (not (= var830 null-var605)))
(declare-const var972 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var972 null-String)))
(assert true)
(define-const var3670 Bool (isEmpty/-1285796103 var972)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4: java.lang.reflect.Method val$m> 
(assert (not (= (ite var3670 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2339 var296 var296-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3092 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3092)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3092!1 String)
(assert (= var3092!1 ""))
(assert true)
(define-const var505 String (append/672562846 var3092!1 "The value \u0022\u0022 is not a legal value for attribute \u0022")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value \"\" is not a legal value for attribute \"") 
(declare-const var3092!2 String)
(assert (= var3092!2 (str.++ var3092!1 "The value \u0022\u0022 is not a legal value for attribute \u0022")))
(define-const var245 String (val$attrName/-1743998278 var708)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4: java.lang.String val$attrName> 
(assert true)
(define-const var2113 String (append/672562846 var505 var245)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var505!1 String)
(assert (= var505!1 (str.++ var505 var245)))
(assert true)
(define-const var1540 String (append/672562846 var2113 "\u0022")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"") 
(declare-const var2113!1 String)
(assert (= var2113!1 (str.++ var2113 "\u0022")))
(assert true)
(define-const var2685 String (toString/-2075883882 var1540)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var2339 var2685)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r13) 

(declare-const var2339!1 var296)
(declare-const var2685!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {isEmpty/-1285796103=([java.lang.String], boolean), var296-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), val$attrName/-1743998278=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var1420=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4, var708=r1, var1491=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var655=r14, var605=java.lang.Object, var830=r2, var972=r0, var2005=null_type, var3670=$z0, var296=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2339=$r7, var3092=$r8, var505=$r10, var245=$r9, var2113=$r11, var1540=$r12, var2685=$r13}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4=var1420, r1=var708, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1491, r14=var655, java.lang.Object=var605, r2=var830, r0=var972, null_type=var2005, $z0=var3670, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var296, $r7=var2339, $r8=var3092, $r10=var505, $r9=var245, $r11=var2113, $r12=var1540, $r13=var2685}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4;	r14 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r2 := @parameter1: java.lang.Object;	r0 := @parameter2: java.lang.String;	$z0 = virtualinvoke r0.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4: java.lang.reflect.Method val$m>;	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The value \"\" is not a legal value for attribute \"");	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$4: java.lang.String val$attrName>;	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\"");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r13);	throw $r7
;block_num 2