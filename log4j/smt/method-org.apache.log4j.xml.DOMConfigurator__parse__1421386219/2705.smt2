(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1527 0)
(declare-sort var2988 0)
(declare-sort var1116 0)
(declare-sort var3840 0)
(declare-sort var3388 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2988_getTagName/1916305756 (var2988) String)
(declare-fun var2988_getAttribute/210607306 (var2988 String) String)
(declare-fun subst/-1514982940 (var1527 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1116_debug/381960894 (String) void)
(declare-fun var3388_getChildNodes/-162022572 (var3388) var3840)
(declare-fun cast-from-var2988-to-var3388 (var2988) var3388)
(declare-fun var3840_getLength/224812497 (var3840) Int)
(declare-const null-var1527 var1527)
(declare-const null-var2988 var2988)
(declare-const var928 var1527) ; Statement: r2 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var928 null-var1527)))
(declare-const var540 var2988) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var540 null-var2988)))
(define-const var3501 String (var2988_getTagName/1916305756 var540)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var3185 Bool (= var3501 "log4j:configuration")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration") 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert (not (= (ite var3185 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1297 String (var2988_getAttribute/210607306 var540 "debug")) ; Statement: $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert true)
(define-const var3378 String (subst/-1514982940 var928 var1297)) ; Statement: $r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var3506 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3506)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3506!1 String)
(assert true)
(define-const var132 String (append/1560614132 var3506!1 "debug attribute= \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"") 
(declare-const var3506!2 String)
(assert (str.prefixof var3506!1 var3506!2))
(assert true)
(define-const var280 String (append/1560614132 var132 var3378)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var132!1 String)
(assert (str.prefixof var132 var132!1))
(assert true)
(define-const var3697 String (append/1560614132 var280 "\u0022.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var280!1 String)
(assert (str.prefixof var280 var280!1))
(assert true)
(define-const var2206 String (toString/-222306083 var3697)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1116_debug/381960894 var2206)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2206!1 String)
(assert true)
(define-const var3288 Bool (= var3378 "")) ; Statement: $z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 
(assert (not (not (= (ite var3288 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var1558 Bool (= var3378 "null")) ; Statement: $z17 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("null") 
 ; Statement: if $z17 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 
(assert (not (= (ite var1558 1 0) 0))) ; Cond: $z17 != 0 
;(assert (var1116_debug/381960894 "Ignoring debug attribute.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 

(declare-const var692 String)
(assert true) ; Non Conditional
(define-const var617 String (var2988_getAttribute/210607306 var540 "reset")) ; Statement: $r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset") 
(assert true)
(define-const var2739 String (subst/-1514982940 var928 var617)) ; Statement: $r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19) 
(define-const var3959 String String-init) ; Statement: $r21 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3959)) ; Statement: specialinvoke $r21.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3959!1 String)
(assert true)
(define-const var868 String (append/1560614132 var3959!1 "reset attribute= \u0022")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"") 
(declare-const var3959!2 String)
(assert (str.prefixof var3959!1 var3959!2))
(assert true)
(define-const var2958 String (append/1560614132 var868 var2739)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var868!1 String)
(assert (str.prefixof var868 var868!1))
(assert true)
(define-const var3263 String (append/1560614132 var2958 "\u0022.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var2958!1 String)
(assert (str.prefixof var2958 var2958!1))
(assert true)
(define-const var1755 String (toString/-222306083 var3263)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1116_debug/381960894 var1755)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25) 

(declare-const var1755!1 String)
(define-const var3163 String "") ; Statement: $r26 = "" 
(assert true)
(define-const var774 Bool (= var3163 var2739)) ; Statement: $z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20) 
 ; Statement: if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert (not (= (ite var774 1 0) 0))) ; Cond: $z20 != 0 
(define-const var2526 String (var2988_getAttribute/210607306 var540 "configDebug")) ; Statement: $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert true)
(define-const var3841 String (subst/-1514982940 var928 var2526)) ; Statement: $r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27) 
(assert true)
(define-const var2443 Bool (= var3841 "")) ; Statement: $z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert (not (= (ite var2443 1 0) 0))) ; Cond: $z21 != 0 
(define-const var2876 String (var2988_getAttribute/210607306 var540 "threshold")) ; Statement: $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert true)
(define-const var1477 String (subst/-1514982940 var928 var2876)) ; Statement: $r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29) 
(define-const var1644 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1644)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1644!1 String)
(assert true)
(define-const var2036 String (append/1560614132 var1644!1 "Threshold =\u0022")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"") 
(declare-const var1644!2 String)
(assert (str.prefixof var1644!1 var1644!2))
(assert true)
(define-const var547 String (append/1560614132 var2036 var1477)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30) 
(declare-const var2036!1 String)
(assert (str.prefixof var2036 var2036!1))
(assert true)
(define-const var1839 String (append/1560614132 var547 "\u0022.")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var547!1 String)
(assert (str.prefixof var547 var547!1))
(assert true)
(define-const var3979 String (toString/-222306083 var1839)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1116_debug/381960894 var3979)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35) 

