(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1704 0)
(declare-sort var795 0)
(declare-sort var2361 0)
(declare-sort var2396 0)
(declare-sort var1283 0)
(declare-sort var2206 0)
(declare-sort var3035 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1487781919 (var1704) var2361)
(declare-fun baseJarName/2019956101 (var2361) String)
(declare-fun namingScheme/2019956101 (var2361) var2396)
(declare-fun getValue/-1445752687 (var1283) String)
(declare-fun cast-from-var2396-to-var1283 (var2396) var1283)
(declare-fun var2206-init () var2206)
(declare-fun arr-var3035-init () (Array Int var3035))
(declare-fun cast-from-String-to-var3035 (String) var3035)
(declare-fun <init>/1887414589 (var2206 String (Array Int var3035)) void)
(declare-const null-var1704 var1704)
(declare-const null-String String)
(declare-const null-var2361 var2361)
(declare-const null-var2396 var2396)
(declare-const null-__Array__Int__var3035__ (Array Int var3035))
(declare-const var858 var1704) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar 
(assert (not (= var858 null-var1704)))
(declare-const var777 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var777 null-String)))
(define-const var3873 var2361 (config/-1487781919 var858)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(declare-const var3873!1 var2361)
(assert (not (= var3873!1 null-var2361)))
(assert (= (baseJarName/2019956101 var3873!1) var777)) ; Statement: $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseJarName> = r1 
(define-const var2592 var2361 (config/-1487781919 var858)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var2052 var2396 (namingScheme/2019956101 var2592)) ; Statement: $r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> 
 ; Statement: if $r4 != null goto $r8 = "basejarname" 
(assert (not (= var2052 null-var2396))) ; Cond: $r4 != null 
(define-const var1978 String "basejarname") ; Statement: $r8 = "basejarname" 
(define-const var2723 var2361 (config/-1487781919 var858)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var3288 var2396 (namingScheme/2019956101 var2723)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> 
(assert true)
(define-const var358 String (getValue/-1445752687 (cast-from-var2396-to-var1283 var3288))) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>() 
(assert true)
(define-const var2752 Bool (= var1978 var358)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2752 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1585 var2206 var2206-init) ; Statement: $r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1571 (Array Int var3035) arr-var3035-init) ; Statement: $r10 = newarray (java.lang.Object)[1] 
(define-const var997 var2361 (config/-1487781919 var858)) ; Statement: $r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var1413 var2396 (namingScheme/2019956101 var997)) ; Statement: $r12 = $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> 
(assert true)
(define-const var3176 String (getValue/-1445752687 (cast-from-var2396-to-var1283 var1413))) ; Statement: $r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>() 
(declare-const var1571!1 (Array Int var3035))
(assert (not (= var1571!1 null-__Array__Int__var3035__)))
(assert (= (select var1571!1 0) (cast-from-String-to-var3035 var3176))) ; Statement: $r10[0] = $r13 
(assert true)
;(assert (<init>/1887414589 var1585 "The basejarname attribute is not compatible with the %s naming scheme" var1571!1)) ; Statement: specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Object[])>("The basejarname attribute is not compatible with the %s naming scheme", $r10) 

(declare-const var1585!1 var2206)
(declare-const var1072 String)
(declare-const var1571!2 (Array Int var3035))
 ; Statement: throw $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1487781919=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), baseJarName/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.lang.String), namingScheme/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var2396-to-var1283=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), var2206-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), arr-var3035-init=([], java.lang.Object[]), cast-from-String-to-var3035=([java.lang.String], java.lang.Object), <init>/1887414589=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, java.lang.Object[]], void)}
; {var1704=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar, var858=r0, var777=r1, var795=null_type, var2361=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3873=$r2, var2592=$r3, var2396=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme, var2052=$r4, var1978=$r8, var2723=$r5, var3288=$r6, var1283=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var358=$r7, var2752=$z0, var2206=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1585=$r9, var3035=java.lang.Object, var1571=$r10, var997=$r11, var1413=$r12, var3176=$r13, var1072="The basejarname attribute is not compatible with the %s naming scheme"}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar=var1704, r0=var858, r1=var777, null_type=var795, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var2361, $r2=var3873, $r3=var2592, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme=var2396, $r4=var2052, $r8=var1978, $r5=var2723, $r6=var3288, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1283, $r7=var358, $z0=var2752, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var2206, $r9=var1585, java.lang.Object=var3035, $r10=var1571, $r11=var997, $r12=var1413, $r13=var3176, "The basejarname attribute is not compatible with the %s naming scheme"=var1072}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseJarName> = r1;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme>;	if $r4 != null goto $r8 = "basejarname";	$r8 = "basejarname";	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r6 = $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme>;	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>();	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	if $z0 != 0 goto return;	$r9 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r10 = newarray (java.lang.Object)[1];	$r11 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r12 = $r11.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme>;	$r13 = virtualinvoke $r12.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>();	$r10[0] = $r13;	specialinvoke $r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,java.lang.Object[])>("The basejarname attribute is not compatible with the %s naming scheme", $r10);	throw $r9
;block_num 3