(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var128 0)
(declare-sort var3953 0)
(declare-sort var3240 0)
(declare-sort var126 0)
(declare-sort var3906 0)
(declare-sort var3694 0)
(declare-sort var3002 0)
(declare-sort var1673 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1326171653 (var126) String)
(declare-fun cast-from-var3240-to-var126 (var3240) var126)
(declare-fun var3953_getAttribute/210607306 (var3953 String) String)
(declare-fun subst/-1514982940 (var128 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3906_debug/381960894 (String) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun var3002_toLevel/997525451 (String var3694) var3694)
(declare-fun setLevel/964989947 (var126 var3694) void)
(declare-fun getLevel/-350490789 (var126) var3694)
(declare-fun append/-143899486 (String var1673) String)
(declare-fun cast-from-var3694-to-var1673 (var3694) var1673)
(declare-const null-var128 var128)
(declare-const null-var3953 var3953)
(declare-const null-var3240 var3240)
(declare-const null-Bool Bool)
(declare-const var3694-DEBUG var3694)
(declare-const var1069 var128) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1069 null-var128)))
(declare-const var261 var3953) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var261 null-var3953)))
(declare-const var3284 var3240) ; Statement: r0 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var3284 null-var3240)))
(declare-const var1555 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1555 null-Bool)))
(assert true)
(define-const var2531 String (getName/1326171653 (cast-from-var3240-to-var126 var3284))) ; Statement: r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>() 
 ; Statement: if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert (= (ite var1555 1 0) 0)) ; Cond: z0 == 0 
(define-const var2237 String (var3953_getAttribute/210607306 var261 "value")) ; Statement: $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert true)
(define-const var1623 String (subst/-1514982940 var1069 var2237)) ; Statement: $r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var3233 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3233)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3233!1 String)
(assert true)
(define-const var1313 String (append/1560614132 var3233!1 "Level value for ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ") 
(declare-const var3233!2 String)
(assert (str.prefixof var3233!1 var3233!2))
(assert true)
(define-const var2972 String (append/1560614132 var1313 var2531)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var1313!1 String)
(assert (str.prefixof var1313 var1313!1))
(assert true)
(define-const var283 String (append/1560614132 var2972 " is  [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [") 
(declare-const var2972!1 String)
(assert (str.prefixof var2972 var2972!1))
(assert true)
(define-const var2896 String (append/1560614132 var283 var1623)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28) 
(declare-const var283!1 String)
(assert (str.prefixof var283 var283!1))
(assert true)
(define-const var3495 String (append/1560614132 var2896 "].")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2896!1 String)
(assert (str.prefixof var2896 var2896!1))
(assert true)
(define-const var495 String (toString/-222306083 var3495)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3906_debug/381960894 var495)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10) 

(declare-const var495!1 String)
(define-const var2691 String "inherited") ; Statement: $r11 = "inherited" 
(assert true)
(define-const var1849 Bool (equalsIgnoreCase/-92311102 var2691 var1623)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (not (= (ite var1849 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var300 String "null") ; Statement: $r12 = "null" 
(assert true)
(define-const var1890 Bool (equalsIgnoreCase/-92311102 var300 var1623)) ; Statement: $z2 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z2 == 0 goto $r13 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert (= (ite var1890 1 0) 0)) ; Cond: $z2 == 0 
(define-const var2449 String (var3953_getAttribute/210607306 var261 "class")) ; Statement: $r13 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var2391 String (subst/-1514982940 var1069 var2449)) ; Statement: r14 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r13) 
(define-const var3504 String "") ; Statement: $r15 = "" 
(assert true)
(define-const var2276 Bool (= var3504 var2391)) ; Statement: $z3 = virtualinvoke $r15.<java.lang.String: boolean equals(java.lang.Object)>(r14) 
 ; Statement: if $z3 == 0 goto $r16 = new java.lang.StringBuffer 
(assert (not (= (ite var2276 1 0) 0))) ; Negate: Cond: $z3 == 0  
(define-const var2846 var3694 var3694-DEBUG) ; Statement: $r26 = <org.apache.log4j.Level: org.apache.log4j.Level DEBUG> 
(define-const var1219 var3694 (var3002_toLevel/997525451 var1623 var2846)) ; Statement: $r27 = staticinvoke <org.apache.log4j.helpers.OptionConverter: org.apache.log4j.Level toLevel(java.lang.String,org.apache.log4j.Level)>($r28, $r26) 
(assert true)
;(assert (setLevel/964989947 (cast-from-var3240-to-var126 var3284) var1219)) ; Statement: virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>($r27) 

(declare-const var3284!1 var3240)
(declare-const var1219!1 var3694)
 ; Statement: goto [?= $r38 = new java.lang.StringBuffer] 
(assert true) ; Non Conditional
(define-const var74 String String-init) ; Statement: $r38 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var74)) ; Statement: specialinvoke $r38.<java.lang.StringBuffer: void <init>()>() 

