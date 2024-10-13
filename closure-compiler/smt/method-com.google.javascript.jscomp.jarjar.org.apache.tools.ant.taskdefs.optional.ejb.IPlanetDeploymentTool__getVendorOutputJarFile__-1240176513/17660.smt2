(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1581 0)
(declare-sort var252 0)
(declare-sort var782 0)
(declare-sort var2619 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var782-init () var782)
(declare-fun getDestDir/-2104074573 (var2619) var782)
(declare-fun cast-from-var1581-to-var2619 (var1581) var2619)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun jarSuffix/-1920223749 (var1581) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var782 var782 String) void)
(declare-fun toString/180451120 (var782) String)
(declare-fun log/1006881114 (var2619 String Int) void)
(declare-const null-var1581 var1581)
(declare-const null-String String)
(declare-const var1780 var1581) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool 
(assert (not (= var1780 null-var1581)))
(declare-const var1009 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1009 null-String)))
(define-const var2292 var782 var782-init) ; Statement: $r0 = new java.io.File 
(assert true)
(define-const var3263 var782 (getDestDir/-2104074573 (cast-from-var1581-to-var2619 var1780))) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.io.File getDestDir()>() 
(define-const var1419 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1419)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1419!1 String)
(assert (= var1419!1 ""))
(assert true)
(define-const var3468 String (append/672562846 var1419!1 var1009)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1419!2 String)
(assert (= var1419!2 (str.++ var1419!1 var1009)))
(define-const var1985 String (jarSuffix/-1920223749 var1780)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String jarSuffix> 
(assert true)
(define-const var23 String (append/672562846 var3468 var1985)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3468!1 String)
(assert (= var3468!1 (str.++ var3468 var1985)))
(assert true)
(define-const var2145 String (toString/-2075883882 var23)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var2292 var3263 var2145)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r8, $r7) 

(declare-const var2292!1 var782)
(declare-const var3263!1 var782)
(declare-const var2145!1 String)
(define-const var3770 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3770)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3770!1 String)
(assert (= var3770!1 ""))
(assert true)
(define-const var2950 String (append/672562846 var3770!1 "JAR file name: ")) ; Statement: $r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JAR file name: ") 
(declare-const var3770!2 String)
(assert (= var3770!2 (str.++ var3770!1 "JAR file name: ")))
(assert true)
(define-const var1109 String (toString/180451120 var2292!1)) ; Statement: $r10 = virtualinvoke $r0.<java.io.File: java.lang.String toString()>() 
(assert true)
(define-const var1179 String (append/672562846 var2950 var1109)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var2950!1 String)
(assert (= var2950!1 (str.++ var2950 var1109)))
(assert true)
(define-const var3606 String (toString/-2075883882 var1179)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var1581-to-var2619 var1780) var3606 3)) ; Statement: virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: void log(java.lang.String,int)>($r13, 3) 

(declare-const var1780!1 var1581)
(declare-const var3606!1 String)
(declare-const var3364 Int)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var782-init=([], java.io.File), getDestDir/-2104074573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.io.File), cast-from-var1581-to-var2619=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), jarSuffix/-1920223749=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), toString/180451120=([java.io.File], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void)}
; {var1581=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool, var1780=r1, var1009=r3, var252=null_type, var782=java.io.File, var2292=$r0, var2619=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3263=$r8, var1419=$r2, var3468=$r5, var1985=$r4, var23=$r6, var2145=$r7, var3770=$r9, var2950=$r11, var1109=$r10, var1179=$r12, var3606=$r13, var3364=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool=var1581, r1=var1780, r3=var1009, null_type=var252, java.io.File=var782, $r0=var2292, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2619, $r8=var3263, $r2=var1419, $r5=var3468, $r4=var1985, $r6=var23, $r7=var2145, $r9=var3770, $r11=var2950, $r10=var1109, $r12=var1179, $r13=var3606, 3=var3364}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.io.File: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool;	r3 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.io.File getDestDir()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String jarSuffix>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r8, $r7);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JAR file name: ");	$r10 = virtualinvoke $r0.<java.io.File: java.lang.String toString()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: void log(java.lang.String,int)>($r13, 3);	return $r0
;block_num 1