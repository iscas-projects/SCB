(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2378 0)
(declare-sort var3618 0)
(declare-sort var509 0)
(declare-sort var3037 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-1487781919 (var2378) var509)
(declare-fun namingScheme/2019956101 (var509) var3618)
(declare-fun getValue/-1445752687 (var3037) String)
(declare-fun cast-from-var3618-to-var3037 (var3618) var3037)
(declare-const null-var2378 var2378)
(declare-const null-var3618 var3618)
(declare-const null-var509 var509)
(declare-const var1583 var2378) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar 
(assert (not (= var1583 null-var2378)))
(declare-const var2845 var3618) ; Statement: r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme 
(assert (not (= var2845 null-var3618)))
(define-const var3590 var509 (config/-1487781919 var1583)) ; Statement: $r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(declare-const var3590!1 var509)
(assert (not (= var3590!1 null-var509)))
(assert (= (namingScheme/2019956101 var3590!1) var2845)) ; Statement: $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> = r1 
(define-const var2045 String "basejarname") ; Statement: $r6 = "basejarname" 
(define-const var12 var509 (config/-1487781919 var1583)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var404 var3618 (namingScheme/2019956101 var12)) ; Statement: $r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> 
(assert true)
(define-const var3049 String (getValue/-1445752687 (cast-from-var3618-to-var3037 var404))) ; Statement: $r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>() 
(assert true)
(define-const var1880 Bool (= var2045 var3049)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1880 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-1487781919=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), namingScheme/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var3618-to-var3037=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute)}
; {var2378=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar, var1583=r0, var3618=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme, var2845=r1, var509=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3590=$r2, var2045=$r6, var12=$r3, var404=$r4, var3037=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var3049=$r5, var1880=$z0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar=var2378, r0=var1583, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme=var3618, r1=var2845, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var509, $r2=var3590, $r6=var2045, $r3=var12, $r4=var404, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var3037, $r5=var3049, $z0=var1880}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar;	r1 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme;	$r2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> = r1;	$r6 = "basejarname";	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r4 = $r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme>;	$r5 = virtualinvoke $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>();	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>($r5);	if $z0 != 0 goto return;	return
;block_num 2