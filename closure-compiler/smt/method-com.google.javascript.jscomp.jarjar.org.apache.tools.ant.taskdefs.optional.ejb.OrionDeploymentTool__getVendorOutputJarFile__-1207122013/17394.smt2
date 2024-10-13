(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var629 0)
(declare-sort var1996 0)
(declare-sort var3075 0)
(declare-sort var2816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3075-init () var3075)
(declare-fun getDestDir/-2104074573 (var2816) var3075)
(declare-fun cast-from-var629-to-var2816 (var629) var2816)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun jarSuffix/-2134871521 (var629) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var3075 var3075 String) void)
(declare-const null-var629 var629)
(declare-const null-String String)
(declare-const var94 var629) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool 
(assert (not (= var94 null-var629)))
(declare-const var2554 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2554 null-String)))
(define-const var3764 var3075 var3075-init) ; Statement: $r0 = new java.io.File 
(assert true)
(define-const var3467 var3075 (getDestDir/-2104074573 (cast-from-var629-to-var2816 var94))) ; Statement: $r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: java.io.File getDestDir()>() 
(define-const var1586 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1586)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1586!1 String)
(assert (= var1586!1 ""))
(assert true)
(define-const var1659 String (append/672562846 var1586!1 var2554)) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var1586!2 String)
(assert (= var1586!2 (str.++ var1586!1 var2554)))
(define-const var953 String (jarSuffix/-2134871521 var94)) ; Statement: $r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: java.lang.String jarSuffix> 
(assert true)
(define-const var1775 String (append/672562846 var1659 var953)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1659!1 String)
(assert (= var1659!1 (str.++ var1659 var953)))
(assert true)
(define-const var3466 String (toString/-2075883882 var1775)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var3764 var3467 var3466)) ; Statement: specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r8, $r7) 

(declare-const var3764!1 var3075)
(declare-const var3467!1 var3075)
(declare-const var3466!1 String)
 ; Statement: return $r0 
(check-sat)
(get-model)
(get-unsat-core)
; {var3075-init=([], java.io.File), getDestDir/-2104074573=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], java.io.File), cast-from-var629-to-var2816=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), jarSuffix/-2134871521=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void)}
; {var629=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool, var94=r1, var2554=r3, var1996=null_type, var3075=java.io.File, var3764=$r0, var2816=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var3467=$r8, var1586=$r2, var1659=$r5, var953=$r4, var1775=$r6, var3466=$r7}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool=var629, r1=var94, r3=var2554, null_type=var1996, java.io.File=var3075, $r0=var3764, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2816, $r8=var3467, $r2=var1586, $r5=var1659, $r4=var953, $r6=var1775, $r7=var3466}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool;	r3 := @parameter0: java.lang.String;	$r0 = new java.io.File;	$r8 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: java.io.File getDestDir()>();	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r4 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.OrionDeploymentTool: java.lang.String jarSuffix>;	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r0.<java.io.File: void <init>(java.io.File,java.lang.String)>($r8, $r7);	return $r0
;block_num 1