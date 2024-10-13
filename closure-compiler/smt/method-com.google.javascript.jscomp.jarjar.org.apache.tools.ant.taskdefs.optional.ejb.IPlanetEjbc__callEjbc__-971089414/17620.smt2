(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var410 0)
(declare-sort var2844 0)
(declare-sort var991 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun iasHomeDir/1631179044 (var410) var2844)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun String_join/-1520935655 (String (Array Int String)) String)
(define-fun cast-from-String-to-String ((arg String)) String arg)
(define-fun cast-from-__Array__Int__String__-to-__Array__Int__String__ ((arg (Array Int String))) (Array Int String) arg)
(declare-fun log/2105092484 (var410 String) void)
(declare-const null-var410 var410)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-var2844 var2844)
(declare-const null-var991 var991)
(declare-const var3934 var410) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc 
(assert (not (= var3934 null-var410)))
(declare-const var3838 (Array Int String)) ; Statement: r14 := @parameter0: java.lang.String[] 
(assert (not (= var3838 null-__Array__Int__String__)))
(define-const var714 var2844 (iasHomeDir/1631179044 var3934)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasHomeDir> 
 ; Statement: if $r1 != null goto $r2 = new java.lang.StringBuilder 
(assert (not (not (= var714 null-var2844)))) ; Negate: Cond: $r1 != null  
(define-const var695 String "") ; Statement: r34 = "" 
 ; Statement: goto [?= $r11 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1780 String String-init) ; Statement: $r11 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1780)) ; Statement: specialinvoke $r11.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1780!1 String)
(assert (= var1780!1 ""))
(assert true)
(define-const var445 String (append/672562846 var1780!1 var695)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34) 
(declare-const var1780!2 String)
(assert (= var1780!2 (str.++ var1780!1 var695)))
(assert true)
(define-const var2696 String (append/672562846 var445 "ejbc ")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejbc ") 
(declare-const var445!1 String)
(assert (= var445!1 (str.++ var445 "ejbc ")))
(assert true)
(define-const var3593 String (toString/-2075883882 var2696)) ; Statement: $r28 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1873 String (String_join/-1520935655 (cast-from-String-to-String " ") (cast-from-__Array__Int__String__-to-__Array__Int__String__ var3838))) ; Statement: $r29 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" ", r14) 
(define-const var2850 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2850)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2850!1 String)
(assert (= var2850!1 ""))
(assert true)
(define-const var234 String (append/672562846 var2850!1 var3593)) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var2850!2 String)
(assert (= var2850!2 (str.++ var2850!1 var3593)))
(assert true)
(define-const var2071 String (append/672562846 var234 var1873)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var234!1 String)
(assert (= var234!1 (str.++ var234 var1873)))
(assert true)
(define-const var348 String (toString/-2075883882 var2071)) ; Statement: $r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/2105092484 var3934 var348)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r18) 

(declare-const var3934!1 var410)
(declare-const var348!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var3623 var991) ; Statement: $r31 := @caughtexception 
(assert (not (= var3623 null-var991)))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {iasHomeDir/1631179044=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), String_join/-1520935655=([java.lang.CharSequence, java.lang.CharSequence[]], java.lang.String), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), cast-from-__Array__Int__String__-to-__Array__Int__String__=([java.lang.String[]], java.lang.CharSequence[]), log/2105092484=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, java.lang.String], void)}
; {var410=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc, var3934=r0, var3838=r14, var2844=java.io.File, var714=$r1, var695=r34, var1780=$r11, var445=$r12, var2696=$r13, var3593=$r28, var1873=$r29, var2850=$r15, var234=$r16, var2071=$r17, var348=$r18, var991=java.lang.InterruptedException, var3623=$r31}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc=var410, r0=var3934, r14=var3838, java.io.File=var2844, $r1=var714, r34=var695, $r11=var1780, $r12=var445, $r13=var2696, $r28=var3593, $r29=var1873, $r15=var2850, $r16=var234, $r17=var2071, $r18=var348, java.lang.InterruptedException=var991, $r31=var3623}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc;	r14 := @parameter0: java.lang.String[];	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: java.io.File iasHomeDir>;	if $r1 != null goto $r2 = new java.lang.StringBuilder;	r34 = "";	goto [?= $r11 = new java.lang.StringBuilder];	$r11 = new java.lang.StringBuilder;	specialinvoke $r11.<java.lang.StringBuilder: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r34);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("ejbc ");	$r28 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	$r29 = staticinvoke <java.lang.String: java.lang.String join(java.lang.CharSequence,java.lang.CharSequence[])>(" ", r14);	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r16 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	$r17 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r18 = virtualinvoke $r17.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc: void log(java.lang.String)>($r18);	$r31 := @caughtexception;	return
;block_num 5