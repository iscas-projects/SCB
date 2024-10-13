(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3046 0)
(declare-sort var1857 0)
(declare-sort var1223 0)
(declare-sort var3385 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3385-init () var3385)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3385 String var1223) void)
(declare-const null-String String)
(declare-const null-var1857 var1857)
(declare-const null-var1223 var1223)
(declare-const var2580 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2580 null-String)))
(declare-const var2785 var1857) ; Statement: r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader 
(assert (not (= var2785 null-var1857)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1092 var1223) ; Statement: $r8 := @caughtexception 
(assert (not (= var1092 null-var1223)))
(define-const var1566 var3385 var3385-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var128 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var128)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>()>() 
(declare-const var128!1 String)
(assert (= var128!1 ""))
(assert true)
(define-const var265 String (append/672562846 var128!1 var2580)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var128!2 String)
(assert (= var128!2 (str.++ var128!1 var2580)))
(assert true)
(define-const var692 String (append/672562846 var265 " caused an interesting exception.")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" caused an interesting exception.") 
(declare-const var265!1 String)
(assert (= var265!1 (str.++ var265 " caused an interesting exception.")))
(assert true)
(define-const var2325 String (toString/-2075883882 var692)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1566 var2325 var1092)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r8) 

(declare-const var1566!1 var3385)
(declare-const var2325!1 String)
(declare-const var1092!1 var1223)
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {var3385-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var2580=r1, var3046=null_type, var1857=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader, var2785=r0, var1223=java.lang.Throwable, var1092=$r8, var3385=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1566=$r9, var128=$r10, var265=$r11, var692=$r12, var2325=$r13}
; {r1=var2580, null_type=var3046, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader=var1857, r0=var2785, java.lang.Throwable=var1223, $r8=var1092, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3385, $r9=var1566, $r10=var128, $r11=var265, $r12=var692, $r13=var2325}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: java.lang.String;	r0 := @parameter1: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.AntClassLoader;	$r8 := @caughtexception;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r10 = new java.lang.StringBuilder;	specialinvoke $r10.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" caused an interesting exception.");	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r13, $r8);	throw $r9
;block_num 2