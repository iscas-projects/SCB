(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2045 0)
(declare-sort var1845 0)
(declare-sort var2992 0)
(declare-sort var275 0)
(declare-sort var2552 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1487781919 (var2045) var2992)
(declare-fun baseJarName/2019956101 (var2992) String)
(declare-fun namingScheme/2019956101 (var2992) var275)
(declare-fun getValue/-1445752687 (var2552) String)
(declare-fun cast-from-var275-to-var2552 (var275) var2552)
(declare-const null-var2045 var2045)
(declare-const null-String String)
(declare-const null-var2992 var2992)
(declare-const null-var275 var275)
(declare-const var3322 var2045) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar 
(assert (not (= var3322 null-var2045)))
(declare-const var2532 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2532 null-String)))
(define-const var693 var2992 (config/-1487781919 var3322)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(declare-const var693!1 var2992)
(assert (not (= var693!1 null-var2992)))
(assert (= (baseJarName/2019956101 var693!1) var2532)) ; Statement: $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseJarName> = r1 
(define-const var375 var2992 (config/-1487781919 var3322)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var3667 var275 (namingScheme/2019956101 var375)) ; Statement: $r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> 
 ; Statement: if $r4 != null goto $r8 = "basejarname" 
(assert (not (= var3667 null-var275))) ; Cond: $r4 != null 
(define-const var2295 String "basejarname") ; Statement: $r8 = "basejarname" 
(define-const var369 var2992 (config/-1487781919 var3322)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var3461 var275 (namingScheme/2019956101 var369)) ; Statement: $r6 = $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> 
(assert true)
(define-const var3995 String (getValue/-1445752687 (cast-from-var275-to-var2552 var3461))) ; Statement: $r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>() 
(assert true)
(define-const var568 Bool (= var2295 var3995)) ; Statement: $z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var568 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1487781919=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), baseJarName/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.lang.String), namingScheme/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var275-to-var2552=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute)}
; {var2045=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar, var3322=r0, var2532=r1, var1845=null_type, var2992=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var693=$r2, var375=$r3, var275=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme, var3667=$r4, var2295=$r8, var369=$r5, var3461=$r6, var2552=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var3995=$r7, var568=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar=var2045, r0=var3322, r1=var2532, null_type=var1845, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var2992, $r2=var693, $r3=var375, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme=var275, $r4=var3667, $r8=var2295, $r5=var369, $r6=var3461, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2552, $r7=var3995, $z0=var568}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar;	r1 := @parameter0: java.lang.String;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseJarName> = r1;	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme>;	if $r4 != null goto $r8 = "basejarname";	$r8 = "basejarname";	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r6 = $r5.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme>;	$r7 = virtualinvoke $r6.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>();	$z0 = virtualinvoke $r8.<java.lang.String: boolean equals(java.lang.Object)>($r7);	if $z0 != 0 goto return;	return
;block_num 3