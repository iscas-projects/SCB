(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1621 0)
(declare-sort var2181 0)
(declare-sort var3159 0)
(declare-sort var109 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getTask/870774918 (var3159) var2181)
(declare-fun cast-from-var1621-to-var3159 (var1621) var3159)
(declare-fun String-init () String)
(declare-fun <init>/1906106355 (String Int) void)
(declare-fun getServer/-893028255 (var3159) String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun debug/1200311564 (var1621) Bool)
(declare-fun getUserName/-1269974002 (var3159) String)
(declare-fun getAction/2030029772 (var2181) String)
(declare-fun getPassword/-1286283191 (var3159) String)
(declare-const null-var1621 var1621)
(declare-const null-String String)
(declare-const var2957 var1621) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool 
(assert (not (= var2957 null-var1621)))
(assert true)
(define-const var2620 var2181 (getTask/870774918 (cast-from-var1621-to-var3159 var2957))) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>() 
(define-const var1485 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/1906106355 var1485 1024)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024) 

(declare-const var1485!1 String)
(declare-const var3729 Int)
(assert true)
(define-const var3022 String (getServer/-893028255 (cast-from-var1621-to-var3159 var2957))) ; Statement: $r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>() 
 ; Statement: if $r3 == null goto $r24 = "" 
(assert (not (= var3022 null-String))) ; Negate: Cond: $r3 == null  
(define-const var1225 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1225)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1225!1 String)
(assert (= var1225!1 ""))
(assert true)
(define-const var1640 String (append/672562846 var1225!1 "-url ")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-url ") 
(declare-const var1225!2 String)
(assert (= var1225!2 (str.++ var1225!1 "-url ")))
(assert true)
(define-const var981 String (getServer/-893028255 (cast-from-var1621-to-var3159 var2957))) ; Statement: $r21 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>() 
(assert true)
(define-const var3162 String (append/672562846 var1640 var981)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21) 
(declare-const var1640!1 String)
(assert (= var1640!1 (str.++ var1640 var981)))
(assert true)
(define-const var2416 String (toString/-2075883882 var3162)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2184 String (append/1560614132 var1485!1 var2416)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24) 
(declare-const var1485!2 String)
(assert (str.prefixof var1485!1 var1485!2))
(assert true)
(define-const var1779 String (append/1560614132 var2184 " ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var2184!1 String)
(assert (str.prefixof var2184 var2184!1))
(define-const var2283 Bool (debug/1200311564 var2957)) ; Statement: $z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug> 
 ; Statement: if $z0 == 0 goto $r25 = "" 
(assert (not (= (ite var2283 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2666 String "-debug ") ; Statement: $r25 = "-debug " 
 ; Statement: goto [?= $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2254 String (append/1560614132 var1779 var2666)) ; Statement: $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25) 
(declare-const var1779!1 String)
(assert (str.prefixof var1779 var1779!1))
(assert true)
(define-const var1691 String (getUserName/-1269974002 (cast-from-var1621-to-var3159 var2957))) ; Statement: $r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>() 
 ; Statement: if $r6 == null goto $r26 = "" 
(assert (= var1691 null-String)) ; Cond: $r6 == null 
(define-const var3814 String "") ; Statement: $r26 = "" 
(assert true) ; Non Conditional
(assert true)
(define-const var66 String (append/1560614132 var2254 var3814)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26) 
(declare-const var2254!1 String)
(assert (str.prefixof var2254 var2254!1))
(assert true)
(define-const var1010 String (append/1560614132 var66 " ")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var66!1 String)
(assert (str.prefixof var66 var66!1))
(assert true)
(define-const var698 String (getAction/2030029772 var2620)) ; Statement: $r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>() 
(assert true)
(define-const var1462 String (append/1560614132 var1010 var698)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9) 
(declare-const var1010!1 String)
(assert (str.prefixof var1010 var1010!1))
(assert true)
(define-const var169 String (append/1560614132 var1462 " ")) ; Statement: $r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var1462!1 String)
(assert (str.prefixof var1462 var1462!1))
(assert true)
(define-const var2277 String (getPassword/-1286283191 (cast-from-var1621-to-var3159 var2957))) ; Statement: $r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>() 
(assert true)
(define-const var575 String (append/1560614132 var169 var2277)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12) 
(declare-const var169!1 String)
(assert (str.prefixof var169 var169!1))
(assert true)
(define-const var3838 String (append/1560614132 var575 " ")) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ") 
(declare-const var575!1 String)
(assert (str.prefixof var575 var575!1))
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {getTask/870774918=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy), cast-from-var1621-to-var3159=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool), String-init=([], java.lang.StringBuffer), <init>/1906106355=([java.lang.StringBuffer, int], void), getServer/-893028255=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), debug/1200311564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool], boolean), getUserName/-1269974002=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String), getAction/2030029772=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy], java.lang.String), getPassword/-1286283191=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool], java.lang.String)}
; {var1621=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool, var2957=r0, var2181=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy, var3159=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool, var2620=r1, var1485=$r2, var3729=1024, var3022=$r3, var109=null_type, var1225=$r20, var1640=$r22, var981=$r21, var3162=$r23, var2416=$r24, var2184=$r4, var1779=$r5, var2283=$z0, var2666=$r25, var2254=$r7, var1691=$r6, var3814=$r26, var66=$r8, var1010=$r10, var698=$r9, var1462=$r11, var169=$r13, var2277=$r12, var575=$r14, var3838=$r15}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool=var1621, r0=var2957, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy=var2181, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.AbstractHotDeploymentTool=var3159, r1=var2620, $r2=var1485, 1024=var3729, $r3=var3022, null_type=var109, $r20=var1225, $r22=var1640, $r21=var981, $r23=var3162, $r24=var2416, $r4=var2184, $r5=var1779, $z0=var2283, $r25=var2666, $r7=var2254, $r6=var1691, $r26=var3814, $r8=var66, $r10=var1010, $r9=var698, $r11=var1462, $r13=var169, $r12=var2277, $r14=var575, $r15=var3838}
;seq <java.lang.StringBuffer: void <init>(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>
;cnt {"<java.lang.StringBuffer: void <init>(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy getTask()>();	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>(int)>(1024);	$r3 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>();	if $r3 == null goto $r24 = "";	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r22 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("-url ");	$r21 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getServer()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= $r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24)];	$r4 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r24);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$z0 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: boolean debug>;	if $z0 == 0 goto $r25 = "";	$r25 = "-debug ";	goto [?= $r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25)];	$r7 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r25);	$r6 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getUserName()>();	if $r6 == null goto $r26 = "";	$r26 = "";	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r26);	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r9 = virtualinvoke r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.ServerDeploy: java.lang.String getAction()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r9);	$r13 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	$r12 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.j2ee.WebLogicHotDeploymentTool: java.lang.String getPassword()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" ");	return $r15
;block_num 7