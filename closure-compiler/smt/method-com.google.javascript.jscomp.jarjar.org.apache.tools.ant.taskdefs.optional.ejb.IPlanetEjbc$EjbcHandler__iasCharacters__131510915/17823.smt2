(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1319 0)
(declare-sort var3640 0)
(declare-sort var2636 0)
(declare-sort var3311 0)
(declare-sort var1543 0)
(declare-sort var595 0)
(declare-sort var2432 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun ejbType/-1370994396 (var1319) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun currentLoc/-1370994396 (var1319) String)
(declare-fun ejbs/-1370994396 (var1319) var2636)
(declare-fun var1543_bootstrap$/1470303398 (var1319) var3311)
(declare-fun var2636_computeIfAbsent/2133881068 (var2636 var595 var3311) var595)
(declare-fun cast-from-String-to-var595 (String) var595)
(declare-fun cast-from-var595-to-var2432 (var595) var2432)
(declare-fun currentEjb/-1370994396 (var1319) var2432)
(declare-const null-var1319 var1319)
(declare-const null-String String)
(declare-const var3697 var1319) ; Statement: r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler 
(assert (not (= var3697 null-var1319)))
(declare-const var1247 String) ; Statement: r26 := @parameter0: java.lang.String 
(assert (not (= var1247 null-String)))
(define-const var828 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var828)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var828!1 String)
(assert (= var828!1 ""))
(assert true)
(define-const var3569 String (append/672562846 var828!1 "\u005cias-ejb-jar\u005centerprise-beans\u005c")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\ias-ejb-jar\\enterprise-beans\\") 
(declare-const var828!2 String)
(assert (= var828!2 (str.++ var828!1 "\u005cias-ejb-jar\u005centerprise-beans\u005c")))
(define-const var2112 String (ejbType/-1370994396 var3697)) ; Statement: $r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType> 
(assert true)
(define-const var2297 String (append/672562846 var3569 var2112)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var3569!1 String)
(assert (= var3569!1 (str.++ var3569 var2112)))
(assert true)
(define-const var2742 String (toString/-2075883882 var2297)) ; Statement: r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1087 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1087)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1087!1 String)
(assert (= var1087!1 ""))
(assert true)
(define-const var3098 String (append/672562846 var1087!1 var2742)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1087!2 String)
(assert (= var1087!2 (str.++ var1087!1 var2742)))
(assert true)
(define-const var2272 String (append/672562846 var3098 "\u005cejb-name")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\ejb-name") 
(declare-const var3098!1 String)
(assert (= var3098!1 (str.++ var3098 "\u005cejb-name")))
(assert true)
(define-const var1197 String (toString/-2075883882 var2272)) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var1128 String (currentLoc/-1370994396 var3697)) ; Statement: $r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc> 
(assert true)
(define-const var2538 Bool (= var1197 var1128)) ; Statement: $z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r9) 
 ; Statement: if $z0 == 0 goto $r11 = new java.lang.StringBuilder 
(assert (not (= (ite var2538 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var47 var2636 (ejbs/-1370994396 var3697)) ; Statement: $r30 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.util.Map ejbs> 
(define-const var621 var3311 (var1543_bootstrap$/1470303398 var3697)) ; Statement: $r31 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler$lambda_iasCharacters_1__374: java.util.function.Function bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler)>(r1) 
(define-const var2803 var595 (var2636_computeIfAbsent/2133881068 var47 (cast-from-String-to-var595 var1247) var621)) ; Statement: $r32 = interfaceinvoke $r30.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r26, $r31) 
(define-const var68 var2432 (cast-from-var595-to-var2432 var2803)) ; Statement: $r33 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo) $r32 
(declare-const var3697!1 var1319)
(assert (not (= var3697!1 null-var1319)))
(assert (= (currentEjb/-1370994396 var3697!1) var68)) ; Statement: r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo currentEjb> = $r33 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), ejbType/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), currentLoc/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.lang.String), ejbs/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.util.Map), var1543_bootstrap$/1470303398=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], java.util.function.Function), var2636_computeIfAbsent/2133881068=([java.util.Map, java.lang.Object, java.util.function.Function], java.lang.Object), cast-from-String-to-var595=([java.lang.String], java.lang.Object), cast-from-var595-to-var2432=([java.lang.Object], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo), currentEjb/-1370994396=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo)}
; {var1319=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler, var3697=r1, var1247=r26, var3640=null_type, var828=$r0, var3569=$r3, var2112=$r2, var2297=$r4, var2742=r5, var1087=$r6, var3098=$r7, var2272=$r8, var1197=$r10, var1128=$r9, var2538=$z0, var2636=java.util.Map, var47=$r30, var3311=java.util.function.Function, var1543=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler$lambda_iasCharacters_1__374, var621=$r31, var595=java.lang.Object, var2803=$r32, var2432=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo, var68=$r33}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler=var1319, r1=var3697, r26=var1247, null_type=var3640, $r0=var828, $r3=var3569, $r2=var2112, $r4=var2297, r5=var2742, $r6=var1087, $r7=var3098, $r8=var2272, $r10=var1197, $r9=var1128, $z0=var2538, java.util.Map=var2636, $r30=var47, java.util.function.Function=var3311, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler$lambda_iasCharacters_1__374=var1543, $r31=var621, java.lang.Object=var595, $r32=var2803, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo=var2432, $r33=var68}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r1 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler;	r26 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\ias-ejb-jar\\enterprise-beans\\");	$r2 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String ejbType>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\\ejb-name");	$r10 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	$r9 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.lang.String currentLoc>;	$z0 = virtualinvoke $r10.<java.lang.String: boolean equals(java.lang.Object)>($r9);	if $z0 == 0 goto $r11 = new java.lang.StringBuilder;	$r30 = r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: java.util.Map ejbs>;	$r31 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler$lambda_iasCharacters_1__374: java.util.function.Function bootstrap$(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler)>(r1);	$r32 = interfaceinvoke $r30.<java.util.Map: java.lang.Object computeIfAbsent(java.lang.Object,java.util.function.Function)>(r26, $r31);	$r33 = (com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo) $r32;	r1.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbcHandler: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.optional.ejb.IPlanetEjbc$EjbInfo currentEjb> = $r33;	goto [?= return];	return
;block_num 3