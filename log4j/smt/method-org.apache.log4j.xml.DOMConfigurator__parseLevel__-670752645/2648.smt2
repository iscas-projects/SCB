(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var967 0)
(declare-sort var1367 0)
(declare-sort var1167 0)
(declare-sort var2750 0)
(declare-sort var260 0)
(declare-sort var1977 0)
(declare-sort var3426 0)
(declare-sort var2504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/1326171653 (var2750) String)
(declare-fun cast-from-var1167-to-var2750 (var1167) var2750)
(declare-fun var1367_getAttribute/210607306 (var1367 String) String)
(declare-fun subst/-1514982940 (var967 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var260_debug/381960894 (String) void)
(define-fun equalsIgnoreCase/-92311102 ((this String) (another String)) Bool (let ((upper_this (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all this "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z")) (upper_another (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all (str.replace_all another "a" "A") "b" "B") "c" "C") "d" "D") "e" "E") "f" "F") "g" "G") "h" "H") "i" "I") "j" "J") "k" "K") "l" "L") "m" "M") "n" "N") "o" "O") "p" "P") "q" "Q") "r" "R") "s" "S") "t" "T") "u" "U") "v" "V") "w" "W") "x" "X") "y" "Y") "z" "Z"))) (= upper_this upper_another)))
(declare-fun setLevel/964989947 (var2750 var1977) void)
(declare-fun getLevel/-350490789 (var2750) var1977)
(declare-fun append/-143899486 (String var2504) String)
(declare-fun cast-from-var1977-to-var2504 (var1977) var2504)
(declare-const null-var967 var967)
(declare-const null-var1367 var1367)
(declare-const null-var1167 var1167)
(declare-const null-Bool Bool)
(declare-const null-NullType var3426)
(declare-const null-var1977 var1977)
(declare-const var256 var967) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var256 null-var967)))
(declare-const var542 var1367) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var542 null-var1367)))
(declare-const var3331 var1167) ; Statement: r0 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var3331 null-var1167)))
(declare-const var1945 Bool) ; Statement: z0 := @parameter2: boolean 
(assert (not (= var1945 null-Bool)))
(assert true)
(define-const var40 String (getName/1326171653 (cast-from-var1167-to-var2750 var3331))) ; Statement: r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>() 
 ; Statement: if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert (= (ite var1945 1 0) 0)) ; Cond: z0 == 0 
(define-const var1348 String (var1367_getAttribute/210607306 var542 "value")) ; Statement: $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value") 
(assert true)
(define-const var3435 String (subst/-1514982940 var256 var1348)) ; Statement: $r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var678 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var678)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var678!1 String)
(assert true)
(define-const var3145 String (append/1560614132 var678!1 "Level value for ")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ") 
(declare-const var678!2 String)
(assert (str.prefixof var678!1 var678!2))
(assert true)
(define-const var255 String (append/1560614132 var3145 var40)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var3145!1 String)
(assert (str.prefixof var3145 var3145!1))
(assert true)
(define-const var1890 String (append/1560614132 var255 " is  [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [") 
(declare-const var255!1 String)
(assert (str.prefixof var255 var255!1))
(assert true)
(define-const var2914 String (append/1560614132 var1890 var3435)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28) 
(declare-const var1890!1 String)
(assert (str.prefixof var1890 var1890!1))
(assert true)
(define-const var822 String (append/1560614132 var2914 "].")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var2914!1 String)
(assert (str.prefixof var2914 var2914!1))
(assert true)
(define-const var2530 String (toString/-222306083 var822)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var260_debug/381960894 var2530)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10) 

(declare-const var2530!1 String)
(define-const var1416 String "inherited") ; Statement: $r11 = "inherited" 
(assert true)
(define-const var2380 Bool (equalsIgnoreCase/-92311102 var1416 var3435)) ; Statement: $z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28) 
 ; Statement: if $z1 != 0 goto (branch) 
(assert (not (= (ite var2380 1 0) 0))) ; Cond: $z1 != 0 
 ; Statement: if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null) 
(assert (= (ite var1945 1 0) 0)) ; Cond: z0 == 0 
(assert true)
;(assert (setLevel/964989947 (cast-from-var1167-to-var2750 var3331) null-var1977)) ; Statement: virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null) 

(declare-const var3331!1 var1167)
(declare-const var236 var3426)
 ; Statement: goto [?= $r38 = new java.lang.StringBuffer] 
