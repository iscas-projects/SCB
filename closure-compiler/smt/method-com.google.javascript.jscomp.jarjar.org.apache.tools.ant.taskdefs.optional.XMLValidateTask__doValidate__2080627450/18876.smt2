(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var800 0)
(declare-sort var3698 0)
(declare-sort var3630 0)
(declare-sort var1753 0)
(declare-sort var3280 0)
(declare-sort var264 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun initValidator/-2127723291 (var800) void)
(declare-fun String-init () String)
(declare-fun var1753-init () var1753)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3280) String)
(declare-fun cast-from-var3698-to-var3280 (var3698) var3280)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var1753 String var264) void)
(declare-fun cast-from-var3630-to-var264 (var3630) var264)
(declare-const null-var800 var800)
(declare-const null-var3698 var3698)
(declare-const null-var3630 var3630)
(declare-const var83 var800) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask 
(assert (not (= var83 null-var800)))
(declare-const var2205 var3698) ; Statement: r2 := @parameter0: java.io.File 
(assert (not (= var2205 null-var3698)))
(assert true)
;(assert (initValidator/-2127723291 var83)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: void initValidator()>() 

(declare-const var83!1 var800)
(define-const var1417 Bool (ite (= 1 1) true false)) ; Statement: z3 = 1 
(define-const var1749 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3541 var3630) ; Statement: $r27 := @caughtexception 
(assert (not (= var3541 null-var3630)))
(define-const var374 var1753 var1753-init) ; Statement: $r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3330 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3330)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3330!1 String)
(assert (= var3330!1 ""))
(assert true)
(define-const var3087 String (append/672562846 var3330!1 "Could not validate document ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not validate document ") 
(declare-const var3330!2 String)
(assert (= var3330!2 (str.++ var3330!1 "Could not validate document ")))
(assert true)
(define-const var123 String (append/-1031950772 var3087 (cast-from-var3698-to-var3280 var2205))) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2) 
(declare-const var3087!1 String)
(assert (str.prefixof var3087 var3087!1))
(assert true)
(define-const var2552 String (toString/-2075883882 var123)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var374 var2552 (cast-from-var3630-to-var264 var3541))) ; Statement: specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r27) 

(declare-const var374!1 var1753)
(declare-const var2552!1 String)
(declare-const var3541!1 var3630)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {initValidator/-2127723291=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask], void), String-init=([], java.lang.StringBuilder), var1753-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3698-to-var3280=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var3630-to-var264=([java.io.IOException], java.lang.Throwable)}
; {var800=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask, var83=r0, var3698=java.io.File, var2205=r2, var1417=z3, var1749=$r1, var3630=java.io.IOException, var3541=$r27, var1753=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var374=$r28, var3330=$r29, var3087=$r30, var3280=java.lang.Object, var123=$r31, var2552=$r32, var264=java.lang.Throwable}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask=var800, r0=var83, java.io.File=var3698, r2=var2205, z3=var1417, $r1=var1749, java.io.IOException=var3630, $r27=var3541, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1753, $r28=var374, $r29=var3330, $r30=var3087, java.lang.Object=var3280, $r31=var123, $r32=var2552, java.lang.Throwable=var264}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask;	r2 := @parameter0: java.io.File;	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.XMLValidateTask: void initValidator()>();	z3 = 1;	$r1 = new java.lang.StringBuilder;	$r27 := @caughtexception;	$r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not validate document ");	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r2);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r32, $r27);	throw $r28
;block_num 2