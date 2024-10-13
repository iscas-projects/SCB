(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var32 0)
(declare-sort var2186 0)
(declare-sort var1465 0)
(declare-sort var2687 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTask/870774918 (var1465) var2186)
(declare-fun cast-from-var32-to-var1465 (var32) var1465)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun getServer/-893028255 (var1465) String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun debug/1200311564 (var32) Bool)
(declare-fun getUserName/-1269974002 (var1465) String)
(declare-fun getAction/2030029772 (var2186) String)
(declare-fun getPassword/-1286283191 (var1465) String)
(declare-const null-var32 var32)
(declare-const null-String String)
(declare-const var3112 var32) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool 
(assert (not (= var3112 null-var32)))
(assert true)
(define-const var614 var2186 (getTask/870774918 (cast-from-var32-to-var1465 var3112))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>() 
(define-const var743 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var743 1024)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024) 

(declare-const var743!1 String)
(declare-const var150 Int)
(assert true)
(define-const var48 String (getServer/-893028255 (cast-from-var32-to-var1465 var3112))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>() 
 ; Statement: if $r3 == null goto $r24 = "" 
(assert (not (= var48 null-String))) ; Negate: Cond: $r3 == null  
(define-const var40 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var40)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var40!1 String)
(assert (= var40!1 ""))
(assert true)
(define-const var3787 String (append/672562846 var40!1 "-url ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-url ") 
(declare-const var40!2 String)
(assert (= var40!2 (str.++ var40!1 "-url ")))
(assert true)
(define-const var790 String (getServer/-893028255 (cast-from-var32-to-var1465 var3112))) ; Statement: $r21 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>() 
(assert true)
(define-const var3921 String (append/672562846 var3787 var790)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var3787!1 String)
(assert (= var3787!1 (str.++ var3787 var790)))
(assert true)
(define-const var3910 String (toString/-2075883882 var3921)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3189 String (append/1560614132 var743!1 var3910)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24) 
(declare-const var743!2 String)
(assert (str.prefixof var743!1 var743!2))
(assert true)
(define-const var1158 String (append/1560614132 var3189 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3189!1 String)
(assert (str.prefixof var3189 var3189!1))
(define-const var2367 Bool (debug/1200311564 var3112)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug> 
 ; Statement: if $z0 == 0 goto $r25 = "" 
(assert (not (= (ite var2367 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3477 String "-debug ") ; Statement: $r25 = "-debug " 
 ; Statement: goto [?= $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3949 String (append/1560614132 var1158 var3477)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25) 
(declare-const var1158!1 String)
(assert (str.prefixof var1158 var1158!1))
(assert true)
(define-const var160 String (getUserName/-1269974002 (cast-from-var32-to-var1465 var3112))) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>() 
 ; Statement: if $r6 == null goto $r26 = "" 
(assert (not (= var160 null-String))) ; Negate: Cond: $r6 == null  
(define-const var1752 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1752)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1752!1 String)
(assert (= var1752!1 ""))
(assert true)
(define-const var1379 String (append/672562846 var1752!1 "-username ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-username ") 
(declare-const var1752!2 String)
(assert (= var1752!2 (str.++ var1752!1 "-username ")))
(assert true)
(define-const var1671 String (getUserName/-1269974002 (cast-from-var32-to-var1465 var3112))) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>() 
(assert true)
(define-const var3343 String (append/672562846 var1379 var1671)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1379!1 String)
(assert (= var1379!1 (str.++ var1379 var1671)))
(assert true)
(define-const var1517 String (toString/-2075883882 var3343)) ; Statement: $r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1833 String (append/1560614132 var3949 var1517)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26) 
(declare-const var3949!1 String)
(assert (str.prefixof var3949 var3949!1))
(assert true)
(define-const var826 String (append/1560614132 var1833 " ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var1833!1 String)
(assert (str.prefixof var1833 var1833!1))
(assert true)
(define-const var1545 String (getAction/2030029772 var614)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>() 
(assert true)
(define-const var1348 String (append/1560614132 var826 var1545)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9) 
(declare-const var826!1 String)
(assert (str.prefixof var826 var826!1))
(assert true)
(define-const var1792 String (append/1560614132 var1348 " ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var1348!1 String)
(assert (str.prefixof var1348 var1348!1))
(assert true)
(define-const var1060 String (getPassword/-1286283191 (cast-from-var32-to-var1465 var3112))) ; Statement: $r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>() 
(assert true)
(define-const var2317 String (append/1560614132 var1792 var1060)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12) 
(declare-const var1792!1 String)
(assert (str.prefixof var1792 var1792!1))
(assert true)
(define-const var1407 String (append/1560614132 var2317 " ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var2317!1 String)
(assert (str.prefixof var2317 var2317!1))
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getTask/870774918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy), cast-from-var32-to-var1465=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), getServer/-893028255=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), debug/1200311564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], boolean), getUserName/-1269974002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), getAction/2030029772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy], java.lang.String), getPassword/-1286283191=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String)}
; {var32=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool, var3112=r0, var2186=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy, var1465=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool, var614=r1, var743=$r2, var150=1024, var48=$r3, var2687=null_type, var40=$r20, var3787=$r22, var790=$r21, var3921=$r23, var3910=$r24, var3189=$r4, var1158=$r5, var2367=$z0, var3477=$r25, var3949=$r7, var160=$r6, var1752=$r16, var1379=$r18, var1671=$r17, var3343=$r19, var1517=$r26, var1833=$r8, var826=$r10, var1545=$r9, var1348=$r11, var1792=$r13, var1060=$r12, var2317=$r14, var1407=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool=var32, r0=var3112, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy=var2186, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool=var1465, r1=var614, $r2=var743, 1024=var150, $r3=var48, null_type=var2687, $r20=var40, $r22=var3787, $r21=var790, $r23=var3921, $r24=var3910, $r4=var3189, $r5=var1158, $z0=var2367, $r25=var3477, $r7=var3949, $r6=var160, $r16=var1752, $r18=var1379, $r17=var1671, $r19=var3343, $r26=var1517, $r8=var1833, $r10=var826, $r9=var1545, $r11=var1348, $r13=var1792, $r12=var1060, $r14=var2317, $r15=var1407}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024);	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>();	if $r3 == null goto $r24 = "";	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-url ");	$r21 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24)];	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug>;	if $z0 == 0 goto $r25 = "";	$r25 = "-debug ";	goto [?= $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25)];	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>();	if $r6 == null goto $r26 = "";	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-username ");	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26)];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26);	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	return $r15
;block_num 7