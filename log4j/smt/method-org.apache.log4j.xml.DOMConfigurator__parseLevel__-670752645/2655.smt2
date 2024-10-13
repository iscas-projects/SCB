(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3467 0)
(declare-sort var614 0)
(declare-sort var3110 0)
(declare-sort var370 0)
(declare-sort var504 0)
(declare-sort var2322 0)
(declare-sort var1914 0)
(declare-sort var1843 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1326171653 (var370) String)
(declare-fun cast-from-var3110-to-var370 (var3110) var370)
(declare-fun var614_getAttribute/210607306 (var614 String) String)
(declare-fun subst/-1514982940 (var3467 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var504_debug/381960894 (String) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun setLevel/964989947 (var370 var2322) void)
(declare-fun getLevel/-350490789 (var370) var2322)
(declare-fun append/-143899486 (String var1843) String)
(declare-fun cast-from-var2322-to-var1843 (var2322) var1843)
(declare-const null-var3467 var3467)
(declare-const null-var614 var614)
(declare-const null-var3110 var3110)
(declare-const null-Bool Bool)
(declare-const null-NullType var1914)
(declare-const null-var2322 var2322)
(declare-const var3441 var3467) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var3441 null-var3467)))
(declare-const var296 var614) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var296 null-var614)))
(declare-const var2100 var3110) ; Statement: r0 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var2100 null-var3110)))
(declare-const var71 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var71 null-Bool)))
(assert true)
(define-const var1959 String (getName/1326171653 (cast-from-var3110-to-var370 var2100))) ; Statement: r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>() 
 ; Statement: if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert (= (ite var71 1 0) 0)) ; Cond: z0 == 0 
(define-const var2177 String (var614_getAttribute/210607306 var296 "value")) ; Statement: $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert true)
(define-const var1939 String (subst/-1514982940 var3441 var2177)) ; Statement: $r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var1827 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1827)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1827!1 String)
(assert true)
(define-const var2696 String (append/1560614132 var1827!1 "Level value for ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ") 
(declare-const var1827!2 String)
(assert (str.prefixof var1827!1 var1827!2))
(assert true)
(define-const var1903 String (append/1560614132 var2696 var1959)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var2696!1 String)
(assert (str.prefixof var2696 var2696!1))
(assert true)
(define-const var3138 String (append/1560614132 var1903 " is  [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [") 
(declare-const var1903!1 String)
(assert (str.prefixof var1903 var1903!1))
(assert true)
(define-const var3130 String (append/1560614132 var3138 var1939)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28) 
(declare-const var3138!1 String)
(assert (str.prefixof var3138 var3138!1))
(assert true)
(define-const var3043 String (append/1560614132 var3130 "].")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var3130!1 String)
(assert (str.prefixof var3130 var3130!1))
(assert true)
(define-const var1381 String (toString/-222306083 var3043)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var504_debug/381960894 var1381)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10) 

(declare-const var1381!1 String)
(define-const var864 String "inherited") ; Statement: $r11 = "inherited" 
(assert true)
(define-const var3683 Bool (equalsIgnoreCase/-92311102 var864 var1939)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (not (= (ite var3683 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var2160 String "null") ; Statement: $r12 = "null" 
(assert true)
(define-const var441 Bool (equalsIgnoreCase/-92311102 var2160 var1939)) ; Statement: $z2 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z2 == 0 goto $r13 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert (not (= (ite var441 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null) 
(assert (= (ite var71 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (setLevel/964989947 (cast-from-var3110-to-var370 var2100) null-var2322)) ; Statement: virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null) 

(declare-const var2100!1 var3110)
(declare-const var1763 var1914)
 ; Statement: goto [?= $r38 = new java.lang.StringBuffer] 
(assert true) ; Non Conditional
(define-const var3115 String String-init) ; Statement: $r38 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3115)) ; Statement: specialinvoke $r38.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3115!1 String)
(assert true)
(define-const var1761 String (append/1560614132 var3115!1 var1959)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var3115!2 String)
(assert (str.prefixof var3115!1 var3115!2))
(assert true)
(define-const var1007 String (append/1560614132 var1761 " level set to ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ") 
(declare-const var1761!1 String)
(assert (str.prefixof var1761 var1761!1))
(assert true)
(define-const var3628 var2322 (getLevel/-350490789 (cast-from-var3110-to-var370 var2100!1))) ; Statement: $r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var310 String (append/-143899486 var1007 (cast-from-var2322-to-var1843 var3628))) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41) 
(assert true)
(define-const var1718 String (toString/-222306083 var310)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var504_debug/381960894 var1718)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43) 

(declare-const var1718!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var3110-to-var370=([org.apache.log4j.Logger], org.apache.log4j.Category), var614_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var504_debug/381960894=([java.lang.String], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), setLevel/964989947=([org.apache.log4j.Category, org.apache.log4j.Level], void), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var2322-to-var1843=([org.apache.log4j.Level], java.lang.Object)}
; {var3467=org.apache.log4j.xml.DOMConfigurator, var3441=r1, var614=org.w3c.dom.Element, var296=r2, var3110=org.apache.log4j.Logger, var2100=r0, var71=z0, var370=org.apache.log4j.Category, var1959=r31, var2177=$r3, var1939=$r28, var1827=$r4, var2696=$r5, var1903=$r6, var3138=$r7, var3130=$r8, var3043=$r9, var1381=$r10, var504=org.apache.log4j.helpers.LogLog, var864=$r11, var3683=$z1, var2160=$r12, var441=$z2, var2322=org.apache.log4j.Level, var1763=null, var1914=null_type, var3115=$r38, var1761=$r39, var1007=$r40, var3628=$r41, var1843=java.lang.Object, var310=$r42, var1718=$r43}
; {org.apache.log4j.xml.DOMConfigurator=var3467, r1=var3441, org.w3c.dom.Element=var614, r2=var296, org.apache.log4j.Logger=var3110, r0=var2100, z0=var71, org.apache.log4j.Category=var370, r31=var1959, $r3=var2177, $r28=var1939, $r4=var1827, $r5=var2696, $r6=var1903, $r7=var3138, $r8=var3130, $r9=var3043, $r10=var1381, org.apache.log4j.helpers.LogLog=var504, $r11=var864, $z1=var3683, $r12=var2160, $z2=var441, org.apache.log4j.Level=var2322, null=var1763, null_type=var1914, $r38=var3115, $r39=var1761, $r40=var1007, $r41=var3628, java.lang.Object=var1843, $r42=var310, $r43=var1718}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r0 := @parameter1: org.apache.log4j.Logger;	z0 := @parameter2: boolean;	r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>();	if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10);	$r11 = "inherited";	$z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z1 != 0 goto (branch);	$r12 = "null";	$z2 = virtualinvoke $r12.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z2 == 0 goto $r13 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null);	virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null);	goto [?= $r38 = new java.lang.StringBuffer];	$r38 = new java.lang.StringBuffer;	specialinvoke $r38.<java.lang.StringBuffer: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ");	$r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41);	$r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43);	return
;block_num 6