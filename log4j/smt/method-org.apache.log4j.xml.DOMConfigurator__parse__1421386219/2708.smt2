(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2324 0)
(declare-sort var1013 0)
(declare-sort var1402 0)
(declare-sort var2883 0)
(declare-sort var2212 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1013_getTagName/1916305756 (var1013) String)
(declare-fun var1013_getAttribute/210607306 (var1013 String) String)
(declare-fun subst/-1514982940 (var2324 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1402_debug/381960894 (String) void)
(declare-fun var2212_getChildNodes/-162022572 (var2212) var2883)
(declare-fun cast-from-var1013-to-var2212 (var1013) var2212)
(declare-fun var2883_getLength/224812497 (var2883) Int)
(declare-const null-var2324 var2324)
(declare-const null-var1013 var1013)
(declare-const var1983 var2324) ; Statement: r2 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1983 null-var2324)))
(declare-const var3206 var1013) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3206 null-var1013)))
(define-const var3015 String (var1013_getTagName/1916305756 var3206)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var3548 Bool (= var3015 "log4j:configuration")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration") 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert (not (= (ite var3548 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3050 String (var1013_getAttribute/210607306 var3206 "debug")) ; Statement: $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert true)
(define-const var1863 String (subst/-1514982940 var1983 var3050)) ; Statement: $r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var3542 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3542)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3542!1 String)
(assert true)
(define-const var3668 String (append/1560614132 var3542!1 "debug attribute= \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"") 
(declare-const var3542!2 String)
(assert (str.prefixof var3542!1 var3542!2))
(assert true)
(define-const var3885 String (append/1560614132 var3668 var1863)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var3668!1 String)
(assert (str.prefixof var3668 var3668!1))
(assert true)
(define-const var871 String (append/1560614132 var3885 "\u0022.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var3885!1 String)
(assert (str.prefixof var3885 var3885!1))
(assert true)
(define-const var3741 String (toString/-222306083 var871)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1402_debug/381960894 var3741)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var3741!1 String)
(assert true)
(define-const var444 Bool (= var1863 "")) ; Statement: $z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 
(assert (not (= (ite var444 1 0) 0))) ; Cond: $z1 != 0 
;(assert (var1402_debug/381960894 "Ignoring debug attribute.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 

(declare-const var969 String)
(assert true) ; Non Conditional
(define-const var3676 String (var1013_getAttribute/210607306 var3206 "reset")) ; Statement: $r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset") 
(assert true)
(define-const var3624 String (subst/-1514982940 var1983 var3676)) ; Statement: $r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19) 
(define-const var402 String String-init) ; Statement: $r21 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var402)) ; Statement: specialinvoke $r21.<java.lang.StringBuffer: void <init>()>() 

(declare-const var402!1 String)
(assert true)
(define-const var1739 String (append/1560614132 var402!1 "reset attribute= \u0022")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"") 
(declare-const var402!2 String)
(assert (str.prefixof var402!1 var402!2))
(assert true)
(define-const var2249 String (append/1560614132 var1739 var3624)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var1739!1 String)
(assert (str.prefixof var1739 var1739!1))
(assert true)
(define-const var1939 String (append/1560614132 var2249 "\u0022.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var2249!1 String)
(assert (str.prefixof var2249 var2249!1))
(assert true)
(define-const var2494 String (toString/-222306083 var1939)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1402_debug/381960894 var2494)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25) 

(declare-const var2494!1 String)
(define-const var3918 String "") ; Statement: $r26 = "" 
(assert true)
(define-const var3538 Bool (= var3918 var3624)) ; Statement: $z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20) 
 ; Statement: if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert (not (= (ite var3538 1 0) 0))) ; Cond: $z20 != 0 
(define-const var637 String (var1013_getAttribute/210607306 var3206 "configDebug")) ; Statement: $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert true)
(define-const var3711 String (subst/-1514982940 var1983 var637)) ; Statement: $r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27) 
(assert true)
(define-const var2429 Bool (= var3711 "")) ; Statement: $z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert (not (not (= (ite var2429 1 0) 0)))) ; Negate: Cond: $z21 != 0  
(assert true)
(define-const var1030 Bool (= var3711 "null")) ; Statement: $z14 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("null") 
 ; Statement: if $z14 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert (not (= (ite var1030 1 0) 0))) ; Cond: $z14 != 0 
