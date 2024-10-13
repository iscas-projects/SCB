(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3842 0)
(declare-sort var1268 0)
(declare-sort var3491 0)
(declare-sort var1235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTask/870774918 (var3491) var1268)
(declare-fun cast-from-var3842-to-var3491 (var3842) var3491)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun getServer/-893028255 (var3491) String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun debug/1200311564 (var3842) Bool)
(declare-fun getUserName/-1269974002 (var3491) String)
(declare-fun getAction/2030029772 (var1268) String)
(declare-fun getPassword/-1286283191 (var3491) String)
(declare-const null-var3842 var3842)
(declare-const null-String String)
(declare-const var1390 var3842) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool 
(assert (not (= var1390 null-var3842)))
(assert true)
(define-const var527 var1268 (getTask/870774918 (cast-from-var3842-to-var3491 var1390))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>() 
(define-const var3342 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var3342 1024)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024) 

(declare-const var3342!1 String)
(declare-const var3381 Int)
(assert true)
(define-const var558 String (getServer/-893028255 (cast-from-var3842-to-var3491 var1390))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>() 
 ; Statement: if $r3 == null goto $r24 = "" 
(assert (not (= var558 null-String))) ; Negate: Cond: $r3 == null  
(define-const var2200 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2200)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2200!1 String)
(assert (= var2200!1 ""))
(assert true)
(define-const var1195 String (append/672562846 var2200!1 "-url ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-url ") 
(declare-const var2200!2 String)
(assert (= var2200!2 (str.++ var2200!1 "-url ")))
(assert true)
(define-const var1675 String (getServer/-893028255 (cast-from-var3842-to-var3491 var1390))) ; Statement: $r21 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>() 
(assert true)
(define-const var1956 String (append/672562846 var1195 var1675)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1195!1 String)
(assert (= var1195!1 (str.++ var1195 var1675)))
(assert true)
(define-const var735 String (toString/-2075883882 var1956)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1553 String (append/1560614132 var3342!1 var735)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24) 
(declare-const var3342!2 String)
(assert (str.prefixof var3342!1 var3342!2))
(assert true)
(define-const var1110 String (append/1560614132 var1553 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var1553!1 String)
(assert (str.prefixof var1553 var1553!1))
(define-const var3330 Bool (debug/1200311564 var1390)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug> 
 ; Statement: if $z0 == 0 goto $r25 = "" 
(assert (= (ite var3330 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3770 String "") ; Statement: $r25 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var1505 String (append/1560614132 var1110 var3770)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25) 
(declare-const var1110!1 String)
(assert (str.prefixof var1110 var1110!1))
(assert true)
(define-const var415 String (getUserName/-1269974002 (cast-from-var3842-to-var3491 var1390))) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>() 
 ; Statement: if $r6 == null goto $r26 = "" 
(assert (not (= var415 null-String))) ; Negate: Cond: $r6 == null  
(define-const var3086 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3086)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3086!1 String)
(assert (= var3086!1 ""))
(assert true)
(define-const var127 String (append/672562846 var3086!1 "-username ")) ; Statement: $r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-username ") 
(declare-const var3086!2 String)
(assert (= var3086!2 (str.++ var3086!1 "-username ")))
(assert true)
(define-const var1865 String (getUserName/-1269974002 (cast-from-var3842-to-var3491 var1390))) ; Statement: $r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>() 
(assert true)
(define-const var274 String (append/672562846 var127 var1865)) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17) 
(declare-const var127!1 String)
(assert (= var127!1 (str.++ var127 var1865)))
(assert true)
(define-const var551 String (toString/-2075883882 var274)) ; Statement: $r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2447 String (append/1560614132 var1505 var551)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26) 
(declare-const var1505!1 String)
(assert (str.prefixof var1505 var1505!1))
(assert true)
(define-const var159 String (append/1560614132 var2447 " ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var2447!1 String)
(assert (str.prefixof var2447 var2447!1))
(assert true)
(define-const var2743 String (getAction/2030029772 var527)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>() 
(assert true)
(define-const var3435 String (append/1560614132 var159 var2743)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9) 
(declare-const var159!1 String)
(assert (str.prefixof var159 var159!1))
(assert true)
(define-const var1741 String (append/1560614132 var3435 " ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var3435!1 String)
(assert (str.prefixof var3435 var3435!1))
(assert true)
(define-const var2922 String (getPassword/-1286283191 (cast-from-var3842-to-var3491 var1390))) ; Statement: $r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>() 
(assert true)
(define-const var2117 String (append/1560614132 var1741 var2922)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12) 
(declare-const var1741!1 String)
(assert (str.prefixof var1741 var1741!1))
(assert true)
(define-const var2232 String (append/1560614132 var2117 " ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var2117!1 String)
(assert (str.prefixof var2117 var2117!1))
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getTask/870774918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy), cast-from-var3842-to-var3491=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), getServer/-893028255=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), debug/1200311564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], boolean), getUserName/-1269974002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), getAction/2030029772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy], java.lang.String), getPassword/-1286283191=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String)}
; {var3842=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool, var1390=r0, var1268=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy, var3491=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool, var527=r1, var3342=$r2, var3381=1024, var558=$r3, var1235=null_type, var2200=$r20, var1195=$r22, var1675=$r21, var1956=$r23, var735=$r24, var1553=$r4, var1110=$r5, var3330=$z0, var3770=$r25, var1505=$r7, var415=$r6, var3086=$r16, var127=$r18, var1865=$r17, var274=$r19, var551=$r26, var2447=$r8, var159=$r10, var2743=$r9, var3435=$r11, var1741=$r13, var2922=$r12, var2117=$r14, var2232=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool=var3842, r0=var1390, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy=var1268, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool=var3491, r1=var527, $r2=var3342, 1024=var3381, $r3=var558, null_type=var1235, $r20=var2200, $r22=var1195, $r21=var1675, $r23=var1956, $r24=var735, $r4=var1553, $r5=var1110, $z0=var3330, $r25=var3770, $r7=var1505, $r6=var415, $r16=var3086, $r18=var127, $r17=var1865, $r19=var274, $r26=var551, $r8=var2447, $r10=var159, $r9=var2743, $r11=var3435, $r13=var1741, $r12=var2922, $r14=var2117, $r15=var2232}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024);	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>();	if $r3 == null goto $r24 = "";	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-url ");	$r21 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24)];	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug>;	if $z0 == 0 goto $r25 = "";	$r25 = "";	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>();	if $r6 == null goto $r26 = "";	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r18 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-username ");	$r17 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r17);	$r26 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26)];	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26);	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	return $r15
;block_num 7