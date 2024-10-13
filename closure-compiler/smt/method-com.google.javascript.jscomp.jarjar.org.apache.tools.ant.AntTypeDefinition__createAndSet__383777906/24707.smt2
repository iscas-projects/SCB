(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var233 0)
(declare-sort var1691 0)
(declare-sort var3340 0)
(declare-sort var3700 0)
(declare-sort var933 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3700-init () var3700)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1461999723 (var233) String)
(declare-fun append/-1031950772 (String var933) String)
(declare-fun cast-from-ClassObject-to-var933 (ClassObject) var933)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3700 String) void)
(declare-const null-var233 var233)
(declare-const null-var1691 var1691)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3340 var3340)
(declare-const var340 var233) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var340 null-var233)))
(declare-const var1288 var1691) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var1288 null-var1691)))
(declare-const var1306 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var1306 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1084 var3340) ; Statement: $r13 := @caughtexception 
(assert (not (= var1084 null-var3340)))
(define-const var568 var3700 var3700-init) ; Statement: $r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1867 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1867)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1867!1 String)
(assert (= var1867!1 ""))
(assert true)
(define-const var3383 String (append/672562846 var1867!1 "Could not create type ")) ; Statement: $r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ") 
(declare-const var1867!2 String)
(assert (= var1867!2 (str.++ var1867!1 "Could not create type ")))
(define-const var2186 String (name/-1461999723 var340)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name> 
(assert true)
(define-const var3677 String (append/672562846 var3383 var2186)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var3383!1 String)
(assert (= var3383!1 (str.++ var3383 var2186)))
(assert true)
(define-const var865 String (append/672562846 var3677 " as the constructor ")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the constructor ") 
(declare-const var3677!1 String)
(assert (= var3677!1 (str.++ var3677 " as the constructor ")))
(assert true)
(define-const var3609 String (append/-1031950772 var865 (cast-from-ClassObject-to-var933 var1306))) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var865!1 String)
(assert (str.prefixof var865 var865!1))
(assert true)
(define-const var3355 String (append/672562846 var3609 " is not accessible")) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible") 
(declare-const var3609!1 String)
(assert (= var3609!1 (str.++ var3609 " is not accessible")))
(assert true)
(define-const var2004 String (toString/-2075883882 var3355)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var568 var2004)) ; Statement: specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r22) 

(declare-const var568!1 var3700)
(declare-const var2004!1 String)
 ; Statement: throw $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {var3700-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var933=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var233=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var340=r0, var1691=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var1288=r2, var1306=r1, var3340=java.lang.IllegalAccessException, var1084=$r13, var3700=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var568=$r14, var1867=$r15, var3383=$r17, var2186=$r16, var3677=$r18, var865=$r19, var933=java.lang.Object, var3609=$r20, var3355=$r21, var2004=$r22}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var233, r0=var340, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var1691, r2=var1288, r1=var1306, java.lang.IllegalAccessException=var3340, $r13=var1084, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3700, $r14=var568, $r15=var1867, $r17=var3383, $r16=var2186, $r18=var3677, $r19=var865, java.lang.Object=var933, $r20=var3609, $r21=var3355, $r22=var2004}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter1: java.lang.Class;	$r13 := @caughtexception;	$r14 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r17 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ");	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name>;	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the constructor ");	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not accessible");	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r14.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r22);	throw $r14
;block_num 2