(define-const var1218 String (var1013_getAttribute/210607306 var3206 "threshold")) ; Statement: $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert true)
(define-const var3743 String (subst/-1514982940 var1983 var1218)) ; Statement: $r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29) 
(define-const var1037 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1037)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1037!1 String)
(assert true)
(define-const var1183 String (append/1560614132 var1037!1 "Threshold =\u0022")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"") 
(declare-const var1037!2 String)
(assert (str.prefixof var1037!1 var1037!2))
(assert true)
(define-const var581 String (append/1560614132 var1183 var3743)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30) 
(declare-const var1183!1 String)
(assert (str.prefixof var1183 var1183!1))
(assert true)
(define-const var88 String (append/1560614132 var581 "\u0022.")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var581!1 String)
(assert (str.prefixof var581 var581!1))
(assert true)
(define-const var219 String (toString/-222306083 var88)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1402_debug/381960894 var219)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35) 

(declare-const var219!1 String)
(define-const var393 String "") ; Statement: $r36 = "" 
(assert true)
(define-const var1649 Bool (= var393 var3743)) ; Statement: $z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30) 
 ; Statement: if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(assert (not (= (ite var1649 1 0) 0))) ; Cond: $z22 != 0 
(define-const var3798 var2883 (var2212_getChildNodes/-162022572 (cast-from-var1013-to-var2212 var3206))) ; Statement: $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2527 Int (var2883_getLength/224812497 var3798)) ; Statement: $i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var1135 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= $i2 goto i4 = 0 
(assert (>= var1135 var2527)) ; Cond: i3 >= $i2 
(define-const var1517 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i2 goto return 
(assert (>= var1517 var2527)) ; Cond: i4 >= $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1013_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var1013_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1402_debug/381960894=([java.lang.String], void), var2212_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var1013-to-var2212=([org.w3c.dom.Element], org.w3c.dom.Node), var2883_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var2324=org.apache.log4j.xml.DOMConfigurator, var1983=r2, var1013=org.w3c.dom.Element, var3206=r0, var3015=r1, var3548=$z0, var3050=$r3, var1863=$r18, var3542=$r4, var3668=$r5, var3885=$r6, var871=$r7, var3741=$r8, var1402=org.apache.log4j.helpers.LogLog, var444=$z1, var969="Ignoring debug attribute.", var3676=$r19, var3624=$r20, var402=$r21, var1739=$r22, var2249=$r23, var1939=$r24, var2494=$r25, var3918=$r26, var3538=$z20, var637=$r27, var3711=$r28, var2429=$z21, var1030=$z14, var1218=$r29, var3743=$r30, var1037=$r31, var1183=$r32, var581=$r33, var88=$r34, var219=$r35, var393=$r36, var1649=$z22, var2883=org.w3c.dom.NodeList, var2212=org.w3c.dom.Node, var3798=$r37, var2527=$i2, var1135=i3, var1517=i4}
; {org.apache.log4j.xml.DOMConfigurator=var2324, r2=var1983, org.w3c.dom.Element=var1013, r0=var3206, r1=var3015, $z0=var3548, $r3=var3050, $r18=var1863, $r4=var3542, $r5=var3668, $r6=var3885, $r7=var871, $r8=var3741, org.apache.log4j.helpers.LogLog=var1402, $z1=var444, "Ignoring debug attribute."=var969, $r19=var3676, $r20=var3624, $r21=var402, $r22=var1739, $r23=var2249, $r24=var1939, $r25=var2494, $r26=var3918, $z20=var3538, $r27=var637, $r28=var3711, $z21=var2429, $z14=var1030, $r29=var1218, $r30=var3743, $r31=var1037, $r32=var1183, $r33=var581, $r34=var88, $r35=var219, $r36=var393, $z22=var1649, org.w3c.dom.NodeList=var2883, org.w3c.dom.Node=var2212, $r37=var3798, $i2=var2527, i3=var1135, i4=var1517}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 6,"<java.lang.StringBuffer: void <init>()>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 3}
;stmts r2 := @this: org.apache.log4j.xml.DOMConfigurator;	r0 := @parameter0: org.w3c.dom.Element;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration");	if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	$r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset");	$r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19);	$r21 = new java.lang.StringBuffer;	specialinvoke $r21.<java.lang.StringBuffer: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"");	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25);	$r26 = "";	$z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20);	if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27);	$z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$z14 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("null");	if $z14 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29);	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35);	$r36 = "";	$z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30);	if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>();	i3 = 0;	if i3 >= $i2 goto i4 = 0;	i4 = 0;	if i4 >= $i2 goto return;	return
;block_num 12