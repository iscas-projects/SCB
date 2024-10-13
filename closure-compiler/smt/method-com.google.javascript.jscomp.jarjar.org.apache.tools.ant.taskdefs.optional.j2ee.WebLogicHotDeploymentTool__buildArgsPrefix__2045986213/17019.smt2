(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var429 0)
(declare-sort var3548 0)
(declare-sort var582 0)
(declare-sort var2163 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTask/870774918 (var582) var3548)
(declare-fun cast-from-var429-to-var582 (var429) var582)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun getServer/-893028255 (var582) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun debug/1200311564 (var429) Bool)
(declare-fun getUserName/-1269974002 (var582) String)
(declare-fun getAction/2030029772 (var3548) String)
(declare-fun getPassword/-1286283191 (var582) String)
(declare-const null-var429 var429)
(declare-const null-String String)
(declare-const var402 var429) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool 
(assert (not (= var402 null-var429)))
(assert true)
(define-const var2431 var3548 (getTask/870774918 (cast-from-var429-to-var582 var402))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>() 
(define-const var1188 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var1188 1024)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024) 

(declare-const var1188!1 String)
(declare-const var1333 Int)
(assert true)
(define-const var291 String (getServer/-893028255 (cast-from-var429-to-var582 var402))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>() 
 ; Statement: if $r3 == null goto $r24 = "" 
(assert (= var291 null-String)) ; Cond: $r3 == null 
(define-const var3284 String "") ; Statement: $r24 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var693 String (append/1560614132 var1188!1 var3284)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24) 
(declare-const var1188!2 String)
(assert (str.prefixof var1188!1 var1188!2))
(assert true)
(define-const var2168 String (append/1560614132 var693 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var693!1 String)
(assert (str.prefixof var693 var693!1))
(define-const var1773 Bool (debug/1200311564 var402)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug> 
 ; Statement: if $z0 == 0 goto $r25 = "" 
(assert (not (= (ite var1773 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2217 String "-debug ") ; Statement: $r25 = "-debug " 
 ; Statement: goto [?= $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var454 String (append/1560614132 var2168 var2217)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25) 
(declare-const var2168!1 String)
(assert (str.prefixof var2168 var2168!1))
(assert true)
(define-const var327 String (getUserName/-1269974002 (cast-from-var429-to-var582 var402))) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>() 
 ; Statement: if $r6 == null goto $r26 = "" 
(assert (= var327 null-String)) ; Cond: $r6 == null 
(define-const var2440 String "") ; Statement: $r26 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var3416 String (append/1560614132 var454 var2440)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26) 
(declare-const var454!1 String)
(assert (str.prefixof var454 var454!1))
(assert true)
(define-const var76 String (append/1560614132 var3416 " ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3416!1 String)
(assert (str.prefixof var3416 var3416!1))
(assert true)
(define-const var2275 String (getAction/2030029772 var2431)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>() 
(assert true)
(define-const var395 String (append/1560614132 var76 var2275)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9) 
(declare-const var76!1 String)
(assert (str.prefixof var76 var76!1))
(assert true)
(define-const var3942 String (append/1560614132 var395 " ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var395!1 String)
(assert (str.prefixof var395 var395!1))
(assert true)
(define-const var3878 String (getPassword/-1286283191 (cast-from-var429-to-var582 var402))) ; Statement: $r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>() 
(assert true)
(define-const var1120 String (append/1560614132 var3942 var3878)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12) 
(declare-const var3942!1 String)
(assert (str.prefixof var3942 var3942!1))
(assert true)
(define-const var992 String (append/1560614132 var1120 " ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var1120!1 String)
(assert (str.prefixof var1120 var1120!1))
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getTask/870774918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy), cast-from-var429-to-var582=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), getServer/-893028255=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), debug/1200311564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], boolean), getUserName/-1269974002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), getAction/2030029772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy], java.lang.String), getPassword/-1286283191=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String)}
; {var429=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool, var402=r0, var3548=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy, var582=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool, var2431=r1, var1188=$r2, var1333=1024, var291=$r3, var2163=null_type, var3284=$r24, var693=$r4, var2168=$r5, var1773=$z0, var2217=$r25, var454=$r7, var327=$r6, var2440=$r26, var3416=$r8, var76=$r10, var2275=$r9, var395=$r11, var3942=$r13, var3878=$r12, var1120=$r14, var992=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool=var429, r0=var402, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy=var3548, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool=var582, r1=var2431, $r2=var1188, 1024=var1333, $r3=var291, null_type=var2163, $r24=var3284, $r4=var693, $r5=var2168, $z0=var1773, $r25=var2217, $r7=var454, $r6=var327, $r26=var2440, $r8=var3416, $r10=var76, $r9=var2275, $r11=var395, $r13=var3942, $r12=var3878, $r14=var1120, $r15=var992}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024);	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>();	if $r3 == null goto $r24 = "";	$r24 = "";	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug>;	if $z0 == 0 goto $r25 = "";	$r25 = "-debug ";	goto [?= $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25)];	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>();	if $r6 == null goto $r26 = "";	$r26 = "";	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26);	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	return $r15
;block_num 7