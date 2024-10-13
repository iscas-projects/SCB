(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3697 0)
(declare-sort var846 0)
(declare-sort var1305 0)
(declare-sort var816 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun descriptorName/-1920223749 (var3697) String)
(declare-fun iasDescriptorName/-1920223749 (var3697) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getIasDescriptorName/273383872 (var3697) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun log/1006881114 (var816 String Int) void)
(declare-fun cast-from-var3697-to-var816 (var3697) var816)
(declare-fun processDescriptor/1530257344 (var816 String var1305) void)
(declare-const null-var3697 var3697)
(declare-const null-String String)
(declare-const null-var1305 var1305)
(declare-const var3487 var3697) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool 
(assert (not (= var3487 null-var3697)))
(declare-const var128 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var128 null-String)))
(declare-const var1421 var1305) ; Statement: r10 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser 
(assert (not (= var1421 null-var1305)))
(declare-const var3487!1 var3697)
(assert (not (= var3487!1 null-var3697)))
(assert (= (descriptorName/-1920223749 var3487!1) var128)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String descriptorName> = r1 
(declare-const var3487!2 var3697)
(assert (not (= var3487!2 null-var3697)))
(assert (= (iasDescriptorName/-1920223749 var3487!2) null-String)) ; Statement: r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String iasDescriptorName> = null 
(define-const var21 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var21)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var21!1 String)
(assert (= var21!1 ""))
(assert true)
(define-const var1624 String (append/672562846 var21!1 "iPlanet Deployment Tool processing: ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("iPlanet Deployment Tool processing: ") 
(declare-const var21!2 String)
(assert (= var21!2 (str.++ var21!1 "iPlanet Deployment Tool processing: ")))
(assert true)
(define-const var3043 String (append/672562846 var1624 var128)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var1624!1 String)
(assert (= var1624!1 (str.++ var1624 var128)))
(assert true)
(define-const var2298 String (append/672562846 var3043 " (and ")) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (and ") 
(declare-const var3043!1 String)
(assert (= var3043!1 (str.++ var3043 " (and ")))
(assert true)
(define-const var1183 String (getIasDescriptorName/273383872 var3487!2)) ; Statement: $r5 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String getIasDescriptorName()>() 
(assert true)
(define-const var894 String (append/672562846 var2298 var1183)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2298!1 String)
(assert (= var2298!1 (str.++ var2298 var1183)))
(assert true)
(define-const var766 String (append/672562846 var894 ")")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var894!1 String)
(assert (= var894!1 (str.++ var894 ")")))
(assert true)
(define-const var1263 String (toString/-2075883882 var766)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (log/1006881114 (cast-from-var3697-to-var816 var3487!2) var1263 3)) ; Statement: virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: void log(java.lang.String,int)>($r9, 3) 

(declare-const var3487!3 var3697)
(declare-const var1263!1 String)
(declare-const var1455 Int)
(assert true)
;(assert (processDescriptor/1530257344 (cast-from-var3697-to-var816 var3487!3) var128 var1421)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: void processDescriptor(java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>(r1, r10) 

(declare-const var3487!4 var3697)
(declare-const var128!1 String)
(declare-const var1421!1 var1305)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {descriptorName/-1920223749=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], java.lang.String), iasDescriptorName/-1920223749=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getIasDescriptorName/273383872=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), log/1006881114=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, int], void), cast-from-var3697-to-var816=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), processDescriptor/1530257344=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, java.lang.String, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser], void)}
; {var3697=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool, var3487=r0, var128=r1, var846=null_type, var1305=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var1421=r10, var21=$r2, var1624=$r3, var3043=$r4, var2298=$r6, var1183=$r5, var894=$r7, var766=$r8, var1263=$r9, var816=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1455=3}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool=var3697, r0=var3487, r1=var128, null_type=var846, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var1305, r10=var1421, $r2=var21, $r3=var1624, $r4=var3043, $r6=var2298, $r5=var1183, $r7=var894, $r8=var766, $r9=var1263, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var816, 3=var1455}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool;	r1 := @parameter0: java.lang.String;	r10 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String descriptorName> = r1;	r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String iasDescriptorName> = null;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("iPlanet Deployment Tool processing: ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (and ");	$r5 = specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String getIasDescriptorName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: void log(java.lang.String,int)>($r9, 3);	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool: void processDescriptor(java.lang.String,com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser)>(r1, r10);	return
;block_num 1