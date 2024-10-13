(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3168 0)
(declare-sort var2011 0)
(declare-sort var3749 0)
(declare-sort var267 0)
(declare-sort var3382 0)
(declare-sort var1673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getConfig/-1194828243 (var267) var3749)
(declare-fun cast-from-var3168-to-var267 (var3168) var267)
(declare-fun namingScheme/2019956101 (var3749) var3382)
(declare-fun getValue/-1445752687 (var1673) String)
(declare-fun cast-from-var3382-to-var1673 (var3382) var1673)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1006881114 (var267 String Int) void)
(declare-const null-var3168 var3168)
(declare-const null-String String)
(declare-const var3063 var3168) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool 
(assert (not (= var3063 null-var3168)))
(declare-const var2980 String) ; Statement: r8 := @parameter0: java.lang.String 
(assert (not (= var2980 null-String)))
(define-const var3710 String null-String) ; Statement: r12 = null 
(assert true)
(define-const var732 var3749 (getConfig/-1194828243 (cast-from-var3168-to-var267 var3063))) ; Statement: $r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var321 var3382 (namingScheme/2019956101 var732)) ; Statement: $r2 = $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme> 
(assert true)
(define-const var1314 String (getValue/-1445752687 (cast-from-var3382-to-var1673 var321))) ; Statement: $r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>() 
(assert true)
(define-const var53 Bool (= var1314 "descriptor")) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("descriptor") 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var53 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if r12 != null goto $r13 = new java.lang.StringBuilder 
(assert (not (= var3710 null-String))) ; Cond: r12 != null 
(define-const var2258 String String-init) ; Statement: $r13 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2258)) ; Statement: specialinvoke $r13.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2258!1 String)
(assert (= var2258!1 ""))
(assert true)
(define-const var3844 String (append/672562846 var2258!1 "JAR base name: ")) ; Statement: $r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JAR base name: ") 
(declare-const var2258!2 String)
(assert (= var2258!2 (str.++ var2258!1 "JAR base name: ")))
(assert true)
(define-const var1343 String (append/672562846 var3844 var3710)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12) 
(declare-const var3844!1 String)
(assert (= var3844!1 (str.++ var3844 var3710)))
(assert true)
(define-const var3489 String (toString/-2075883882 var1343)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var3168-to-var267 var3063) var3489 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: void log(java.lang.String,int)>($r7, 3) 

(declare-const var3063!1 var3168)
(declare-const var3489!1 String)
(declare-const var1271 Int)
 ; Statement: return r12 
(check-sat)
(get-model)
(get-unsat-core)
; {getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), cast-from-var3168-to-var267=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), namingScheme/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme), getValue/-1445752687=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute], java.lang.String), cast-from-var3382-to-var1673=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void)}
; {var3168=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool, var3063=r0, var2980=r8, var2011=null_type, var3710=r12, var3749=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var267=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var732=$r1, var3382=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme, var321=$r2, var1673=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, var1314=$r3, var53=$z0, var2258=$r13, var3844=$r5, var1343=$r6, var3489=$r7, var1271=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool=var3168, r0=var3063, r8=var2980, null_type=var2011, r12=var3710, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var3749, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var267, $r1=var732, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme=var3382, $r2=var321, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var1673, $r3=var1314, $z0=var53, $r13=var2258, $r5=var3844, $r6=var1343, $r7=var3489, 3=var1271}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool;	r8 := @parameter0: java.lang.String;	r12 = null;	$r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r2 = $r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme namingScheme>;	$r3 = virtualinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$NamingScheme: java.lang.String getValue()>();	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>("descriptor");	if $z0 == 0 goto (branch);	if r12 != null goto $r13 = new java.lang.StringBuilder;	$r13 = new java.lang.StringBuilder;	specialinvoke $r13.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JAR base name: ");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r12);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: void log(java.lang.String,int)>($r7, 3);	return r12
;block_num 3