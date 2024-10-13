(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1673 0)
(declare-sort var1467 0)
(declare-sort var1229 0)
(declare-sort var32 0)
(declare-sort var354 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var32-init () var32)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var32 String var354) void)
(declare-fun cast-from-var1229-to-var354 (var1229) var354)
(declare-const null-String String)
(declare-const null-var1467 var1467)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1229 var1229)
(declare-const var682 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var682 null-String)))
(declare-const var118 var1467) ; Statement: r1 := @parameter1: java.lang.ClassLoader 
(assert (not (= var118 null-var1467)))
(declare-const var3168 ClassObject) ; Statement: r6 := @parameter2: java.lang.Class 
(assert (not (= var3168 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1054 var1229) ; Statement: $r30 := @caughtexception 
(assert (not (= var1054 null-var1229)))
(define-const var2185 var32 var32-init) ; Statement: $r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1816 String String-init) ; Statement: $r32 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1816)) ; Statement: specialinvoke $r32.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1816!1 String)
(assert (= var1816!1 ""))
(assert true)
(define-const var2310 String (append/672562846 var1816!1 "Class not found: ")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class not found: ") 
(declare-const var1816!2 String)
(assert (= var1816!2 (str.++ var1816!1 "Class not found: ")))
(assert true)
(define-const var3487 String (append/672562846 var2310 var682)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var2310!1 String)
(assert (= var2310!1 (str.++ var2310 var682)))
(assert true)
(define-const var2695 String (toString/-2075883882 var3487)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2185 var2695 (cast-from-var1229-to-var354 var1054))) ; Statement: specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r35, $r30) 

(declare-const var2185!1 var32)
(declare-const var2695!1 String)
(declare-const var1054!1 var1229)
 ; Statement: throw $r31 
(check-sat)
(get-model)
(get-unsat-core)
; {var32-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1229-to-var354=([java.lang.ClassNotFoundException], java.lang.Throwable)}
; {var682=r0, var1673=null_type, var1467=java.lang.ClassLoader, var118=r1, var3168=r6, var1229=java.lang.ClassNotFoundException, var1054=$r30, var32=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2185=$r31, var1816=$r32, var2310=$r33, var3487=$r34, var2695=$r35, var354=java.lang.Throwable}
; {r0=var682, null_type=var1673, java.lang.ClassLoader=var1467, r1=var118, r6=var3168, java.lang.ClassNotFoundException=var1229, $r30=var1054, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var32, $r31=var2185, $r32=var1816, $r33=var2310, $r34=var3487, $r35=var2695, java.lang.Throwable=var354}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.ClassLoader;	r6 := @parameter2: java.lang.Class;	$r30 := @caughtexception;	$r31 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r32 = new java.lang.StringBuilder;	specialinvoke $r32.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Class not found: ");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r31.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r35, $r30);	throw $r31
;block_num 2