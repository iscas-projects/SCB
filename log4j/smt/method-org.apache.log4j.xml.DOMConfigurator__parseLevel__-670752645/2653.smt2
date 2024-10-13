(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1249 0)
(declare-sort var1516 0)
(declare-sort var3612 0)
(declare-sort var2007 0)
(declare-sort var1500 0)
(declare-sort var1214 0)
(declare-sort var466 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1326171653 (var2007) String)
(declare-fun cast-from-var3612-to-var2007 (var3612) var2007)
(declare-fun var1516_getAttribute/210607306 (var1516 String) String)
(declare-fun subst/-1514982940 (var1249 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1500_debug/381960894 (String) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var1500_error/-402343703 (String) void)
(declare-fun getLevel/-350490789 (var2007) var1214)
(declare-fun append/-143899486 (String var466) String)
(declare-fun cast-from-var1214-to-var466 (var1214) var466)
(declare-const null-var1249 var1249)
(declare-const null-var1516 var1516)
(declare-const null-var3612 var3612)
(declare-const null-Bool Bool)
(declare-const var3321 var1249) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var3321 null-var1249)))
(declare-const var196 var1516) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var196 null-var1516)))
(declare-const var1250 var3612) ; Statement: r0 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var1250 null-var3612)))
(declare-const var1132 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1132 null-Bool)))
(assert true)
(define-const var3168 String (getName/1326171653 (cast-from-var3612-to-var2007 var1250))) ; Statement: r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>() 
 ; Statement: if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert (= (ite var1132 1 0) 0)) ; Cond: z0 == 0 
(define-const var1182 String (var1516_getAttribute/210607306 var196 "value")) ; Statement: $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert true)
(define-const var176 String (subst/-1514982940 var3321 var1182)) ; Statement: $r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var2060 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2060)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2060!1 String)
(assert true)
(define-const var2762 String (append/1560614132 var2060!1 "Level value for ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ") 
(declare-const var2060!2 String)
(assert (str.prefixof var2060!1 var2060!2))
(assert true)
(define-const var3765 String (append/1560614132 var2762 var3168)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var2762!1 String)
(assert (str.prefixof var2762 var2762!1))
(assert true)
(define-const var1608 String (append/1560614132 var3765 " is  [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [") 
(declare-const var3765!1 String)
(assert (str.prefixof var3765 var3765!1))
(assert true)
(define-const var109 String (append/1560614132 var1608 var176)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28) 
(declare-const var1608!1 String)
(assert (str.prefixof var1608 var1608!1))
(assert true)
(define-const var1857 String (append/1560614132 var109 "].")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var109!1 String)
(assert (str.prefixof var109 var109!1))
(assert true)
(define-const var3994 String (toString/-222306083 var1857)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1500_debug/381960894 var3994)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10) 

(declare-const var3994!1 String)
(define-const var533 String "inherited") ; Statement: $r11 = "inherited" 
(assert true)
(define-const var1896 Bool (equalsIgnoreCase/-92311102 var533 var176)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (not (= (ite var1896 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2486 String "null") ; Statement: $r12 = "null" 
(assert true)
(define-const var2145 Bool (equalsIgnoreCase/-92311102 var2486 var176)) ; Statement: $z2 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z2 == 0 goto $r13 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert (not (= (ite var2145 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null) 
(assert (not (= (ite var1132 1 0) 0))) ; Negate: Cond: z0 == 0  
;(assert (var1500_error/-402343703 "Root level cannot be inherited. Ignoring directive.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("Root level cannot be inherited. Ignoring directive.") 

(declare-const var252 String)
 ; Statement: goto [?= $r38 = new java.lang.StringBuffer] 
(assert true) ; Non Conditional
(define-const var1595 String String-init) ; Statement: $r38 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1595)) ; Statement: specialinvoke $r38.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1595!1 String)
(assert true)
(define-const var3477 String (append/1560614132 var1595!1 var3168)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var1595!2 String)
(assert (str.prefixof var1595!1 var1595!2))
(assert true)
(define-const var1572 String (append/1560614132 var3477 " level set to ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ") 
(declare-const var3477!1 String)
(assert (str.prefixof var3477 var3477!1))
(assert true)
(define-const var2004 var1214 (getLevel/-350490789 (cast-from-var3612-to-var2007 var1250))) ; Statement: $r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var2695 String (append/-143899486 var1572 (cast-from-var1214-to-var466 var2004))) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41) 
(assert true)
(define-const var134 String (toString/-222306083 var2695)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1500_debug/381960894 var134)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43) 

(declare-const var134!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var3612-to-var2007=([org.apache.log4j.Logger], org.apache.log4j.Category), var1516_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1500_debug/381960894=([java.lang.String], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var1500_error/-402343703=([java.lang.String], void), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var1214-to-var466=([org.apache.log4j.Level], java.lang.Object)}
; {var1249=org.apache.log4j.xml.DOMConfigurator, var3321=r1, var1516=org.w3c.dom.Element, var196=r2, var3612=org.apache.log4j.Logger, var1250=r0, var1132=z0, var2007=org.apache.log4j.Category, var3168=r31, var1182=$r3, var176=$r28, var2060=$r4, var2762=$r5, var3765=$r6, var1608=$r7, var109=$r8, var1857=$r9, var3994=$r10, var1500=org.apache.log4j.helpers.LogLog, var533=$r11, var1896=$z1, var2486=$r12, var2145=$z2, var252="Root level cannot be inherited. Ignoring directive.", var1595=$r38, var3477=$r39, var1572=$r40, var1214=org.apache.log4j.Level, var2004=$r41, var466=java.lang.Object, var2695=$r42, var134=$r43}
; {org.apache.log4j.xml.DOMConfigurator=var1249, r1=var3321, org.w3c.dom.Element=var1516, r2=var196, org.apache.log4j.Logger=var3612, r0=var1250, z0=var1132, org.apache.log4j.Category=var2007, r31=var3168, $r3=var1182, $r28=var176, $r4=var2060, $r5=var2762, $r6=var3765, $r7=var1608, $r8=var109, $r9=var1857, $r10=var3994, org.apache.log4j.helpers.LogLog=var1500, $r11=var533, $z1=var1896, $r12=var2486, $z2=var2145, "Root level cannot be inherited. Ignoring directive."=var252, $r38=var1595, $r39=var3477, $r40=var1572, org.apache.log4j.Level=var1214, $r41=var2004, java.lang.Object=var466, $r42=var2695, $r43=var134}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r0 := @parameter1: org.apache.log4j.Logger;	z0 := @parameter2: boolean;	r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>();	if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10);	$r11 = "inherited";	$z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z1 != 0 goto (branch);	$r12 = "null";	$z2 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z2 == 0 goto $r13 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null);	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>("Root level cannot be inherited. Ignoring directive.");	goto [?= $r38 = new java.lang.StringBuffer];	$r38 = new java.lang.StringBuffer;	specialinvoke $r38.<java.lang.StringBuffer: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ");	$r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41);	$r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43);	return
;block_num 6