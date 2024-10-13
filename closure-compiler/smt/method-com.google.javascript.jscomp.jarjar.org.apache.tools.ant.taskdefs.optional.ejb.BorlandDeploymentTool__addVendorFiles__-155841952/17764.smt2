(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var508 0)
(declare-sort var1795 0)
(declare-sort var1232 0)
(declare-sort var3325 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun version/-1107109494 (var508) Int)
(declare-fun var3325-init () var3325)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var3325 String) void)
(declare-const null-var508 var508)
(declare-const null-var1795 var1795)
(declare-const null-String String)
(declare-const var1340 var508) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool 
(assert (not (= var1340 null-var508)))
(declare-const var865 var1795) ; Statement: r23 := @parameter0: java.util.Hashtable 
(assert (not (= var865 null-var1795)))
(declare-const var807 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var807 null-String)))
(define-const var3889 Int (version/-1107109494 var1340)) ; Statement: $i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version> 
 ; Statement: if $i0 == 5 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version> 
(assert (not (= var3889 5))) ; Negate: Cond: $i0 == 5  
(define-const var3036 Int (version/-1107109494 var1340)) ; Statement: $i2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version> 
 ; Statement: if $i2 == 4 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version> 
(assert (not (= var3036 4))) ; Negate: Cond: $i2 == 4  
(define-const var157 var3325 var3325-init) ; Statement: $r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var1529 String String-init) ; Statement: $r29 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1529)) ; Statement: specialinvoke $r29.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1529!1 String)
(assert (= var1529!1 ""))
(assert true)
(define-const var3160 String (append/672562846 var1529!1 "version ")) ; Statement: $r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("version ") 
(declare-const var1529!2 String)
(assert (= var1529!2 (str.++ var1529!1 "version ")))
(define-const var3619 Int (version/-1107109494 var1340)) ; Statement: $i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version> 
(assert true)
(define-const var3295 String (append/-1001720160 var3160 var3619)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3) 
(declare-const var3160!1 String)
(assert (str.prefixof var3160 var3160!1))
(assert true)
(define-const var2162 String (append/672562846 var3295 " is not supported")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported") 
(declare-const var3295!1 String)
(assert (= var3295!1 (str.++ var3295 " is not supported")))
(assert true)
(define-const var2806 String (toString/-2075883882 var2162)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1864341934 var157 var2806)) ; Statement: specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r33) 

(declare-const var157!1 var3325)
(declare-const var2806!1 String)
 ; Statement: throw $r28 
(check-sat)
(get-model)
(get-unsat-core)
; {version/-1107109494=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool], int), var3325-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var508=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool, var1340=r0, var1795=java.util.Hashtable, var865=r23, var807=r2, var1232=null_type, var3889=$i0, var3036=$i2, var3325=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var157=$r28, var1529=$r29, var3160=$r30, var3619=$i3, var3295=$r31, var2162=$r32, var2806=$r33}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool=var508, r0=var1340, java.util.Hashtable=var1795, r23=var865, r2=var807, null_type=var1232, $i0=var3889, $i2=var3036, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3325, $r28=var157, $r29=var1529, $r30=var3160, $i3=var3619, $r31=var3295, $r32=var2162, $r33=var2806}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool;	r23 := @parameter0: java.util.Hashtable;	r2 := @parameter1: java.lang.String;	$i0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version>;	if $i0 == 5 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version>;	$i2 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version>;	if $i2 == 4 goto $i1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version>;	$r28 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r29 = new java.lang.StringBuilder;	specialinvoke $r29.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r29.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("version ");	$i3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.BorlandDeploymentTool: int version>;	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>($i3);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is not supported");	$r33 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r28.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r33);	throw $r28
;block_num 3