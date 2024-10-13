(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2952 0)
(declare-sort var2268 0)
(declare-sort var2827 0)
(declare-sort var2793 0)
(declare-sort var3835 0)
(declare-sort var2414 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2268_getTagName/1916305756 (var2268) String)
(declare-fun var2268_getAttribute/210607306 (var2268 String) String)
(declare-fun subst/-1514982940 (var2952 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2827_debug/381960894 (String) void)
(declare-fun var2793_toBoolean/2053430371 (String Bool) Bool)
(declare-fun var2414_getChildNodes/-162022572 (var2414) var3835)
(declare-fun cast-from-var2268-to-var2414 (var2268) var2414)
(declare-fun var3835_getLength/224812497 (var3835) Int)
(declare-const null-var2952 var2952)
(declare-const null-var2268 var2268)
(declare-const var459 var2952) ; Statement: r2 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var459 null-var2952)))
(declare-const var869 var2268) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var869 null-var2268)))
(define-const var983 String (var2268_getTagName/1916305756 var869)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var3392 Bool (= var983 "log4j:configuration")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration") 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert (not (= (ite var3392 1 0) 0))) ; Cond: $z0 != 0 
(define-const var232 String (var2268_getAttribute/210607306 var869 "debug")) ; Statement: $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert true)
(define-const var3221 String (subst/-1514982940 var459 var232)) ; Statement: $r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var218 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var218)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var218!1 String)
(assert true)
(define-const var1034 String (append/1560614132 var218!1 "debug attribute= \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"") 
(declare-const var218!2 String)
(assert (str.prefixof var218!1 var218!2))
(assert true)
(define-const var103 String (append/1560614132 var1034 var3221)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var1034!1 String)
(assert (str.prefixof var1034 var1034!1))
(assert true)
(define-const var1607 String (append/1560614132 var103 "\u0022.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var103!1 String)
(assert (str.prefixof var103 var103!1))
(assert true)
(define-const var1165 String (toString/-222306083 var1607)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2827_debug/381960894 var1165)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var1165!1 String)
(assert true)
(define-const var1619 Bool (= var3221 "")) ; Statement: $z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 
(assert (not (= (ite var1619 1 0) 0))) ; Cond: $z1 != 0 
;(assert (var2827_debug/381960894 "Ignoring debug attribute.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 

(declare-const var242 String)
(assert true) ; Non Conditional
(define-const var2797 String (var2268_getAttribute/210607306 var869 "reset")) ; Statement: $r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset") 
(assert true)
(define-const var1360 String (subst/-1514982940 var459 var2797)) ; Statement: $r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19) 
(define-const var267 String String-init) ; Statement: $r21 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var267)) ; Statement: specialinvoke $r21.<java.lang.StringBuffer: void <init>()>() 

(declare-const var267!1 String)
(assert true)
(define-const var3608 String (append/1560614132 var267!1 "reset attribute= \u0022")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"") 
(declare-const var267!2 String)
(assert (str.prefixof var267!1 var267!2))
(assert true)
(define-const var1025 String (append/1560614132 var3608 var1360)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var3608!1 String)
(assert (str.prefixof var3608 var3608!1))
(assert true)
(define-const var1745 String (append/1560614132 var1025 "\u0022.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var1025!1 String)
(assert (str.prefixof var1025 var1025!1))
(assert true)
(define-const var3110 String (toString/-222306083 var1745)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2827_debug/381960894 var3110)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25) 

(declare-const var3110!1 String)
(define-const var1380 String "") ; Statement: $r26 = "" 
(assert true)
(define-const var3070 Bool (= var1380 var1360)) ; Statement: $z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20) 
 ; Statement: if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert (not (not (= (ite var3070 1 0) 0)))) ; Negate: Cond: $z20 != 0  
(define-const var2786 Bool (var2793_toBoolean/2053430371 var1360 (ite (= 1 0) true false))) ; Statement: $z16 = staticinvoke <org.apache.log4j.helpers.OptionConverter: boolean toBoolean(java.lang.String,boolean)>($r20, 0) 
 ; Statement: if $z16 == 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert (= (ite var2786 1 0) 0)) ; Cond: $z16 == 0 