(assert true) ; Non Conditional
(define-const var2983 String String-init) ; Statement: $r38 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2983)) ; Statement: specialinvoke $r38.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2983!1 String)
(assert true)
(define-const var100 String (append/1560614132 var2983!1 var40)) ; Statement: $r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31) 
(declare-const var2983!2 String)
(assert (str.prefixof var2983!1 var2983!2))
(assert true)
(define-const var605 String (append/1560614132 var100 " level set to ")) ; Statement: $r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ") 
(declare-const var100!1 String)
(assert (str.prefixof var100 var100!1))
(assert true)
(define-const var2434 var1977 (getLevel/-350490789 (cast-from-var1167-to-var2750 var3331!1))) ; Statement: $r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>() 
(assert true)
(define-const var1479 String (append/-143899486 var605 (cast-from-var1977-to-var2504 var2434))) ; Statement: $r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41) 
(assert true)
(define-const var2954 String (toString/-222306083 var1479)) ; Statement: $r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var260_debug/381960894 var2954)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43) 

(declare-const var2954!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/1326171653=([org.apache.log4j.Category], java.lang.String), cast-from-var1167-to-var2750=([org.apache.log4j.Logger], org.apache.log4j.Category), var1367_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var260_debug/381960894=([java.lang.String], void), equalsIgnoreCase/-92311102=([java.lang.String, java.lang.String], boolean), setLevel/964989947=([org.apache.log4j.Category, org.apache.log4j.Level], void), getLevel/-350490789=([org.apache.log4j.Category], org.apache.log4j.Level), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-var1977-to-var2504=([org.apache.log4j.Level], java.lang.Object)}
; {var967=org.apache.log4j.xml.DOMConfigurator, var256=r1, var1367=org.w3c.dom.Element, var542=r2, var1167=org.apache.log4j.Logger, var3331=r0, var1945=z0, var2750=org.apache.log4j.Category, var40=r31, var1348=$r3, var3435=$r28, var678=$r4, var3145=$r5, var255=$r6, var1890=$r7, var2914=$r8, var822=$r9, var2530=$r10, var260=org.apache.log4j.helpers.LogLog, var1416=$r11, var2380=$z1, var1977=org.apache.log4j.Level, var236=null, var3426=null_type, var2983=$r38, var100=$r39, var605=$r40, var2434=$r41, var2504=java.lang.Object, var1479=$r42, var2954=$r43}
; {org.apache.log4j.xml.DOMConfigurator=var967, r1=var256, org.w3c.dom.Element=var1367, r2=var542, org.apache.log4j.Logger=var1167, r0=var3331, z0=var1945, org.apache.log4j.Category=var2750, r31=var40, $r3=var1348, $r28=var3435, $r4=var678, $r5=var3145, $r6=var255, $r7=var1890, $r8=var2914, $r9=var822, $r10=var2530, org.apache.log4j.helpers.LogLog=var260, $r11=var1416, $z1=var2380, org.apache.log4j.Level=var1977, null=var236, null_type=var3426, $r38=var2983, $r39=var100, $r40=var605, $r41=var2434, java.lang.Object=var2504, $r42=var1479, $r43=var2954}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 7,"<java.lang.StringBuffer: java.lang.String toString()>": 2,"<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r0 := @parameter1: org.apache.log4j.Logger;	z0 := @parameter2: boolean;	r31 = virtualinvoke r0.<org.apache.log4j.Logger: java.lang.String getName()>();	if z0 == 0 goto $r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r3 = interfaceinvoke r2.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("value");	$r28 = virtualinvoke r1.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Level value for ");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" is  [");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r28);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r10);	$r11 = "inherited";	$z1 = virtualinvoke $r11.<java.lang.String: boolean equalsIgnoreCase(java.lang.String)>($r28);	if $z1 != 0 goto (branch);	if z0 == 0 goto virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null);	virtualinvoke r0.<org.apache.log4j.Logger: void setLevel(org.apache.log4j.Level)>(null);	goto [?= $r38 = new java.lang.StringBuffer];	$r38 = new java.lang.StringBuffer;	specialinvoke $r38.<java.lang.StringBuffer: void <init>()>();	$r39 = virtualinvoke $r38.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r31);	$r40 = virtualinvoke $r39.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" level set to ");	$r41 = virtualinvoke r0.<org.apache.log4j.Logger: org.apache.log4j.Level getLevel()>();	$r42 = virtualinvoke $r40.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r41);	$r43 = virtualinvoke $r42.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r43);	return
;block_num 5