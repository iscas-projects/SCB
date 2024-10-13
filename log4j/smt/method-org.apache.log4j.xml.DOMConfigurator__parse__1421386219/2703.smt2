(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3770 0)
(declare-sort var227 0)
(declare-sort var1152 0)
(declare-sort var460 0)
(declare-sort var599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var227_getTagName/1916305756 (var227) String)
(declare-fun var227_getAttribute/210607306 (var227 String) String)
(declare-fun subst/-1514982940 (var3770 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1152_debug/381960894 (String) void)
(declare-fun var599_getChildNodes/-162022572 (var599) var460)
(declare-fun cast-from-var227-to-var599 (var227) var599)
(declare-fun var460_getLength/224812497 (var460) Int)
(declare-const null-var3770 var3770)
(declare-const null-var227 var227)
(declare-const var1580 var3770) ; Statement: r2 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1580 null-var3770)))
(declare-const var1316 var227) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1316 null-var227)))
(define-const var1344 String (var227_getTagName/1916305756 var1316)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var3647 Bool (= var1344 "log4j:configuration")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration") 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert (not (= (ite var3647 1 0) 0))) ; Cond: $z0 != 0 
(define-const var3807 String (var227_getAttribute/210607306 var1316 "debug")) ; Statement: $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert true)
(define-const var3739 String (subst/-1514982940 var1580 var3807)) ; Statement: $r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var2265 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2265)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2265!1 String)
(assert true)
(define-const var3117 String (append/1560614132 var2265!1 "debug attribute= \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"") 
(declare-const var2265!2 String)
(assert (str.prefixof var2265!1 var2265!2))
(assert true)
(define-const var2039 String (append/1560614132 var3117 var3739)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var3117!1 String)
(assert (str.prefixof var3117 var3117!1))
(assert true)
(define-const var1106 String (append/1560614132 var2039 "\u0022.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var2039!1 String)
(assert (str.prefixof var2039 var2039!1))
(assert true)
(define-const var2734 String (toString/-222306083 var1106)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1152_debug/381960894 var2734)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2734!1 String)
(assert true)
(define-const var2685 Bool (= var3739 "")) ; Statement: $z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 
(assert (not (= (ite var2685 1 0) 0))) ; Cond: $z1 != 0 
;(assert (var1152_debug/381960894 "Ignoring debug attribute.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 

(declare-const var3384 String)
(assert true) ; Non Conditional
(define-const var2297 String (var227_getAttribute/210607306 var1316 "reset")) ; Statement: $r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset") 
(assert true)
(define-const var3170 String (subst/-1514982940 var1580 var2297)) ; Statement: $r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19) 
(define-const var47 String String-init) ; Statement: $r21 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var47)) ; Statement: specialinvoke $r21.<java.lang.StringBuffer: void <init>()>() 

(declare-const var47!1 String)
(assert true)
(define-const var132 String (append/1560614132 var47!1 "reset attribute= \u0022")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"") 
(declare-const var47!2 String)
(assert (str.prefixof var47!1 var47!2))
(assert true)
(define-const var2034 String (append/1560614132 var132 var3170)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var132!1 String)
(assert (str.prefixof var132 var132!1))
(assert true)
(define-const var347 String (append/1560614132 var2034 "\u0022.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var2034!1 String)
(assert (str.prefixof var2034 var2034!1))
(assert true)
(define-const var1500 String (toString/-222306083 var347)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1152_debug/381960894 var1500)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25) 

(declare-const var1500!1 String)
(define-const var3206 String "") ; Statement: $r26 = "" 
(assert true)
(define-const var3606 Bool (= var3206 var3170)) ; Statement: $z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20) 
 ; Statement: if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert (not (= (ite var3606 1 0) 0))) ; Cond: $z20 != 0 
(define-const var966 String (var227_getAttribute/210607306 var1316 "configDebug")) ; Statement: $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert true)
(define-const var3124 String (subst/-1514982940 var1580 var966)) ; Statement: $r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27) 
(assert true)
(define-const var2416 Bool (= var3124 "")) ; Statement: $z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert (not (= (ite var2416 1 0) 0))) ; Cond: $z21 != 0 
(define-const var2608 String (var227_getAttribute/210607306 var1316 "threshold")) ; Statement: $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert true)
(define-const var3812 String (subst/-1514982940 var1580 var2608)) ; Statement: $r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29) 
(define-const var1320 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1320)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1320!1 String)
(assert true)
(define-const var3447 String (append/1560614132 var1320!1 "Threshold =\u0022")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"") 
(declare-const var1320!2 String)
(assert (str.prefixof var1320!1 var1320!2))
(assert true)
(define-const var3874 String (append/1560614132 var3447 var3812)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30) 
(declare-const var3447!1 String)
(assert (str.prefixof var3447 var3447!1))
(assert true)
(define-const var508 String (append/1560614132 var3874 "\u0022.")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var3874!1 String)
(assert (str.prefixof var3874 var3874!1))
(assert true)
(define-const var656 String (toString/-222306083 var508)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1152_debug/381960894 var656)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35) 

