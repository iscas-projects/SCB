(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2599 0)
(declare-sort var3621 0)
(declare-sort var2907 0)
(declare-sort var3127 0)
(declare-sort var2676 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3127-init () var3127)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-191906322 (var3127 String var2676) void)
(declare-fun cast-from-var2907-to-var2676 (var2907) var2676)
(declare-const null-String String)
(declare-const null-var3621 var3621)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2907 var2907)
(declare-const var788 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var788 null-String)))
(declare-const var893 var3621) ; Statement: r1 := @parameter1: java.lang.ClassLoader 
(assert (not (= var893 null-var3621)))
(declare-const var26 ClassObject) ; Statement: r6 := @parameter2: java.lang.Class 
(assert (not (= var26 null-ClassObject)))
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var1237 var2907) ; Statement: $r23 := @caughtexception 
(assert (not (= var1237 null-var2907)))
(define-const var1937 var3127 var3127-init) ; Statement: $r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var598 String String-init) ; Statement: $r25 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var598)) ; Statement: specialinvoke $r25.<java.lang.StringBuilder: void <init>()>() 
(declare-const var598!1 String)
(assert (= var598!1 ""))
(assert true)
(define-const var1813 String (append/672562846 var598!1 "Could not instantiate ")) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate ") 
(declare-const var598!2 String)
(assert (= var598!2 (str.++ var598!1 "Could not instantiate ")))
(assert true)
(define-const var1401 String (append/672562846 var1813 var788)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0) 
(declare-const var1813!1 String)
(assert (= var1813!1 (str.++ var1813 var788)))
(assert true)
(define-const var3037 String (append/672562846 var1401 ". Specified class should have a no argument constructor.")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Specified class should have a no argument constructor.") 
(declare-const var1401!1 String)
(assert (= var1401!1 (str.++ var1401 ". Specified class should have a no argument constructor.")))
(assert true)
(define-const var1947 String (toString/-2075883882 var3037)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-191906322 var1937 var1947 (cast-from-var2907-to-var2676 var1237))) ; Statement: specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r29, $r23) 

(declare-const var1937!1 var3127)
(declare-const var1947!1 String)
(declare-const var1237!1 var2907)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {var3127-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-191906322=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Throwable], void), cast-from-var2907-to-var2676=([java.lang.InstantiationException], java.lang.Throwable)}
; {var788=r0, var2599=null_type, var3621=java.lang.ClassLoader, var893=r1, var26=r6, var2907=java.lang.InstantiationException, var1237=$r23, var3127=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1937=$r24, var598=$r25, var1813=$r26, var1401=$r27, var3037=$r28, var1947=$r29, var2676=java.lang.Throwable}
; {r0=var788, null_type=var2599, java.lang.ClassLoader=var3621, r1=var893, r6=var26, java.lang.InstantiationException=var2907, $r23=var1237, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3127, $r24=var1937, $r25=var598, $r26=var1813, $r27=var1401, $r28=var3037, $r29=var1947, java.lang.Throwable=var2676}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: java.lang.String;	r1 := @parameter1: java.lang.ClassLoader;	r6 := @parameter2: java.lang.Class;	$r23 := @caughtexception;	$r24 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r25 = new java.lang.StringBuilder;	specialinvoke $r25.<java.lang.StringBuilder: void <init>()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not instantiate ");	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r0);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(". Specified class should have a no argument constructor.");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Throwable)>($r29, $r23);	throw $r24
;block_num 2