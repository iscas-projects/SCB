(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2700 0)
(declare-sort var2785 0)
(declare-sort var1631 0)
(declare-sort var1566 0)
(declare-sort var1813 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2785-init () var2785)
(declare-fun <init>/-1913910780 (var2785) void)
(declare-fun included/-8581014 (var2700) var2785)
(declare-fun var1566-init () var1566)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1566 String var1813) void)
(declare-fun cast-from-var1631-to-var1813 (var1631) var1813)
(declare-const null-var2700 var2700)
(declare-const null-var1631 var1631)
(declare-const var688 var2700) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.optional.depend.DependScanner 
(assert (not (= var688 null-var2700)))
(define-const var1384 var2785 var2785-init) ; Statement: $r1 = new java.util.Vector 
(assert true)
;(assert (<init>/-1913910780 var1384)) ; Statement: specialinvoke $r1.<java.util.Vector: void <init>()>() 

(declare-const var1384!1 var2785)
(declare-const var688!1 var2700)
(assert (not (= var688!1 null-var2700)))
(assert (= (included/-8581014 var688!1) var1384!1)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.optional.depend.DependScanner: java.util.Vector included> = $r1 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1777 var1631) ; Statement: $r29 := @caughtexception 
(assert (not (= var1777 null-var1631)))
(define-const var2099 var1566 var1566-init) ; Statement: $r30 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3731 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3731)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3731!1 String)
(assert (= var3731!1 ""))
(assert true)
(define-const var921 String (append/672562846 var3731!1 "Unable to load dependency analyzer: ")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load dependency analyzer: ") 
(declare-const var3731!2 String)
(assert (= var3731!2 (str.++ var3731!1 "Unable to load dependency analyzer: ")))
(assert true)
(define-const var2504 String (append/672562846 var921 "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.bcel.FullAnalyzer")) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.bcel.FullAnalyzer") 
(declare-const var921!1 String)
(assert (= var921!1 (str.++ var921 "com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.bcel.FullAnalyzer")))
(assert true)
(define-const var3037 String (toString/-2075883882 var2504)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var2099 var3037 (cast-from-var1631-to-var1813 var1777))) ; Statement: specialinvoke $r30.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r34, $r29) 

(declare-const var2099!1 var1566)
(declare-const var3037!1 String)
(declare-const var1777!1 var1631)
 ; Statement: throw $r30 
(check-sat)
(get-model)
(get-unsat-core)
; {var2785-init=([], java.util.Vector), <init>/-1913910780=([java.util.Vector], void), included/-8581014=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.optional.depend.DependScanner], java.util.Vector), var1566-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var1631-to-var1813=([java.lang.Exception], java.lang.Throwable)}
; {var2700=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.optional.depend.DependScanner, var688=r0, var2785=java.util.Vector, var1384=$r1, var1631=java.lang.Exception, var1777=$r29, var1566=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2099=$r30, var3731=$r31, var921=$r32, var2504=$r33, var3037=$r34, var1813=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.optional.depend.DependScanner=var2700, r0=var688, java.util.Vector=var2785, $r1=var1384, java.lang.Exception=var1631, $r29=var1777, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1566, $r30=var2099, $r31=var3731, $r32=var921, $r33=var2504, $r34=var3037, java.lang.Throwable=var1813}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.optional.depend.DependScanner;	$r1 = new java.util.Vector;	specialinvoke $r1.<java.util.Vector: void <init>()>();	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.optional.depend.DependScanner: java.util.Vector included> = $r1;	$r29 := @caughtexception;	$r30 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to load dependency analyzer: ");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("com.google.javascript.jscomp.jarjar.org.apache.tools.ant.util.depend.bcel.FullAnalyzer");	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r30.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r34, $r29);	throw $r30
;block_num 2