(declare-const var3979!1 String)
(define-const var3859 String "") ; Statement: $r36 = "" 
(assert true)
(define-const var2826 Bool (= var3859 var1477)) ; Statement: $z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30) 
 ; Statement: if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(assert (not (= (ite var2826 1 0) 0))) ; Cond: $z22 != 0 
(define-const var1937 var3840 (var3388_getChildNodes/-162022572 (cast-from-var2988-to-var3388 var540))) ; Statement: $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var1022 Int (var3840_getLength/224812497 var1937)) ; Statement: $i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var1506 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= $i2 goto i4 = 0 
(assert (>= var1506 var1022)) ; Cond: i3 >= $i2 
(define-const var2320 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i2 goto return 
(assert (>= var2320 var1022)) ; Cond: i4 >= $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2988_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var2988_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1116_debug/381960894=([java.lang.String], void), var3388_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var2988-to-var3388=([org.w3c.dom.Element], org.w3c.dom.Node), var3840_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var1527=org.apache.log4j.xml.DOMConfigurator, var928=r2, var2988=org.w3c.dom.Element, var540=r0, var3501=r1, var3185=$z0, var1297=$r3, var3378=$r18, var3506=$r4, var132=$r5, var280=$r6, var3697=$r7, var2206=$r8, var1116=org.apache.log4j.helpers.LogLog, var3288=$z1, var1558=$z17, var692="Ignoring debug attribute.", var617=$r19, var2739=$r20, var3959=$r21, var868=$r22, var2958=$r23, var3263=$r24, var1755=$r25, var3163=$r26, var774=$z20, var2526=$r27, var3841=$r28, var2443=$z21, var2876=$r29, var1477=$r30, var1644=$r31, var2036=$r32, var547=$r33, var1839=$r34, var3979=$r35, var3859=$r36, var2826=$z22, var3840=org.w3c.dom.NodeList, var3388=org.w3c.dom.Node, var1937=$r37, var1022=$i2, var1506=i3, var2320=i4}
; {org.apache.log4j.xml.DOMConfigurator=var1527, r2=var928, org.w3c.dom.Element=var2988, r0=var540, r1=var3501, $z0=var3185, $r3=var1297, $r18=var3378, $r4=var3506, $r5=var132, $r6=var280, $r7=var3697, $r8=var2206, org.apache.log4j.helpers.LogLog=var1116, $z1=var3288, $z17=var1558, "Ignoring debug attribute."=var692, $r19=var617, $r20=var2739, $r21=var3959, $r22=var868, $r23=var2958, $r24=var3263, $r25=var1755, $r26=var3163, $z20=var774, $r27=var2526, $r28=var3841, $z21=var2443, $r29=var2876, $r30=var1477, $r31=var1644, $r32=var2036, $r33=var547, $r34=var1839, $r35=var3979, $r36=var3859, $z22=var2826, org.w3c.dom.NodeList=var3840, org.w3c.dom.Node=var3388, $r37=var1937, $i2=var1022, i3=var1506, i4=var2320}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 6,"<java.lang.StringBuffer: void <init>()>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 3}
;stmts r2 := @this: org.apache.log4j.xml.DOMConfigurator;	r0 := @parameter0: org.w3c.dom.Element;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration");	if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	$z17 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("null");	if $z17 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	$r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset");	$r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19);	$r21 = new java.lang.StringBuffer;	specialinvoke $r21.<java.lang.StringBuffer: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"");	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25);	$r26 = "";	$z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20);	if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27);	$z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29);	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35);	$r36 = "";	$z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30);	if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>();	i3 = 0;	if i3 >= $i2 goto i4 = 0;	i4 = 0;	if i4 >= $i2 goto return;	return
;block_num 12