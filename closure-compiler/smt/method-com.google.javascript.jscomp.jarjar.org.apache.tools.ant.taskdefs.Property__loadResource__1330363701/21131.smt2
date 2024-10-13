(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2657 0)
(declare-sort var2372 0)
(declare-sort var2435 0)
(declare-sort var1447 0)
(declare-sort var2448 0)
(declare-sort var60 0)
(declare-sort var1672 0)
(declare-sort var501 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2435-init () var2435)
(declare-fun <init>/964458484 (var2435) void)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/456963423 (var1447 String Int) void)
(declare-fun cast-from-var2657-to-var1447 (var2657) var1447)
(declare-fun classpath/-696888527 (var2657) var2448)
(declare-fun getClass/1258963082 (var60) ClassObject)
(declare-fun cast-from-var2657-to-var60 (var2657) var60)
(declare-fun getClassLoader/-563698447 (ClassObject) var1672)
(declare-const null-var2657 var2657)
(declare-const null-String String)
(declare-const null-var2448 var2448)
(declare-const null-var501 var501)
(declare-const var1807 var2657) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property 
(assert (not (= var1807 null-var2657)))
(declare-const var2785 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2785 null-String)))
(define-const var293 var2435 var2435-init) ; Statement: $r0 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var293)) ; Statement: specialinvoke $r0.<java.util.Properties: void <init>()>() 

(declare-const var293!1 var2435)
(define-const var3091 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3091)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3091!1 String)
(assert (= var3091!1 ""))
(assert true)
(define-const var1844 String (append/672562846 var3091!1 "Resource Loading ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource Loading ") 
(declare-const var3091!2 String)
(assert (= var3091!2 (str.++ var3091!1 "Resource Loading ")))
(assert true)
(define-const var3396 String (append/672562846 var1844 var2785)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1844!1 String)
(assert (= var1844!1 (str.++ var1844 var2785)))
(assert true)
(define-const var1628 String (toString/-2075883882 var3396)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/456963423 (cast-from-var2657-to-var1447 var1807) var1628 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r6, 3) 

(declare-const var1807!1 var2657)
(declare-const var1628!1 String)
(declare-const var784 Int)
(define-const var2064 var2448 (classpath/-696888527 var1807!1)) ; Statement: $r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
 ; Statement: if $r7 != null goto $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>() 
(assert (not (not (= var2064 null-var2448)))) ; Negate: Cond: $r7 != null  
(assert true)
(define-const var1870 ClassObject (getClass/1258963082 (cast-from-var2657-to-var60 var1807!1))) ; Statement: $r17 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3611 var1672 (getClassLoader/-563698447 var1870)) ; Statement: $r26 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>() 
 ; Statement: goto [?= r10 = $r26] 
(assert true) ; Non Conditional
(define-const var2440 var1672 var3611) ; Statement: r10 = $r26 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3165 var501) ; Statement: $r18 := @caughtexception 
(assert (not (= var3165 null-var501)))
(assert true) ; Non Conditional
(define-const var1752 var2448 (classpath/-696888527 var1807!1)) ; Statement: $r19 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath> 
 ; Statement: if $r19 == null goto throw $r18 
(assert (= var1752 null-var2448)) ; Cond: $r19 == null 
 ; Statement: throw $r18 
(check-sat)
(get-model)
(get-unsat-core)
; {var2435-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/456963423=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, java.lang.String, int], void), cast-from-var2657-to-var1447=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task), classpath/-696888527=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2657-to-var60=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property], java.lang.Object), getClassLoader/-563698447=([java.lang.Class], java.lang.ClassLoader)}
; {var2657=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property, var1807=r1, var2785=r3, var2372=null_type, var2435=java.util.Properties, var293=$r0, var3091=$r2, var1844=$r4, var3396=$r5, var1628=$r6, var1447=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task, var784=3, var2448=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path, var2064=$r7, var60=java.lang.Object, var1870=$r17, var1672=java.lang.ClassLoader, var3611=$r26, var2440=r10, var501=java.lang.Throwable, var3165=$r18, var1752=$r19}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property=var2657, r1=var1807, r3=var2785, null_type=var2372, java.util.Properties=var2435, $r0=var293, $r2=var3091, $r4=var1844, $r5=var3396, $r6=var1628, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Task=var1447, 3=var784, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path=var2448, $r7=var2064, java.lang.Object=var60, $r17=var1870, java.lang.ClassLoader=var1672, $r26=var3611, r10=var2440, java.lang.Throwable=var501, $r18=var3165, $r19=var1752}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property;	r3 := @parameter0: java.lang.String;	$r0 = new java.util.Properties;	specialinvoke $r0.<java.util.Properties: void <init>()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Resource Loading ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: void log(java.lang.String,int)>($r6, 3);	$r7 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	if $r7 != null goto $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project getProject()>();	$r17 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r26 = virtualinvoke $r17.<java.lang.Class: java.lang.ClassLoader getClassLoader()>();	goto [?= r10 = $r26];	r10 = $r26;	$r18 := @caughtexception;	$r19 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Property: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Path classpath>;	if $r19 == null goto throw $r18;	throw $r18
;block_num 6