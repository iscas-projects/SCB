(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3121 0)
(declare-sort var2569 0)
(declare-sort var2485 0)
(declare-sort var2153 0)
(declare-sort var1541 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2569_getTagName/1916305756 (var2569) String)
(declare-fun var2569_getAttribute/210607306 (var2569 String) String)
(declare-fun subst/-1514982940 (var3121 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2485_debug/381960894 (String) void)
(declare-fun var1541_getChildNodes/-162022572 (var1541) var2153)
(declare-fun cast-from-var2569-to-var1541 (var2569) var1541)
(declare-fun var2153_getLength/224812497 (var2153) Int)
(declare-const null-var3121 var3121)
(declare-const null-var2569 var2569)
(declare-const var2099 var3121) ; Statement: r2 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var2099 null-var3121)))
(declare-const var1528 var2569) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1528 null-var2569)))
(define-const var3667 String (var2569_getTagName/1916305756 var1528)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var1781 Bool (= var3667 "log4j:configuration")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration") 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert (not (= (ite var1781 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2780 String (var2569_getAttribute/210607306 var1528 "debug")) ; Statement: $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert true)
(define-const var3282 String (subst/-1514982940 var2099 var2780)) ; Statement: $r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var3330 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3330)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3330!1 String)
(assert true)
(define-const var3015 String (append/1560614132 var3330!1 "debug attribute= \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"") 
(declare-const var3330!2 String)
(assert (str.prefixof var3330!1 var3330!2))
(assert true)
(define-const var424 String (append/1560614132 var3015 var3282)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var3015!1 String)
(assert (str.prefixof var3015 var3015!1))
(assert true)
(define-const var1585 String (append/1560614132 var424 "\u0022.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var424!1 String)
(assert (str.prefixof var424 var424!1))
(assert true)
(define-const var14 String (toString/-222306083 var1585)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2485_debug/381960894 var14)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var14!1 String)
(assert true)
(define-const var827 Bool (= var3282 "")) ; Statement: $z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 
(assert (not (= (ite var827 1 0) 0))) ; Cond: $z1 != 0 
;(assert (var2485_debug/381960894 "Ignoring debug attribute.")) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 

(declare-const var834 String)
(assert true) ; Non Conditional
(define-const var2598 String (var2569_getAttribute/210607306 var1528 "reset")) ; Statement: $r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset") 
(assert true)
(define-const var3704 String (subst/-1514982940 var2099 var2598)) ; Statement: $r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19) 
(define-const var3146 String String-init) ; Statement: $r21 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3146)) ; Statement: specialinvoke $r21.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3146!1 String)
(assert true)
(define-const var3975 String (append/1560614132 var3146!1 "reset attribute= \u0022")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"") 
(declare-const var3146!2 String)
(assert (str.prefixof var3146!1 var3146!2))
(assert true)
(define-const var371 String (append/1560614132 var3975 var3704)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var3975!1 String)
(assert (str.prefixof var3975 var3975!1))
(assert true)
(define-const var2300 String (append/1560614132 var371 "\u0022.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var371!1 String)
(assert (str.prefixof var371 var371!1))
(assert true)
(define-const var2082 String (toString/-222306083 var2300)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2485_debug/381960894 var2082)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25) 

(declare-const var2082!1 String)
(define-const var1372 String "") ; Statement: $r26 = "" 
(assert true)
(define-const var2798 Bool (= var1372 var3704)) ; Statement: $z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20) 
 ; Statement: if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert (not (= (ite var2798 1 0) 0))) ; Cond: $z20 != 0 
(define-const var3178 String (var2569_getAttribute/210607306 var1528 "configDebug")) ; Statement: $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert true)
(define-const var2170 String (subst/-1514982940 var2099 var3178)) ; Statement: $r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27) 
(assert true)
(define-const var3722 Bool (= var2170 "")) ; Statement: $z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert (not (= (ite var3722 1 0) 0))) ; Cond: $z21 != 0 
(define-const var3562 String (var2569_getAttribute/210607306 var1528 "threshold")) ; Statement: $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert true)
(define-const var2737 String (subst/-1514982940 var2099 var3562)) ; Statement: $r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29) 
(define-const var776 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var776)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var776!1 String)
(assert true)
(define-const var724 String (append/1560614132 var776!1 "Threshold =\u0022")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"") 
(declare-const var776!2 String)
(assert (str.prefixof var776!1 var776!2))
(assert true)
(define-const var2007 String (append/1560614132 var724 var2737)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30) 
(declare-const var724!1 String)
(assert (str.prefixof var724 var724!1))
(assert true)
(define-const var2393 String (append/1560614132 var2007 "\u0022.")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var2007!1 String)
(assert (str.prefixof var2007 var2007!1))
(assert true)
(define-const var1207 String (toString/-222306083 var2393)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2485_debug/381960894 var1207)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35) 

