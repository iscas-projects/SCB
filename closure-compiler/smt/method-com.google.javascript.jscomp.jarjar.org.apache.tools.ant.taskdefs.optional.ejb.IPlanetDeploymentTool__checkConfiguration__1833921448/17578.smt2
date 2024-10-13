(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1810 0)
(declare-sort var3066 0)
(declare-sort var2501 0)
(declare-sort var3157 0)
(declare-sort var1573 0)
(declare-sort var3666 0)
(declare-sort var3688 0)
(declare-sort var2455 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun getConfig/-1194828243 (var3666) var1573)
(declare-fun cast-from-var1810-to-var3666 (var1810) var3666)
(declare-fun baseJarName/2019956101 (var1573) String)
(declare-fun var3688-init () var3688)
(declare-fun getLocation/-138311407 (var3666) var2455)
(declare-fun <init>/-469549130 (var3688 String var2455) void)
(declare-const null-var1810 var1810)
(declare-const null-String String)
(declare-const null-var2501 var2501)
(declare-const var3157-separatorChar Int)
(declare-const var1442 var1810) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool 
(assert (not (= var1442 null-var1810)))
(declare-const var3733 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var3733 null-String)))
(declare-const var3933 var2501) ; Statement: r28 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser 
(assert (not (= var3933 null-var2501)))
(define-const var1450 Int var3157-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(define-const var3823 Int (cast-from-Int-to-Int var1450)) ; Statement: $i3 = (int) $c0 
(assert true)
(define-const var3479 Int (lastIndexOf/-1292097097 var3733 var3823)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i3) 
(define-const var1759 Int (+ var3479 1)) ; Statement: i2 = $i1 + 1 
(assert (and true (and (>= var1759 0) (>= (str.len var3733) var1759))))
(define-const var248 String (substring/850833817 var3733 var1759)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert true)
(define-const var415 Bool (= var248 "ejb-jar.xml")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("ejb-jar.xml") 
 ; Statement: if $z0 == 0 goto $r30 = new java.io.File 
(assert (not (= (ite var415 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var1394 var1573 (getConfig/-1194828243 (cast-from-var1810-to-var3666 var1442))) ; Statement: $r24 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var2 String (baseJarName/2019956101 var1394)) ; Statement: $r25 = $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseJarName> 
 ; Statement: if $r25 != null goto $r30 = new java.io.File 
(assert (not (not (= var2 null-String)))) ; Negate: Cond: $r25 != null  
(define-const var1275 var3688 var3688-init) ; Statement: $r29 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert true)
(define-const var1119 var2455 (getLocation/-138311407 (cast-from-var1810-to-var3666 var1442))) ; Statement: $r27 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1275 "No name specified for the completed JAR file.  The EJB descriptor should be prepended with the JAR name or it should be specified using the attribute \u0022basejarname\u0022 in the \u0022ejbjar\u0022 task." var1119)) ; Statement: specialinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("No name specified for the completed JAR file.  The EJB descriptor should be prepended with the JAR name or it should be specified using the attribute \"basejarname\" in the \"ejbjar\" task.", $r27) 

(declare-const var1275!1 var3688)
(declare-const var1051 String)
(declare-const var1119!1 var2455)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), cast-from-var1810-to-var3666=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), baseJarName/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.lang.String), var3688-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), getLocation/-138311407=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1810=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool, var1442=r3, var3733=r0, var3066=null_type, var2501=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var3933=r28, var3157=java.io.File, var1450=$c0, var3823=$i3, var3479=$i1, var1759=i2, var248=r1, var415=$z0, var1573=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var3666=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var1394=$r24, var2=$r25, var3688=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1275=$r29, var2455=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var1119=$r27, var1051="No name specified for the completed JAR file.  The EJB descriptor should be prepended with the JAR name or it should be specified using the attribute \"basejarname\" in the \"ejbjar\" task."}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool=var1810, r3=var1442, r0=var3733, null_type=var3066, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var2501, r28=var3933, java.io.File=var3157, $c0=var1450, $i3=var3823, $i1=var3479, i2=var1759, r1=var248, $z0=var415, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1573, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var3666, $r24=var1394, $r25=var2, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var3688, $r29=var1275, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var2455, $r27=var1119, "No name specified for the completed JAR file.  The EJB descriptor should be prepended with the JAR name or it should be specified using the attribute \"basejarname\" in the \"ejbjar\" task."=var1051}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool;	r0 := @parameter0: java.lang.String;	r28 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser;	$c0 = <java.io.File: char separatorChar>;	$i3 = (int) $c0;	$i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i3);	i2 = $i1 + 1;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("ejb-jar.xml");	if $z0 == 0 goto $r30 = new java.io.File;	$r24 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r25 = $r24.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.lang.String baseJarName>;	if $r25 != null goto $r30 = new java.io.File;	$r29 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r27 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r29.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>("No name specified for the completed JAR file.  The EJB descriptor should be prepended with the JAR name or it should be specified using the attribute \"basejarname\" in the \"ejbjar\" task.", $r27);	throw $r29
;block_num 3