(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1006 0)
(declare-sort var2098 0)
(declare-sort var862 0)
(declare-sort var391 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTask/870774918 (var862) var2098)
(declare-fun cast-from-var1006-to-var862 (var1006) var862)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun getServer/-893028255 (var862) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun debug/1200311564 (var1006) Bool)
(declare-fun getUserName/-1269974002 (var862) String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun getAction/2030029772 (var2098) String)
(declare-fun getPassword/-1286283191 (var862) String)
(declare-const null-var1006 var1006)
(declare-const null-String String)
(declare-const var1942 var1006) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool 
(assert (not (= var1942 null-var1006)))
(assert true)
(define-const var2107 var2098 (getTask/870774918 (cast-from-var1006-to-var862 var1942))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>() 
(define-const var3505 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var3505 1024)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024) 

(declare-const var3505!1 String)
(declare-const var3953 Int)
(assert true)
(define-const var3593 String (getServer/-893028255 (cast-from-var1006-to-var862 var1942))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>() 
 ; Statement: if $r3 == null goto $r24 = "" 
(assert (= var3593 null-String)) ; Cond: $r3 == null 
(define-const var233 String "") ; Statement: $r24 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var461 String (append/1560614132 var3505!1 var233)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24) 
(declare-const var3505!2 String)
(assert (str.prefixof var3505!1 var3505!2))
(assert true)
(define-const var1714 String (append/1560614132 var461 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var461!1 String)
(assert (str.prefixof var461 var461!1))
(define-const var1607 Bool (debug/1200311564 var1942)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug> 
 ; Statement: if $z0 == 0 goto $r25 = "" 
(assert (not (= (ite var1607 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1684 String "-debug ") ; Statement: $r25 = "-debug " 
 ; Statement: goto [?= $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var996 String (append/1560614132 var1714 var1684)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25) 
(declare-const var1714!1 String)
(assert (str.prefixof var1714 var1714!1))
(assert true)
(define-const var2243 String (getUserName/-1269974002 (cast-from-var1006-to-var862 var1942))) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>() 
 ; Statement: if $r6 == null goto $r26 = "" 
(assert (not (= var2243 null-String))) ; Negate: Cond: $r6 == null  
(define-const var86 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var86)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var86!1 String)
(assert (= var86!1 ""))
(assert true)
(define-const var1924 String (append/672562846 var86!1 "-username ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-username ") 
(declare-const var86!2 String)
(assert (= var86!2 (str.++ var86!1 "-username ")))
(assert true)
(define-const var2585 String (getUserName/-1269974002 (cast-from-var1006-to-var862 var1942))) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>() 
(assert true)
(define-const var2171 String (append/672562846 var1924 var2585)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var1924!1 String)
(assert (= var1924!1 (str.++ var1924 var2585)))
(assert true)
(define-const var3785 String (toString/-2075883882 var2171)) ; Statement: $r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1309 String (append/1560614132 var996 var3785)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26) 
(declare-const var996!1 String)
(assert (str.prefixof var996 var996!1))
(assert true)
(define-const var3688 String (append/1560614132 var1309 " ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var1309!1 String)
(assert (str.prefixof var1309 var1309!1))
(assert true)
(define-const var374 String (getAction/2030029772 var2107)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>() 
(assert true)
(define-const var3625 String (append/1560614132 var3688 var374)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9) 
(declare-const var3688!1 String)
(assert (str.prefixof var3688 var3688!1))
(assert true)
(define-const var3259 String (append/1560614132 var3625 " ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3625!1 String)
(assert (str.prefixof var3625 var3625!1))
(assert true)
(define-const var3220 String (getPassword/-1286283191 (cast-from-var1006-to-var862 var1942))) ; Statement: $r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>() 
(assert true)
(define-const var3799 String (append/1560614132 var3259 var3220)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12) 
(declare-const var3259!1 String)
(assert (str.prefixof var3259 var3259!1))
(assert true)
(define-const var3965 String (append/1560614132 var3799 " ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3799!1 String)
(assert (str.prefixof var3799 var3799!1))
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getTask/870774918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy), cast-from-var1006-to-var862=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), getServer/-893028255=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), debug/1200311564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], boolean), getUserName/-1269974002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), getAction/2030029772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy], java.lang.String), getPassword/-1286283191=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String)}
; {var1006=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool, var1942=r0, var2098=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy, var862=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool, var2107=r1, var3505=$r2, var3953=1024, var3593=$r3, var391=null_type, var233=$r24, var461=$r4, var1714=$r5, var1607=$z0, var1684=$r25, var996=$r7, var2243=$r6, var86=$r16, var1924=$r18, var2585=$r17, var2171=$r19, var3785=$r26, var1309=$r8, var3688=$r10, var374=$r9, var3625=$r11, var3259=$r13, var3220=$r12, var3799=$r14, var3965=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool=var1006, r0=var1942, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy=var2098, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool=var862, r1=var2107, $r2=var3505, 1024=var3953, $r3=var3593, null_type=var391, $r24=var233, $r4=var461, $r5=var1714, $z0=var1607, $r25=var1684, $r7=var996, $r6=var2243, $r16=var86, $r18=var1924, $r17=var2585, $r19=var2171, $r26=var3785, $r8=var1309, $r10=var3688, $r9=var374, $r11=var3625, $r13=var3259, $r12=var3220, $r14=var3799, $r15=var3965}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024);	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>();	if $r3 == null goto $r24 = "";	$r24 = "";	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug>;	if $z0 == 0 goto $r25 = "";	$r25 = "-debug ";	goto [?= $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25)];	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>();	if $r6 == null goto $r26 = "";	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-username ");	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26)];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26);	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	return $r15
;block_num 7