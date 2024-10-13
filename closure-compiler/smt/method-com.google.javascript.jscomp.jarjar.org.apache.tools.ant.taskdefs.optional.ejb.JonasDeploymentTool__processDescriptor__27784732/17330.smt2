(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3833 0)
(declare-sort var2070 0)
(declare-sort var2393 0)
(declare-sort var2197 0)
(declare-sort var3965 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun descriptorName/760687125 (var3833) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1006881114 (var2197 String Int) void)
(declare-fun cast-from-var3833-to-var2197 (var3833) var2197)
(declare-fun processDescriptor/1530257344 (var2197 String var2393) void)
(declare-fun outputdir/760687125 (var3833) var3965)
(declare-const null-var3833 var3833)
(declare-const null-String String)
(declare-const null-var2393 var2393)
(declare-const null-var3965 var3965)
(declare-const var3986 var3833) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool 
(assert (not (= var3986 null-var3833)))
(declare-const var2478 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2478 null-String)))
(declare-const var3108 var2393) ; Statement: r7 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser 
(assert (not (= var3108 null-var2393)))
(declare-const var3986!1 var3833)
(assert (not (= var3986!1 null-var3833)))
(assert (= (descriptorName/760687125 var3986!1) var2478)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> = r1 
(define-const var559 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var559)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var559!1 String)
(assert (= var559!1 ""))
(assert true)
(define-const var2710 String (append/672562846 var559!1 "JOnAS Deployment Tool processing: ")) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JOnAS Deployment Tool processing: ") 
(declare-const var559!2 String)
(assert (= var559!2 (str.++ var559!1 "JOnAS Deployment Tool processing: ")))
(define-const var3904 String (descriptorName/760687125 var3986!1)) ; Statement: $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> 
(assert true)
(define-const var1091 String (append/672562846 var2710 var3904)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2710!1 String)
(assert (= var2710!1 (str.++ var2710 var3904)))
(assert true)
(define-const var2451 String (toString/-2075883882 var1091)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var3833-to-var2197 var3986!1) var2451 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: void log(java.lang.String,int)>($r6, 3) 

(declare-const var3986!2 var3833)
(declare-const var2451!1 String)
(declare-const var1585 Int)
(define-const var3678 String (descriptorName/760687125 var3986!2)) ; Statement: $r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> 
(assert true)
;(assert (processDescriptor/1530257344 (cast-from-var3833-to-var2197 var3986!2) var3678 var3108)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: void processDescriptor(java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>($r8, r7) 

(declare-const var3986!3 var3833)
(declare-const var3678!1 String)
(declare-const var3108!1 var2393)
(define-const var1122 var3965 (outputdir/760687125 var3986!3)) ; Statement: $r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File outputdir> 
 ; Statement: if $r9 == null goto return 
(assert (= var1122 null-var3965)) ; Cond: $r9 == null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {descriptorName/760687125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), cast-from-var3833-to-var2197=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), processDescriptor/1530257344=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser], void), outputdir/760687125=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool], java.io.File)}
; {var3833=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool, var3986=r0, var2478=r1, var2070=null_type, var2393=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var3108=r7, var559=$r2, var2710=$r4, var3904=$r3, var1091=$r5, var2451=$r6, var2197=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1585=3, var3678=$r8, var3965=java.io.File, var1122=$r9}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool=var3833, r0=var3986, r1=var2478, null_type=var2070, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var2393, r7=var3108, $r2=var559, $r4=var2710, $r3=var3904, $r5=var1091, $r6=var2451, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2197, 3=var1585, $r8=var3678, java.io.File=var3965, $r9=var1122}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool;	r1 := @parameter0: java.lang.String;	r7 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName> = r1;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("JOnAS Deployment Tool processing: ");	$r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName>;	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: void log(java.lang.String,int)>($r6, 3);	$r8 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.lang.String descriptorName>;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: void processDescriptor(java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>($r8, r7);	$r9 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.JonasDeploymentTool: java.io.File outputdir>;	if $r9 == null goto return;	return
;block_num 2