(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3537 0)
(declare-sort var2300 0)
(declare-sort var3772 0)
(declare-sort var170 0)
(declare-sort var2611 0)
(declare-sort var1045 0)
(declare-sort var1725 0)
(declare-sort var224 0)
(declare-sort var3331 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2611-init () var2611)
(declare-fun var1045-init () var1045)
(declare-fun var224-init () var224)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var224 String var3331) void)
(declare-fun cast-from-var1725-to-var3331 (var1725) var3331)
(declare-const null-var3537 var3537)
(declare-const null-var2300 var2300)
(declare-const null-String String)
(declare-const null-var170 var170)
(declare-const null-var1725 var1725)
(declare-const var1657 var3537) ; Statement: r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase 
(assert (not (= var1657 null-var3537)))
(declare-const var2635 var2300) ; Statement: r2 := @parameter0: java.io.InputStream 
(assert (not (= var2635 null-var2300)))
(declare-const var2092 String) ; Statement: r14 := @parameter1: java.lang.String 
(assert (not (= var2092 null-String)))
(declare-const var1032 var170) ; Statement: r3 := @parameter2: java.nio.charset.Charset 
(assert (not (= var1032 null-var170)))
(define-const var1742 var2611 var2611-init) ; Statement: $r0 = new java.io.BufferedReader 
(define-const var3980 var1045 var1045-init) ; Statement: $r1 = new java.io.InputStreamReader 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var484 var1725) ; Statement: $r11 := @caughtexception 
(assert (not (= var484 null-var1725)))
(define-const var712 var224 var224-init) ; Statement: $r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1985 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1985)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1985!1 String)
(assert (= var1985!1 ""))
(assert true)
(define-const var1479 String (append/672562846 var1985!1 "Failed to read ")) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to read ") 
(declare-const var1985!2 String)
(assert (= var1985!2 (str.++ var1985!1 "Failed to read ")))
(assert true)
(define-const var3585 String (append/672562846 var1479 var2092)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var1479!1 String)
(assert (= var1479!1 (str.++ var1479 var2092)))
(assert true)
(define-const var485 String (toString/-2075883882 var3585)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var712 var485 (cast-from-var1725-to-var3331 var484))) ; Statement: specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11) 

(declare-const var712!1 var224)
(declare-const var485!1 String)
(declare-const var484!1 var1725)
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {var2611-init=([], java.io.BufferedReader), var1045-init=([], java.io.InputStreamReader), var224-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1725-to-var3331=([java.io.IOException], java.lang.Throwable)}
; {var3537=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase, var1657=r5, var2300=java.io.InputStream, var2635=r2, var2092=r14, var3772=null_type, var170=java.nio.charset.Charset, var1032=r3, var2611=java.io.BufferedReader, var1742=$r0, var1045=java.io.InputStreamReader, var3980=$r1, var1725=java.io.IOException, var484=$r11, var224=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var712=$r12, var1985=$r13, var1479=$r15, var3585=$r16, var485=$r17, var3331=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase=var3537, r5=var1657, java.io.InputStream=var2300, r2=var2635, r14=var2092, null_type=var3772, java.nio.charset.Charset=var170, r3=var1032, java.io.BufferedReader=var2611, $r0=var1742, java.io.InputStreamReader=var1045, $r1=var3980, java.io.IOException=var1725, $r11=var484, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var224, $r12=var712, $r13=var1985, $r15=var1479, $r16=var3585, $r17=var485, java.lang.Throwable=var3331}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r5 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.ScriptRunnerBase;	r2 := @parameter0: java.io.InputStream;	r14 := @parameter1: java.lang.String;	r3 := @parameter2: java.nio.charset.Charset;	$r0 = new java.io.BufferedReader;	$r1 = new java.io.InputStreamReader;	$r11 := @caughtexception;	$r12 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Failed to read ");	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r17, $r11);	throw $r12
;block_num 2