(declare-const var656!1 String)
(define-const var1525 String "") ; Statement: $r36 = "" 
(assert true)
(define-const var3816 Bool (= var1525 var3812)) ; Statement: $z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30) 
 ; Statement: if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(assert (not (= (ite var3816 1 0) 0))) ; Cond: $z22 != 0 
(define-const var2723 var460 (var599_getChildNodes/-162022572 (cast-from-var227-to-var599 var1316))) ; Statement: $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var1346 Int (var460_getLength/224812497 var2723)) ; Statement: $i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var2997 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= $i2 goto i4 = 0 
(assert (>= var2997 var1346)) ; Cond: i3 >= $i2 
(define-const var3371 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i2 goto return 
(assert (>= var3371 var1346)) ; Cond: i4 >= $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var227_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var227_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1152_debug/381960894=([java.lang.String], void), var599_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var227-to-var599=([org.w3c.dom.Element], org.w3c.dom.Node), var460_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var3770=org.apache.log4j.xml.DOMConfigurator, var1580=r2, var227=org.w3c.dom.Element, var1316=r0, var1344=r1, var3647=$z0, var3807=$r3, var3739=$r18, var2265=$r4, var3117=$r5, var2039=$r6, var1106=$r7, var2734=$r8, var1152=org.apache.log4j.helpers.LogLog, var2685=$z1, var3384="Ignoring debug attribute.", var2297=$r19, var3170=$r20, var47=$r21, var132=$r22, var2034=$r23, var347=$r24, var1500=$r25, var3206=$r26, var3606=$z20, var966=$r27, var3124=$r28, var2416=$z21, var2608=$r29, var3812=$r30, var1320=$r31, var3447=$r32, var3874=$r33, var508=$r34, var656=$r35, var1525=$r36, var3816=$z22, var460=org.w3c.dom.NodeList, var599=org.w3c.dom.Node, var2723=$r37, var1346=$i2, var2997=i3, var3371=i4}
; {org.apache.log4j.xml.DOMConfigurator=var3770, r2=var1580, org.w3c.dom.Element=var227, r0=var1316, r1=var1344, $z0=var3647, $r3=var3807, $r18=var3739, $r4=var2265, $r5=var3117, $r6=var2039, $r7=var1106, $r8=var2734, org.apache.log4j.helpers.LogLog=var1152, $z1=var2685, "Ignoring debug attribute."=var3384, $r19=var2297, $r20=var3170, $r21=var47, $r22=var132, $r23=var2034, $r24=var347, $r25=var1500, $r26=var3206, $z20=var3606, $r27=var966, $r28=var3124, $z21=var2416, $r29=var2608, $r30=var3812, $r31=var1320, $r32=var3447, $r33=var3874, $r34=var508, $r35=var656, $r36=var1525, $z22=var3816, org.w3c.dom.NodeList=var460, org.w3c.dom.Node=var599, $r37=var2723, $i2=var1346, i3=var2997, i4=var3371}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 5,"<java.lang.StringBuffer: void <init>()>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 3}
;stmts r2 := @this: org.apache.log4j.xml.DOMConfigurator;	r0 := @parameter0: org.w3c.dom.Element;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration");	if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	$r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset");	$r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19);	$r21 = new java.lang.StringBuffer;	specialinvoke $r21.<java.lang.StringBuffer: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"");	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25);	$r26 = "";	$z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20);	if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27);	$z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29);	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35);	$r36 = "";	$z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30);	if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>();	i3 = 0;	if i3 >= $i2 goto i4 = 0;	i4 = 0;	if i4 >= $i2 goto return;	return
;block_num 11