(declare-const var1207!1 String)
(define-const var847 String "") ; Statement: $r36 = "" 
(assert true)
(define-const var3428 Bool (= var847 var2737)) ; Statement: $z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30) 
 ; Statement: if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(assert (not (not (= (ite var3428 1 0) 0)))) ; Negate: Cond: $z22 != 0  
(define-const var2876 String "null") ; Statement: $r15 = "null" 
(assert true)
(define-const var1692 Bool (= var2876 var2737)) ; Statement: $z13 = virtualinvoke $r15.<java.lang.String: boolean equals(java.lang.Object)>($r30) 
 ; Statement: if $z13 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(assert (not (= (ite var1692 1 0) 0))) ; Cond: $z13 != 0 
(define-const var3256 var2153 (var1541_getChildNodes/-162022572 (cast-from-var2569-to-var1541 var1528))) ; Statement: $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var355 Int (var2153_getLength/224812497 var3256)) ; Statement: $i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var2582 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= $i2 goto i4 = 0 
(assert (>= var2582 var355)) ; Cond: i3 >= $i2 
(define-const var3930 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i2 goto return 
(assert (>= var3930 var355)) ; Cond: i4 >= $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2569_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var2569_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2485_debug/381960894=([java.lang.String], void), var1541_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var2569-to-var1541=([org.w3c.dom.Element], org.w3c.dom.Node), var2153_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var3121=org.apache.log4j.xml.DOMConfigurator, var2099=r2, var2569=org.w3c.dom.Element, var1528=r0, var3667=r1, var1781=$z0, var2780=$r3, var3282=$r18, var3330=$r4, var3015=$r5, var424=$r6, var1585=$r7, var14=$r8, var2485=org.apache.log4j.helpers.LogLog, var827=$z1, var834="Ignoring debug attribute.", var2598=$r19, var3704=$r20, var3146=$r21, var3975=$r22, var371=$r23, var2300=$r24, var2082=$r25, var1372=$r26, var2798=$z20, var3178=$r27, var2170=$r28, var3722=$z21, var3562=$r29, var2737=$r30, var776=$r31, var724=$r32, var2007=$r33, var2393=$r34, var1207=$r35, var847=$r36, var3428=$z22, var2876=$r15, var1692=$z13, var2153=org.w3c.dom.NodeList, var1541=org.w3c.dom.Node, var3256=$r37, var355=$i2, var2582=i3, var3930=i4}
; {org.apache.log4j.xml.DOMConfigurator=var3121, r2=var2099, org.w3c.dom.Element=var2569, r0=var1528, r1=var3667, $z0=var1781, $r3=var2780, $r18=var3282, $r4=var3330, $r5=var3015, $r6=var424, $r7=var1585, $r8=var14, org.apache.log4j.helpers.LogLog=var2485, $z1=var827, "Ignoring debug attribute."=var834, $r19=var2598, $r20=var3704, $r21=var3146, $r22=var3975, $r23=var371, $r24=var2300, $r25=var2082, $r26=var1372, $z20=var2798, $r27=var3178, $r28=var2170, $z21=var3722, $r29=var3562, $r30=var2737, $r31=var776, $r32=var724, $r33=var2007, $r34=var2393, $r35=var1207, $r36=var847, $z22=var3428, $r15=var2876, $z13=var1692, org.w3c.dom.NodeList=var2153, org.w3c.dom.Node=var1541, $r37=var3256, $i2=var355, i3=var2582, i4=var3930}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 6,"<java.lang.StringBuffer: void <init>()>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 3}
;stmts r2 := @this: org.apache.log4j.xml.DOMConfigurator;	r0 := @parameter0: org.w3c.dom.Element;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration");	if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	$r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset");	$r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19);	$r21 = new java.lang.StringBuffer;	specialinvoke $r21.<java.lang.StringBuffer: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"");	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25);	$r26 = "";	$z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20);	if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27);	$z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29);	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35);	$r36 = "";	$z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30);	if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$r15 = "null";	$z13 = virtualinvoke $r15.<java.lang.String: boolean equals(java.lang.Object)>($r30);	if $z13 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>();	i3 = 0;	if i3 >= $i2 goto i4 = 0;	i4 = 0;	if i4 >= $i2 goto return;	return
;block_num 12