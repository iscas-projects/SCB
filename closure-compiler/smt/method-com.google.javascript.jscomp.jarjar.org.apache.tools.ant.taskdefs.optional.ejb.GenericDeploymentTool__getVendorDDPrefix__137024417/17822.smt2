(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1944 0)
(declare-sort var3385 0)
(declare-sort var1375 0)
(declare-sort var2668 0)
(declare-sort var590 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun config/-208040463 (var1944) var1375)
(declare-fun namingScheme/2019956101 (var1375) var2668)
(declare-fun getValue/-1445752687 (var590) String)
(declare-fun cast-from-var2668-to-var590 (var2668) var590)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun baseNameTerminator/2019956101 (var1375) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1944 var1944)
(declare-const null-String String)
(declare-const var1083 var1944) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool 
(assert (not (= var1083 null-var1944)))
(declare-const var596 String) ; Statement: r15 := @parameter0: java.lang.String 
(assert (not (= var596 null-String)))
(declare-const var2280 String) ; Statement: r7 := @parameter1: java.lang.String 
(assert (not (= var2280 null-String)))
(define-const var3985 String null-String) ; Statement: r20 = null 
(define-const var1246 var1375 (config/-208040463 var1083)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var1312 var2668 (namingScheme/2019956101 var1246)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> 
(assert true)
(define-const var1568 String (getValue/-1445752687 (cast-from-var2668-to-var590 var1312))) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>() 
(assert true)
(define-const var572 Bool (= var1568 "descriptor")) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("descriptor") 
 ; Statement: if $z0 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(assert (not (= (ite var572 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1818 String String-init) ; Statement: $r22 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1818)) ; Statement: specialinvoke $r22.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1818!1 String)
(assert (= var1818!1 ""))
(assert true)
(define-const var90 String (append/672562846 var1818!1 var596)) ; Statement: $r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15) 
(declare-const var1818!2 String)
(assert (= var1818!2 (str.++ var1818!1 var596)))
(define-const var1129 var1375 (config/-208040463 var1083)) ; Statement: $r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config> 
(define-const var477 String (baseNameTerminator/2019956101 var1129)) ; Statement: $r17 = $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseNameTerminator> 
(assert true)
(define-const var3516 String (append/672562846 var90 var477)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var90!1 String)
(assert (= var90!1 (str.++ var90 var477)))
(assert true)
(define-const var3985!1 String (toString/-2075883882 var3516)) ; Statement: r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return r20] 
(assert true) ; Non Conditional
 ; Statement: return r20 
(check-sat)
(get-model)
(get-unsat-core)
; {config/-208040463=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), namingScheme/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var2668-to-var590=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), baseNameTerminator/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1944=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1083=r0, var596=r15, var3385=null_type, var2280=r7, var3985=r20, var1375=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var1246=$r1, var2668=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme, var1312=$r2, var590=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var1568=$r3, var572=$z0, var1818=$r22, var90=$r18, var1129=$r16, var477=$r17, var3516=$r19}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1944, r0=var1083, r15=var596, null_type=var3385, r7=var2280, r20=var3985, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1375, $r1=var1246, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme=var2668, $r2=var1312, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var590, $r3=var1568, $z0=var572, $r22=var1818, $r18=var90, $r16=var1129, $r17=var477, $r19=var3516}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool;	r15 := @parameter0: java.lang.String;	r7 := @parameter1: java.lang.String;	r20 = null;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r2 = $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("descriptor");	if $z0 == 0 goto $r4 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r22 = new java.lang.StringBuilder;	specialinvoke $r22.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r15);	$r16 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config config>;	$r17 = $r16.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseNameTerminator>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return r20];	return r20
;block_num 3