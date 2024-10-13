(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1769 0)
(declare-sort var3980 0)
(declare-sort var3046 0)
(declare-sort var1537 0)
(declare-sort var1589 0)
(declare-sort var1082 0)
(declare-sort var1227 0)
(declare-sort var34 0)
(declare-sort var3916 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var1537-init () var1537)
(declare-fun getConfig/-1194828243 (var1082) var1589)
(declare-fun cast-from-var1769-to-var1082 (var1769) var1082)
(declare-fun descriptorDir/2019956101 (var1589) var1537)
(declare-fun getIasDescriptorName/273383872 (var1769) String)
(declare-fun <init>/-1833447926 (var1537 var1537 String) void)
(declare-fun exists/1072868559 (var1537) Bool)
(declare-fun var1227-init () var1227)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var34) String)
(declare-fun cast-from-var1537-to-var34 (var1537) var34)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getLocation/-138311407 (var1082) var3916)
(declare-fun <init>/-469549130 (var1227 String var3916) void)
(declare-const null-var1769 var1769)
(declare-const null-String String)
(declare-const null-var3046 var3046)
(declare-const var1537-separatorChar Int)
(declare-const var3714 var1769) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool 
(assert (not (= var3714 null-var1769)))
(declare-const var291 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var291 null-String)))
(declare-const var2224 var3046) ; Statement: r28 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser 
(assert (not (= var2224 null-var3046)))
(define-const var2527 Int var1537-separatorChar) ; Statement: $c0 = <java.io.File: char separatorChar> 
(define-const var334 Int (cast-from-Int-to-Int var2527)) ; Statement: $i3 = (int) $c0 
(assert true)
(define-const var3088 Int (lastIndexOf/-1292097097 var291 var334)) ; Statement: $i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i3) 
(define-const var1517 Int (+ var3088 1)) ; Statement: i2 = $i1 + 1 
(assert (and true (and (>= var1517 0) (>= (str.len var291) var1517))))
(define-const var2691 String (substring/850833817 var291 var1517)) ; Statement: r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2) 
(assert true)
(define-const var2663 Bool (= var2691 "ejb-jar.xml")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("ejb-jar.xml") 
 ; Statement: if $z0 == 0 goto $r30 = new java.io.File 
(assert (= (ite var2663 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1210 var1537 var1537-init) ; Statement: $r30 = new java.io.File 
(assert true)
(define-const var690 var1589 (getConfig/-1194828243 (cast-from-var1769-to-var1082 var3714))) ; Statement: $r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var1195 var1537 (descriptorDir/2019956101 var690)) ; Statement: $r5 = $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(assert true)
(define-const var2517 String (getIasDescriptorName/273383872 var3714)) ; Statement: $r6 = specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String getIasDescriptorName()>() 
(assert true)
;(assert (<init>/-1833447926 var1210 var1195 var2517)) ; Statement: specialinvoke $r30.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r6) 

(declare-const var1210!1 var1537)
(declare-const var1195!1 var1537)
(declare-const var2517!1 String)
(assert true)
(define-const var1478 Bool (exists/1072868559 var1210!1)) ; Statement: $z1 = virtualinvoke $r30.<java.io.File: boolean exists()>() 
 ; Statement: if $z1 == 0 goto $r32 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(assert (= (ite var1478 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1515 var1227 var1227-init) ; Statement: $r32 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException 
(define-const var3736 String String-init) ; Statement: $r31 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3736)) ; Statement: specialinvoke $r31.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3736!1 String)
(assert (= var3736!1 ""))
(assert true)
(define-const var907 String (append/672562846 var3736!1 "The iAS-specific EJB descriptor (")) ; Statement: $r9 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The iAS-specific EJB descriptor (") 
(declare-const var3736!2 String)
(assert (= var3736!2 (str.++ var3736!1 "The iAS-specific EJB descriptor (")))
(assert true)
(define-const var2426 String (append/-1031950772 var907 (cast-from-var1537-to-var34 var1210!1))) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r30) 
(declare-const var907!1 String)
(assert (str.prefixof var907 var907!1))
(assert true)
(define-const var1099 String (append/672562846 var2426 ") was not found.")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") was not found.") 
(declare-const var2426!1 String)
(assert (= var2426!1 (str.++ var2426 ") was not found.")))
(assert true)
(define-const var1174 String (toString/-2075883882 var1099)) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var2923 var3916 (getLocation/-138311407 (cast-from-var1769-to-var1082 var3714))) ; Statement: $r12 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>() 
(assert true)
;(assert (<init>/-469549130 var1515 var1174 var2923)) ; Statement: specialinvoke $r32.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r13, $r12) 

(declare-const var1515!1 var1227)
(declare-const var1174!1 String)
(declare-const var2923!1 var3916)
 ; Statement: throw $r32 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-Int-to-Int=([char], int), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String), var1537-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), cast-from-var1769-to-var1082=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), getIasDescriptorName/273383872=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), var1227-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1537-to-var34=([java.io.File], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getLocation/-138311407=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location), <init>/-469549130=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location], void)}
; {var1769=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool, var3714=r3, var291=r0, var3980=null_type, var3046=com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser, var2224=r28, var1537=java.io.File, var2527=$c0, var334=$i3, var3088=$i1, var1517=i2, var2691=r1, var2663=$z0, var1210=$r30, var1589=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var1082=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var690=$r4, var1195=$r5, var2517=$r6, var1478=$z1, var1227=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1515=$r32, var3736=$r31, var907=$r9, var34=java.lang.Object, var2426=$r10, var1099=$r11, var1174=$r13, var3916=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location, var2923=$r12}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool=var1769, r3=var3714, r0=var291, null_type=var3980, com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser=var3046, r28=var2224, java.io.File=var1537, $c0=var2527, $i3=var334, $i1=var3088, i2=var1517, r1=var2691, $z0=var2663, $r30=var1210, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1589, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var1082, $r4=var690, $r5=var1195, $r6=var2517, $z1=var1478, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var1227, $r32=var1515, $r31=var3736, $r9=var907, java.lang.Object=var34, $r10=var2426, $r11=var1099, $r13=var1174, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location=var3916, $r12=var2923}
;seq <java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool;	r0 := @parameter0: java.lang.String;	r28 := @parameter1: com.google.javascript.jscomp.jarjar.javax.xml.parsers.SAXParser;	$c0 = <java.io.File: char separatorChar>;	$i3 = (int) $c0;	$i1 = virtualinvoke r0.<java.lang.String: int lastIndexOf(int)>($i3);	i2 = $i1 + 1;	r1 = virtualinvoke r0.<java.lang.String: java.lang.String substring(int)>(i2);	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("ejb-jar.xml");	if $z0 == 0 goto $r30 = new java.io.File;	$r30 = new java.io.File;	$r4 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r5 = $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r6 = specialinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: java.lang.String getIasDescriptorName()>();	specialinvoke $r30.<java.io.File: void <init>(java.io.File,java.lang.String)>($r5, $r6);	$z1 = virtualinvoke $r30.<java.io.File: boolean exists()>();	if $z1 == 0 goto $r32 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r32 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r31 = new java.lang.StringBuilder;	specialinvoke $r31.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The iAS-specific EJB descriptor (");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r30);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") was not found.");	$r13 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	$r12 = virtualinvoke r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location getLocation()>();	specialinvoke $r32.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String,com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Location)>($r13, $r12);	throw $r32
;block_num 3