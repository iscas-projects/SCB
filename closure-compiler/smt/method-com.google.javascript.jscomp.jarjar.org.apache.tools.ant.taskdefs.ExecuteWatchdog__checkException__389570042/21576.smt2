(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var345 0)
(declare-sort var2552 0)
(declare-sort var1744 0)
(declare-sort var400 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun caught/1205304262 (var345) var2552)
(declare-fun var1744-init () var1744)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getMessage/849299655 (var400) String)
(declare-fun cast-from-var2552-to-var400 (var2552) var400)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1744 String var400) void)
(declare-const null-var345 var345)
(declare-const null-var2552 var2552)
(declare-const var866 var345) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog 
(assert (not (= var866 null-var345)))
(define-const var2634 var2552 (caught/1205304262 var866)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog: java.lang.Exception caught> 
 ; Statement: if $r1 == null goto return 
(assert (not (= var2634 null-var2552))) ; Negate: Cond: $r1 == null  
(define-const var2469 var1744 var1744-init) ; Statement: $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1674 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1674)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1674!1 String)
(assert (= var1674!1 ""))
(assert true)
(define-const var1203 String (append/672562846 var1674!1 "Exception in ExecuteWatchdog.run: ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception in ExecuteWatchdog.run: ") 
(declare-const var1674!2 String)
(assert (= var1674!2 (str.++ var1674!1 "Exception in ExecuteWatchdog.run: ")))
(define-const var367 var2552 (caught/1205304262 var866)) ; Statement: $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog: java.lang.Exception caught> 
(assert true)
(define-const var1922 String (getMessage/849299655 (cast-from-var2552-to-var400 var367))) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Exception: java.lang.String getMessage()>() 
(assert true)
(define-const var1940 String (append/672562846 var1203 var1922)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1203!1 String)
(assert (= var1203!1 (str.++ var1203 var1922)))
(assert true)
(define-const var3957 String (toString/-2075883882 var1940)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var463 var2552 (caught/1205304262 var866)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog: java.lang.Exception caught> 
(assert true)
;(assert (<init>/-191906322 var2469 var3957 (cast-from-var2552-to-var400 var463))) ; Statement: specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r8) 

(declare-const var2469!1 var1744)
(declare-const var3957!1 String)
(declare-const var463!1 var2552)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {caught/1205304262=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog], java.lang.Exception), var1744-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getMessage/849299655=([java.lang.Throwable], java.lang.String), cast-from-var2552-to-var400=([java.lang.Exception], java.lang.Throwable), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void)}
; {var345=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog, var866=r0, var2552=java.lang.Exception, var2634=$r1, var1744=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var2469=$r2, var1674=$r3, var1203=$r6, var367=$r4, var400=java.lang.Throwable, var1922=$r5, var1940=$r7, var3957=$r9, var463=$r8}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog=var345, r0=var866, java.lang.Exception=var2552, $r1=var2634, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1744, $r2=var2469, $r3=var1674, $r6=var1203, $r4=var367, java.lang.Throwable=var400, $r5=var1922, $r7=var1940, $r9=var3957, $r8=var463}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog: java.lang.Exception caught>;	if $r1 == null goto return;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Exception in ExecuteWatchdog.run: ");	$r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog: java.lang.Exception caught>;	$r5 = virtualinvoke $r4.<java.lang.Exception: java.lang.String getMessage()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.ExecuteWatchdog: java.lang.Exception caught>;	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r9, $r8);	throw $r2
;block_num 2