(declare-const var74!1 String)
(assert true)
(define-const var1529 String (append/1560614132 var74!1 var2531)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var74!2 String)
(assert (str.prefixof var74!1 var74!2))
(assert true)
(define-const var866 String (append/1560614132 var1529 " level set to ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ") 
(declare-const var1529!1 String)
(assert (str.prefixof var1529 var1529!1))
(assert true)
(define-const var749 var3694 (getLevel/-350490789 (cast-from-var3240-to-var126 var3284!1))) ; Statement: $r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var2480 String (append/-143899486 var866 (cast-from-var3694-to-var1673 var749))) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41) 
(assert true)
(define-const var1063 String (toString/-222306083 var2480)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3906_debug/381960894 var1063)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43) 

(declare-const var1063!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var3240-to-var126=([org.apache.log4j.Logger], org.apache.log4j.Category), var3953_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3906_debug/381960894=([java.lang.String], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), var3002_toLevel/997525451=([java.lang.String, org.apache.log4j.Level], org.apache.log4j.Level), setLevel/964989947=([org.apache.log4j.Category, org.apache.log4j.Level], void), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var3694-to-var1673=([org.apache.log4j.Level], java.lang.Object)}
; {var128=org.apache.log4j.xml.DOMConfigurator, var1069=r1, var3953=org.w3c.dom.Element, var261=r2, var3240=org.apache.log4j.Logger, var3284=r0, var1555=z0, var126=org.apache.log4j.Category, var2531=r31, var2237=$r3, var1623=$r28, var3233=$r4, var1313=$r5, var2972=$r6, var283=$r7, var2896=$r8, var3495=$r9, var495=$r10, var3906=org.apache.log4j.helpers.LogLog, var2691=$r11, var1849=$z1, var300=$r12, var1890=$z2, var2449=$r13, var2391=r14, var3504=$r15, var2276=$z3, var3694=org.apache.log4j.Level, var2846=$r26, var3002=org.apache.log4j.helpers.OptionConverter, var1219=$r27, var74=$r38, var1529=$r39, var866=$r40, var749=$r41, var1673=java.lang.Object, var2480=$r42, var1063=$r43}
; {org.apache.log4j.xml.DOMConfigurator=var128, r1=var1069, org.w3c.dom.Element=var3953, r2=var261, org.apache.log4j.Logger=var3240, r0=var3284, z0=var1555, org.apache.log4j.Category=var126, r31=var2531, $r3=var2237, $r28=var1623, $r4=var3233, $r5=var1313, $r6=var2972, $r7=var283, $r8=var2896, $r9=var3495, $r10=var495, org.apache.log4j.helpers.LogLog=var3906, $r11=var2691, $z1=var1849, $r12=var300, $z2=var1890, $r13=var2449, r14=var2391, $r15=var3504, $z3=var2276, org.apache.log4j.Level=var3694, $r26=var2846, org.apache.log4j.helpers.OptionConverter=var3002, $r27=var1219, $r38=var74, $r39=var1529, $r40=var866, $r41=var749, java.lang.Object=var1673, $r42=var2480, $r43=var1063}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2,"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r0 := @parameter1: org.apache.log4j.Logger;	z0 := @parameter2: boolean;	r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>();	if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10);	$r11 = "inherited";	$z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z1 != 0 goto (branch);	$r12 = "null";	$z2 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z2 == 0 goto $r13 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	$r13 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r14 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r13);	$r15 = "";	$z3 = virtualinvoke $r15.<java.lang.String: boolean equals(java.lang.Object)>(r14);	if $z3 == 0 goto $r16 = new java.lang.StringBuffer;	$r26 = <org.apache.log4j.Level: org.apache.log4j.Level DEBUG>;	$r27 = staticinvoke <org.apache.log4j.helpers.OptionConverter: org.apache.log4j.Level toLevel(java.lang.String,org.apache.log4j.Level)>($r28, $r26);	virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>($r27);	goto [?= $r38 = new java.lang.StringBuffer];	$r38 = new java.lang.StringBuffer;	specialinvoke $r38.<java.lang.StringBuffer: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ");	$r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41);	$r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43);	return
;block_num 6