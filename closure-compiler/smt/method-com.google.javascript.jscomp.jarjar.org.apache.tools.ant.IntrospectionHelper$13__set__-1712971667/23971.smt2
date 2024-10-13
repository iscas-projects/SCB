(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2414 0)
(declare-sort var964 0)
(declare-sort var41 0)
(declare-sort var1583 0)
(declare-sort var3054 0)
(declare-sort var2952 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun val$reflectedArg/1770628188 (var2414) ClassObject)
(declare-fun var2952-init () var2952)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var2952 String) void)
(declare-const null-var2414 var2414)
(declare-const null-var964 var964)
(declare-const null-var41 var41)
(declare-const null-String String)
(declare-const null-var3054 var3054)
(declare-const var1770 var2414) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$13 
(assert (not (= var1770 null-var2414)))
(declare-const var2375 var964) ; Statement: r16 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project 
(assert (not (= var2375 null-var964)))
(declare-const var1074 var41) ; Statement: r3 := @parameter1: java.lang.Object 
(assert (not (= var1074 null-var41)))
(declare-const var3038 String) ; Statement: r1 := @parameter2: java.lang.String 
(assert (not (= var3038 null-String)))
(define-const var1443 ClassObject (val$reflectedArg/1770628188 var1770)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$13: java.lang.Class val$reflectedArg> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var2916 var3054) ; Statement: $r6 := @caughtexception 
(assert (not (= var2916 null-var3054)))
(define-const var390 var2952 var2952-init) ; Statement: $r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1779 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1779)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1779!1 String)
(assert (= var1779!1 ""))
(assert true)
(define-const var2527 String (append/672562846 var1779!1 "\u0027")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var1779!2 String)
(assert (= var1779!2 (str.++ var1779!1 "\u0027")))
(assert true)
(define-const var1572 String (append/672562846 var2527 var3038)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2527!1 String)
(assert (= var2527!1 (str.++ var2527 var3038)))
(assert true)
(define-const var569 String (append/672562846 var1572 "\u0027 is not a permitted value for ")) ; Statement: $r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not a permitted value for ") 
(declare-const var1572!1 String)
(assert (= var1572!1 (str.++ var1572 "\u0027 is not a permitted value for ")))
(define-const var3166 ClassObject (val$reflectedArg/1770628188 var1770)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$13: java.lang.Class val$reflectedArg> 
(assert true)
(define-const var690 String (getName/-1958580599 var3166)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1549 String (append/672562846 var569 var690)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var569!1 String)
(assert (= var569!1 (str.++ var569 var690)))
(assert true)
(define-const var2779 String (toString/-2075883882 var1549)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var390 var2779)) ; Statement: specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r15) 

(declare-const var390!1 var2952)
(declare-const var2779!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {val$reflectedArg/1770628188=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$13], java.lang.Class), var2952-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var2414=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$13, var1770=r0, var964=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project, var2375=r16, var41=java.lang.Object, var1074=r3, var3038=r1, var1583=null_type, var1443=$r2, var3054=java.lang.IllegalArgumentException, var2916=$r6, var2952=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var390=$r7, var1779=$r8, var2527=$r9, var1572=$r10, var569=$r13, var3166=$r11, var690=$r12, var1549=$r14, var2779=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$13=var2414, r0=var1770, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project=var964, r16=var2375, java.lang.Object=var41, r3=var1074, r1=var3038, null_type=var1583, $r2=var1443, java.lang.IllegalArgumentException=var3054, $r6=var2916, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2952, $r7=var390, $r8=var1779, $r9=var2527, $r10=var1572, $r13=var569, $r11=var3166, $r12=var690, $r14=var1549, $r15=var2779}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$13;	r16 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Project;	r3 := @parameter1: java.lang.Object;	r1 := @parameter2: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$13: java.lang.Class val$reflectedArg>;	$r6 := @caughtexception;	$r7 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r13 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' is not a permitted value for ");	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.IntrospectionHelper$13: java.lang.Class val$reflectedArg>;	$r12 = virtualinvoke $r11.<java.lang.Class: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r15);	throw $r7
;block_num 2