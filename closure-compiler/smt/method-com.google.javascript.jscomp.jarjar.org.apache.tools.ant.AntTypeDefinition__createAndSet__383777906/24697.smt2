(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var185 0)
(declare-sort var3246 0)
(declare-sort var3749 0)
(declare-sort var972 0)
(declare-sort var3514 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var972-init () var972)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun name/-1461999723 (var185) String)
(declare-fun append/-1031950772 (String var3514) String)
(declare-fun cast-from-ClassObject-to-var3514 (ClassObject) var3514)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var972 String) void)
(declare-const null-var185 var185)
(declare-const null-var3246 var3246)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3749 var3749)
(declare-const var3719 var185) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition 
(assert (not (= var3719 null-var185)))
(declare-const var3972 var3246) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var3972 null-var3246)))
(declare-const var42 ClassObject) ; Statement: r1 := @parameter1: java.lang.Class 
(assert (not (= var42 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1121 var3749) ; Statement: $r23 := @caughtexception 
(assert (not (= var1121 null-var3749)))
(define-const var518 var972 var972-init) ; Statement: $r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1055 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1055)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1055!1 String)
(assert (= var1055!1 ""))
(assert true)
(define-const var1226 String (append/672562846 var1055!1 "Could not create type ")) ; Statement: $r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ") 
(declare-const var1055!2 String)
(assert (= var1055!2 (str.++ var1055!1 "Could not create type ")))
(define-const var433 String (name/-1461999723 var3719)) ; Statement: $r26 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name> 
(assert true)
(define-const var645 String (append/672562846 var1226 var433)) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26) 
(declare-const var1226!1 String)
(assert (= var1226!1 (str.++ var1226 var433)))
(assert true)
(define-const var1284 String (append/672562846 var645 " as the class ")) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the class ") 
(declare-const var645!1 String)
(assert (= var645!1 (str.++ var645 " as the class ")))
(assert true)
(define-const var2420 String (append/-1031950772 var1284 (cast-from-ClassObject-to-var3514 var42))) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1284!1 String)
(assert (str.prefixof var1284 var1284!1))
(assert true)
(define-const var643 String (append/672562846 var2420 " is abstract")) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is abstract") 
(declare-const var2420!1 String)
(assert (= var2420!1 (str.++ var2420 " is abstract")))
(assert true)
(define-const var3115 String (toString/-2075883882 var643)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var518 var3115)) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r32) 

(declare-const var518!1 var972)
(declare-const var3115!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var972-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), name/-1461999723=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition], java.lang.String), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-ClassObject-to-var3514=([java.lang.Class], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var185=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition, var3719=r0, var3246=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var3972=r2, var42=r1, var3749=java.lang.InstantiationException, var1121=$r23, var972=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var518=$r24, var1055=$r25, var1226=$r27, var433=$r26, var645=$r28, var1284=$r29, var3514=java.lang.Object, var2420=$r30, var643=$r31, var3115=$r32}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition=var185, r0=var3719, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var3246, r2=var3972, r1=var42, java.lang.InstantiationException=var3749, $r23=var1121, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var972, $r24=var518, $r25=var1055, $r27=var1226, $r26=var433, $r28=var645, $r29=var1284, java.lang.Object=var3514, $r30=var2420, $r31=var643, $r32=var3115}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition;	r2 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r1 := @parameter1: java.lang.Class;	$r23 := @caughtexception;	$r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r27 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not create type ");	$r26 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntTypeDefinition: java.lang.String name>;	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r26);	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" as the class ");	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is abstract");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r32);	throw $r24
;block_num 2