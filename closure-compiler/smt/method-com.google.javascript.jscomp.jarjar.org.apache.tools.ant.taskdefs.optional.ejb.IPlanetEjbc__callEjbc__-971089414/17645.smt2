(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3170 0)
(declare-sort var999 0)
(declare-sort var3116 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun iasHomeDir/1631179044 (var3170) var999)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toString/180451120 (var999) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun log/2105092484 (var3170 String) void)
(declare-const null-var3170 var3170)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var999 var999)
(declare-const var999-separator String)
(declare-const null-var3116 var3116)
(declare-const var3929 var3170) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(assert (not (= var3929 null-var3170)))
(declare-const var2315 (Array Int String)) ; Statement: r14 := @parameter0: java.lang.String[] 
(assert (not (= var2315 null-__Array__Int__String__)))
(define-const var3719 var999 (iasHomeDir/1631179044 var3929)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasHomeDir> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (= var3719 null-var999))) ; Cond: $r1 != null 
(define-const var2684 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2684)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2684!1 String)
(assert (= var2684!1 ""))
(define-const var3275 var999 (iasHomeDir/1631179044 var3929)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasHomeDir> 
(assert true)
(define-const var1224 String (toString/180451120 var3275)) ; Statement: $r4 = virtualinvoke $r3.<java.io.File: java.lang.String toString()>() 
(assert true)
(define-const var1976 String (append/672562846 var2684!1 var1224)) ; Statement: $r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var2684!2 String)
(assert (= var2684!2 (str.++ var2684!1 var1224)))
(define-const var534 String var999-separator) ; Statement: $r5 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var1892 String (append/672562846 var1976 var534)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1976!1 String)
(assert (= var1976!1 (str.++ var1976 var534)))
(assert true)
(define-const var2206 String (append/672562846 var1892 "bin")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bin") 
(declare-const var1892!1 String)
(assert (= var1892!1 (str.++ var1892 "bin")))
(define-const var1396 String var999-separator) ; Statement: $r8 = <java.io.File: java.lang.String separator> 
(assert true)
(define-const var53 String (append/672562846 var2206 var1396)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2206!1 String)
(assert (= var2206!1 (str.++ var2206 var1396)))
(assert true)
(define-const var410 String (toString/-2075883882 var53)) ; Statement: r34 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1981 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1981)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1981!1 String)
(assert (= var1981!1 ""))
(assert true)
(define-const var3657 String (append/672562846 var1981!1 var410)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34) 
(declare-const var1981!2 String)
(assert (= var1981!2 (str.++ var1981!1 var410)))
(assert true)
(define-const var2526 String (append/672562846 var3657 "ejbc ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejbc ") 
(declare-const var3657!1 String)
(assert (= var3657!1 (str.++ var3657 "ejbc ")))
(assert true)
(define-const var22 String (toString/-2075883882 var2526)) ; Statement: $r28 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var574 String (String_join/-1520935655 (cast-from-String-to-String " ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var2315))) ; Statement: $r29 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" ", r14) 
(define-const var2168 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2168)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2168!1 String)
(assert (= var2168!1 ""))
(assert true)
(define-const var2889 String (append/672562846 var2168!1 var22)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var2168!2 String)
(assert (= var2168!2 (str.++ var2168!1 var22)))
(assert true)
(define-const var2590 String (append/672562846 var2889 var574)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2889!1 String)
(assert (= var2889!1 (str.++ var2889 var574)))
(assert true)
(define-const var455 String (toString/-2075883882 var2590)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2105092484 var3929 var455)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r18) 

(declare-const var3929!1 var3170)
(declare-const var455!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3478 var3116) ; Statement: $r31 := @caughtexception 
(assert (not (= var3478 null-var3116)))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {iasHomeDir/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toString/180451120=([java.io.File], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), log/2105092484=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.lang.String], void)}
; {var3170=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var3929=r0, var2315=r14, var999=java.io.File, var3719=$r1, var2684=$r2, var3275=$r3, var1224=$r4, var1976=$r6, var534=$r5, var1892=$r7, var2206=$r9, var1396=$r8, var53=$r10, var410=r34, var1981=$r11, var3657=$r12, var2526=$r13, var22=$r28, var574=$r29, var2168=$r15, var2889=$r16, var2590=$r17, var455=$r18, var3116=java.lang.InterruptedException, var3478=$r31}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var3170, r0=var3929, r14=var2315, java.io.File=var999, $r1=var3719, $r2=var2684, $r3=var3275, $r4=var1224, $r6=var1976, $r5=var534, $r7=var1892, $r9=var2206, $r8=var1396, $r10=var53, r34=var410, $r11=var1981, $r12=var3657, $r13=var2526, $r28=var22, $r29=var574, $r15=var2168, $r16=var2889, $r17=var2590, $r18=var455, java.lang.InterruptedException=var3116, $r31=var3478}
;seq <java.lang.StringBuilder: void <init>()>;	<java.io.File: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 8,"<java.lang.StringBuilder: java.lang.String toString()>": 3,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	r14 := @parameter0: java.lang.String[];	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasHomeDir>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasHomeDir>;	$r4 = virtualinvoke $r3.<java.io.File: java.lang.String toString()>();	$r6 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r5 = <java.io.File: java.lang.String separator>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("bin");	$r8 = <java.io.File: java.lang.String separator>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	r34 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejbc ");	$r28 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" ", r14);	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r18);	$r31 := @caughtexception;	return
;block_num 5