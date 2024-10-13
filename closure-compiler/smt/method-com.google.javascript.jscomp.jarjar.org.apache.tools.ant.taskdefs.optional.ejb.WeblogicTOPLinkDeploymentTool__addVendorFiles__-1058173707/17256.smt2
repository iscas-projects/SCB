(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3927 0)
(declare-sort var2516 0)
(declare-sort var578 0)
(declare-sort var2310 0)
(declare-sort var392 0)
(declare-sort var1852 0)
(declare-sort var2936 0)
(declare-sort var3048 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun addVendorFiles/-1326110104 (var2310 var2516 String) void)
(declare-fun cast-from-var3927-to-var2310 (var3927) var2310)
(declare-fun var392-init () var392)
(declare-fun getConfig/-1194828243 (var2936) var1852)
(declare-fun cast-from-var3927-to-var2936 (var3927) var2936)
(declare-fun descriptorDir/2019956101 (var1852) var392)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toplinkDescriptor/1521495455 (var3927) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1833447926 (var392 var392 String) void)
(declare-fun exists/1072868559 (var392) Bool)
(declare-fun put/1981026245 (var2516 var3048 var3048) var3048)
(declare-fun cast-from-String-to-var3048 (String) var3048)
(declare-fun cast-from-var392-to-var3048 (var392) var3048)
(declare-const null-var3927 var3927)
(declare-const null-var2516 var2516)
(declare-const null-String String)
(declare-const var1564 var3927) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool 
(assert (not (= var1564 null-var3927)))
(declare-const var1101 var2516) ; Statement: r1 := @parameter0: java.util.Hashtable 
(assert (not (= var1101 null-var2516)))
(declare-const var698 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var698 null-String)))
(assert true)
;(assert (addVendorFiles/-1326110104 (cast-from-var3927-to-var2310 var1564) var1101 var698)) ; Statement: specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: void addVendorFiles(java.util.Hashtable,java.lang.String)>(r1, r2) 

(declare-const var1564!1 var3927)
(declare-const var1101!1 var2516)
(declare-const var698!1 String)
(define-const var1530 var392 var392-init) ; Statement: $r3 = new java.io.File 
(assert true)
(define-const var2651 var1852 (getConfig/-1194828243 (cast-from-var3927-to-var2936 var1564!1))) ; Statement: $r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>() 
(define-const var2461 var392 (descriptorDir/2019956101 var2651)) ; Statement: $r6 = $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir> 
(define-const var1955 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1955)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1955!1 String)
(assert (= var1955!1 ""))
(assert true)
(define-const var133 String (append/672562846 var1955!1 var698!1)) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1955!2 String)
(assert (= var1955!2 (str.++ var1955!1 var698!1)))
(define-const var2463 String (toplinkDescriptor/1521495455 var1564!1)) ; Statement: $r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: java.lang.String toplinkDescriptor> 
(assert true)
(define-const var2875 String (append/672562846 var133 var2463)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var133!1 String)
(assert (= var133!1 (str.++ var133 var2463)))
(assert true)
(define-const var3183 String (toString/-2075883882 var2875)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1833447926 var1530 var2461 var3183)) ; Statement: specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r10) 

(declare-const var1530!1 var392)
(declare-const var2461!1 var392)
(declare-const var3183!1 String)
(assert true)
(define-const var3895 Bool (exists/1072868559 var1530!1)) ; Statement: $z0 = virtualinvoke $r3.<java.io.File: boolean exists()>() 
 ; Statement: if $z0 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (not (= (ite var3895 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var971 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var971)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var971!1 String)
(assert (= var971!1 ""))
(assert true)
(define-const var1131 String (append/672562846 var971!1 "META-INF/")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("META-INF/") 
(declare-const var971!2 String)
(assert (= var971!2 (str.++ var971!1 "META-INF/")))
(define-const var3971 String (toplinkDescriptor/1521495455 var1564!1)) ; Statement: $r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: java.lang.String toplinkDescriptor> 
(assert true)
(define-const var1975 String (append/672562846 var1131 var3971)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1131!1 String)
(assert (= var1131!1 (str.++ var1131 var3971)))
(assert true)
(define-const var1481 String (toString/-2075883882 var1975)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (put/1981026245 var1101!1 (cast-from-String-to-var3048 var1481) (cast-from-var392-to-var3048 var1530!1))) ; Statement: virtualinvoke r1.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>($r20, $r3) 

(declare-const var1101!2 var2516)
(declare-const var1481!1 String)
(declare-const var1530!2 var392)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {addVendorFiles/-1326110104=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool, java.util.Hashtable, java.lang.String], void), cast-from-var3927-to-var2310=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool), var392-init=([], java.io.File), getConfig/-1194828243=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config), cast-from-var3927-to-var2936=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool), descriptorDir/2019956101=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config], java.io.File), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toplinkDescriptor/1521495455=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1833447926=([java.io.File, java.io.File, java.lang.String], void), exists/1072868559=([java.io.File], boolean), put/1981026245=([java.util.Hashtable, java.lang.Object, java.lang.Object], java.lang.Object), cast-from-String-to-var3048=([java.lang.String], java.lang.Object), cast-from-var392-to-var3048=([java.io.File], java.lang.Object)}
; {var3927=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool, var1564=r0, var2516=java.util.Hashtable, var1101=r1, var698=r2, var578=null_type, var2310=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool, var392=java.io.File, var1530=$r3, var1852=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config, var2936=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool, var2651=$r4, var2461=$r6, var1955=$r5, var133=$r8, var2463=$r7, var2875=$r9, var3183=$r10, var3895=$z0, var971=$r16, var1131=$r18, var3971=$r17, var1975=$r19, var1481=$r20, var3048=java.lang.Object}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool=var3927, r0=var1564, java.util.Hashtable=var2516, r1=var1101, r2=var698, null_type=var578, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool=var2310, java.io.File=var392, $r3=var1530, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config=var1852, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.GenericDeploymentTool=var2936, $r4=var2651, $r6=var2461, $r5=var1955, $r8=var133, $r7=var2463, $r9=var2875, $r10=var3183, $z0=var3895, $r16=var971, $r18=var1131, $r17=var3971, $r19=var1975, $r20=var1481, java.lang.Object=var3048}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool;	r1 := @parameter0: java.util.Hashtable;	r2 := @parameter1: java.lang.String;	specialinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicDeploymentTool: void addVendorFiles(java.util.Hashtable,java.lang.String)>(r1, r2);	$r3 = new java.io.File;	$r4 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config getConfig()>();	$r6 = $r4.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.EjbJar$Config: java.io.File descriptorDir>;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r7 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: java.lang.String toplinkDescriptor>;	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r3.<java.io.File: void <init>(java.io.File,java.lang.String)>($r6, $r10);	$z0 = virtualinvoke $r3.<java.io.File: boolean exists()>();	if $z0 == 0 goto $r11 = new java.lang.StringBuilder;	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("META-INF/");	$r17 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.WeblogicTOPLinkDeploymentTool: java.lang.String toplinkDescriptor>;	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r1.<java.util.Hashtable: java.lang.Object put(java.lang.Object,java.lang.Object)>($r20, $r3);	goto [?= return];	return
;block_num 3