(define-const var427 String (var2268_getAttribute/210607306 var869 "configDebug")) ; Statement: $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert true)
(define-const var3520 String (subst/-1514982940 var459 var427)) ; Statement: $r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27) 
(assert true)
(define-const var25 Bool (= var3520 "")) ; Statement: $z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert (not (= (ite var25 1 0) 0))) ; Cond: $z21 != 0 
(define-const var1998 String (var2268_getAttribute/210607306 var869 "threshold")) ; Statement: $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert true)
(define-const var2514 String (subst/-1514982940 var459 var1998)) ; Statement: $r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29) 
(define-const var1258 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1258)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1258!1 String)
(assert true)
(define-const var3279 String (append/1560614132 var1258!1 "Threshold =\u0022")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"") 
(declare-const var1258!2 String)
(assert (str.prefixof var1258!1 var1258!2))
(assert true)
(define-const var3317 String (append/1560614132 var3279 var2514)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30) 
(declare-const var3279!1 String)
(assert (str.prefixof var3279 var3279!1))
(assert true)
(define-const var692 String (append/1560614132 var3317 "\u0022.")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var3317!1 String)
(assert (str.prefixof var3317 var3317!1))
(assert true)
(define-const var953 String (toString/-222306083 var692)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2827_debug/381960894 var953)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35) 

(declare-const var953!1 String)
(define-const var651 String "") ; Statement: $r36 = "" 
(assert true)
(define-const var2633 Bool (= var651 var2514)) ; Statement: $z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30) 
 ; Statement: if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(assert (not (= (ite var2633 1 0) 0))) ; Cond: $z22 != 0 
(define-const var3485 var3835 (var2414_getChildNodes/-162022572 (cast-from-var2268-to-var2414 var869))) ; Statement: $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var1324 Int (var3835_getLength/224812497 var3485)) ; Statement: $i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var1373 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= $i2 goto i4 = 0 
(assert (>= var1373 var1324)) ; Cond: i3 >= $i2 
(define-const var3881 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i2 goto return 
(assert (>= var3881 var1324)) ; Cond: i4 >= $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2268_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var2268_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2827_debug/381960894=([java.lang.String], void), var2793_toBoolean/2053430371=([java.lang.String, boolean], boolean), var2414_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var2268-to-var2414=([org.w3c.dom.Element], org.w3c.dom.Node), var3835_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var2952=org.apache.log4j.xml.DOMConfigurator, var459=r2, var2268=org.w3c.dom.Element, var869=r0, var983=r1, var3392=$z0, var232=$r3, var3221=$r18, var218=$r4, var1034=$r5, var103=$r6, var1607=$r7, var1165=$r8, var2827=org.apache.log4j.helpers.LogLog, var1619=$z1, var242="Ignoring debug attribute.", var2797=$r19, var1360=$r20, var267=$r21, var3608=$r22, var1025=$r23, var1745=$r24, var3110=$r25, var1380=$r26, var3070=$z20, var2793=org.apache.log4j.helpers.OptionConverter, var2786=$z16, var427=$r27, var3520=$r28, var25=$z21, var1998=$r29, var2514=$r30, var1258=$r31, var3279=$r32, var3317=$r33, var692=$r34, var953=$r35, var651=$r36, var2633=$z22, var3835=org.w3c.dom.NodeList, var2414=org.w3c.dom.Node, var3485=$r37, var1324=$i2, var1373=i3, var3881=i4}
; {org.apache.log4j.xml.DOMConfigurator=var2952, r2=var459, org.w3c.dom.Element=var2268, r0=var869, r1=var983, $z0=var3392, $r3=var232, $r18=var3221, $r4=var218, $r5=var1034, $r6=var103, $r7=var1607, $r8=var1165, org.apache.log4j.helpers.LogLog=var2827, $z1=var1619, "Ignoring debug attribute."=var242, $r19=var2797, $r20=var1360, $r21=var267, $r22=var3608, $r23=var1025, $r24=var1745, $r25=var3110, $r26=var1380, $z20=var3070, org.apache.log4j.helpers.OptionConverter=var2793, $z16=var2786, $r27=var427, $r28=var3520, $z21=var25, $r29=var1998, $r30=var2514, $r31=var1258, $r32=var3279, $r33=var3317, $r34=var692, $r35=var953, $r36=var651, $z22=var2633, org.w3c.dom.NodeList=var3835, org.w3c.dom.Node=var2414, $r37=var3485, $i2=var1324, i3=var1373, i4=var3881}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 5,"<java.lang.StringBuffer: void <init>()>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 3}
;stmts r2 := @this: org.apache.log4j.xml.DOMConfigurator;	r0 := @parameter0: org.w3c.dom.Element;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration");	if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	$r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset");	$r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19);	$r21 = new java.lang.StringBuffer;	specialinvoke $r21.<java.lang.StringBuffer: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"");	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25);	$r26 = "";	$z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20);	if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$z16 = staticinvoke <org.apache.log4j.helpers.OptionConverter: boolean toBoolean(java.lang.String,boolean)>($r20, 0);	if $z16 == 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27);	$z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29);	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35);	$r36 = "";	$z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30);	if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>();	i3 = 0;	if i3 >= $i2 goto i4 = 0;	i4 = 0;	if i4 >= $i2 goto return;	return
;block_num 12