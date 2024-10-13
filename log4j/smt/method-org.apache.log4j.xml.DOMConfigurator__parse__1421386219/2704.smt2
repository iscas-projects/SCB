(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1209 0)
(declare-sort var311 0)
(declare-sort var3314 0)
(declare-sort var2309 0)
(declare-sort var2634 0)
(declare-sort var2052 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var311_getTagName/1916305756 (var311) String)
(declare-fun var311_getAttribute/210607306 (var311 String) String)
(declare-fun subst/-1514982940 (var1209 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var3314_debug/381960894 (String) void)
(declare-fun var2309_toBoolean/2053430371 (String Bool) Bool)
(declare-fun var3314_setInternalDebugging/323359251 (Bool) void)
(declare-fun var2052_getChildNodes/-162022572 (var2052) var2634)
(declare-fun cast-from-var311-to-var2052 (var311) var2052)
(declare-fun var2634_getLength/224812497 (var2634) Int)
(declare-const null-var1209 var1209)
(declare-const null-var311 var311)
(declare-const var2564 var1209) ; Statement: r2 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var2564 null-var1209)))
(declare-const var1851 var311) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1851 null-var311)))
(define-const var3380 String (var311_getTagName/1916305756 var1851)) ; Statement: r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var3166 Bool (= var3380 "log4j:configuration")) ; Statement: $z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration") 
 ; Statement: if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert (not (= (ite var3166 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1976 String (var311_getAttribute/210607306 var1851 "debug")) ; Statement: $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug") 
(assert true)
(define-const var267 String (subst/-1514982940 var2564 var1976)) ; Statement: $r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3) 
(define-const var2540 String String-init) ; Statement: $r4 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2540)) ; Statement: specialinvoke $r4.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2540!1 String)
(assert true)
(define-const var2390 String (append/1560614132 var2540!1 "debug attribute= \u0022")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"") 
(declare-const var2540!2 String)
(assert (str.prefixof var2540!1 var2540!2))
(assert true)
(define-const var3116 String (append/1560614132 var2390 var267)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18) 
(declare-const var2390!1 String)
(assert (str.prefixof var2390 var2390!1))
(assert true)
(define-const var3360 String (append/1560614132 var3116 "\u0022.")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var3116!1 String)
(assert (str.prefixof var3116 var3116!1))
(assert true)
(define-const var2602 String (toString/-222306083 var3360)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3314_debug/381960894 var2602)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8) 

(declare-const var2602!1 String)
(assert true)
(define-const var1681 Bool (= var267 "")) ; Statement: $z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 
(assert (not (not (= (ite var1681 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(assert true)
(define-const var1770 Bool (= var267 "null")) ; Statement: $z17 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("null") 
 ; Statement: if $z17 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.") 
(assert (not (not (= (ite var1770 1 0) 0)))) ; Negate: Cond: $z17 != 0  
(define-const var2483 Bool (var2309_toBoolean/2053430371 var267 (ite (= 1 1) true false))) ; Statement: $z18 = staticinvoke <org.apache.log4j.helpers.OptionConverter: boolean toBoolean(java.lang.String,boolean)>($r18, 1) 
;(assert (var3314_setInternalDebugging/323359251 var2483)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void setInternalDebugging(boolean)>($z18) 

(declare-const var2483!1 Bool)
 ; Statement: goto [?= $r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset")] 
(assert true) ; Non Conditional
(define-const var1837 String (var311_getAttribute/210607306 var1851 "reset")) ; Statement: $r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset") 
(assert true)
(define-const var2577 String (subst/-1514982940 var2564 var1837)) ; Statement: $r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19) 
(define-const var2534 String String-init) ; Statement: $r21 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2534)) ; Statement: specialinvoke $r21.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2534!1 String)
(assert true)
(define-const var3046 String (append/1560614132 var2534!1 "reset attribute= \u0022")) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"") 
(declare-const var2534!2 String)
(assert (str.prefixof var2534!1 var2534!2))
(assert true)
(define-const var151 String (append/1560614132 var3046 var2577)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20) 
(declare-const var3046!1 String)
(assert (str.prefixof var3046 var3046!1))
(assert true)
(define-const var272 String (append/1560614132 var151 "\u0022.")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var151!1 String)
(assert (str.prefixof var151 var151!1))
(assert true)
(define-const var444 String (toString/-222306083 var272)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3314_debug/381960894 var444)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25) 

(declare-const var444!1 String)
(define-const var14 String "") ; Statement: $r26 = "" 
(assert true)
(define-const var2998 Bool (= var14 var2577)) ; Statement: $z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20) 
 ; Statement: if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert (not (= (ite var2998 1 0) 0))) ; Cond: $z20 != 0 
(define-const var2832 String (var311_getAttribute/210607306 var1851 "configDebug")) ; Statement: $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug") 
(assert true)
(define-const var1693 String (subst/-1514982940 var2564 var2832)) ; Statement: $r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27) 
(assert true)
(define-const var3714 Bool (= var1693 "")) ; Statement: $z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("") 
 ; Statement: if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert (not (= (ite var3714 1 0) 0))) ; Cond: $z21 != 0 
(define-const var3579 String (var311_getAttribute/210607306 var1851 "threshold")) ; Statement: $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold") 
(assert true)
(define-const var183 String (subst/-1514982940 var2564 var3579)) ; Statement: $r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29) 
(define-const var3225 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3225)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3225!1 String)
(assert true)
(define-const var168 String (append/1560614132 var3225!1 "Threshold =\u0022")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"") 
(declare-const var3225!2 String)
(assert (str.prefixof var3225!1 var3225!2))
(assert true)
(define-const var2923 String (append/1560614132 var168 var183)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30) 
(declare-const var168!1 String)
(assert (str.prefixof var168 var168!1))
(assert true)
(define-const var4 String (append/1560614132 var2923 "\u0022.")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".") 
(declare-const var2923!1 String)
(assert (str.prefixof var2923 var2923!1))
(assert true)
(define-const var2928 String (toString/-222306083 var4)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var3314_debug/381960894 var2928)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35) 

(declare-const var2928!1 String)
(define-const var2868 String "") ; Statement: $r36 = "" 
(assert true)
(define-const var3445 Bool (= var2868 var183)) ; Statement: $z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30) 
 ; Statement: if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(assert (not (= (ite var3445 1 0) 0))) ; Cond: $z22 != 0 
(define-const var1290 var2634 (var2052_getChildNodes/-162022572 (cast-from-var311-to-var2052 var1851))) ; Statement: $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var3889 Int (var2634_getLength/224812497 var1290)) ; Statement: $i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var2806 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= $i2 goto i4 = 0 
(assert (>= var2806 var3889)) ; Cond: i3 >= $i2 
(define-const var2187 Int 0) ; Statement: i4 = 0 
(assert true) ; Non Conditional
 ; Statement: if i4 >= $i2 goto return 
(assert (>= var2187 var3889)) ; Cond: i4 >= $i2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var311_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var311_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var3314_debug/381960894=([java.lang.String], void), var2309_toBoolean/2053430371=([java.lang.String, boolean], boolean), var3314_setInternalDebugging/323359251=([boolean], void), var2052_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var311-to-var2052=([org.w3c.dom.Element], org.w3c.dom.Node), var2634_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var1209=org.apache.log4j.xml.DOMConfigurator, var2564=r2, var311=org.w3c.dom.Element, var1851=r0, var3380=r1, var3166=$z0, var1976=$r3, var267=$r18, var2540=$r4, var2390=$r5, var3116=$r6, var3360=$r7, var2602=$r8, var3314=org.apache.log4j.helpers.LogLog, var1681=$z1, var1770=$z17, var2309=org.apache.log4j.helpers.OptionConverter, var2483=$z18, var1837=$r19, var2577=$r20, var2534=$r21, var3046=$r22, var151=$r23, var272=$r24, var444=$r25, var14=$r26, var2998=$z20, var2832=$r27, var1693=$r28, var3714=$z21, var3579=$r29, var183=$r30, var3225=$r31, var168=$r32, var2923=$r33, var4=$r34, var2928=$r35, var2868=$r36, var3445=$z22, var2634=org.w3c.dom.NodeList, var2052=org.w3c.dom.Node, var1290=$r37, var3889=$i2, var2806=i3, var2187=i4}
; {org.apache.log4j.xml.DOMConfigurator=var1209, r2=var2564, org.w3c.dom.Element=var311, r0=var1851, r1=var3380, $z0=var3166, $r3=var1976, $r18=var267, $r4=var2540, $r5=var2390, $r6=var3116, $r7=var3360, $r8=var2602, org.apache.log4j.helpers.LogLog=var3314, $z1=var1681, $z17=var1770, org.apache.log4j.helpers.OptionConverter=var2309, $z18=var2483, $r19=var1837, $r20=var2577, $r21=var2534, $r22=var3046, $r23=var151, $r24=var272, $r25=var444, $r26=var14, $z20=var2998, $r27=var2832, $r28=var1693, $z21=var3714, $r29=var3579, $r30=var183, $r31=var3225, $r32=var168, $r33=var2923, $r34=var4, $r35=var2928, $r36=var2868, $z22=var3445, org.w3c.dom.NodeList=var2634, org.w3c.dom.Node=var2052, $r37=var1290, $i2=var3889, i3=var2806, i4=var2187}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 6,"<java.lang.StringBuffer: void <init>()>": 3,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 9,"<java.lang.StringBuffer: java.lang.String toString()>": 3}
;stmts r2 := @this: org.apache.log4j.xml.DOMConfigurator;	r0 := @parameter0: org.w3c.dom.Element;	r1 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r1.<java.lang.String: boolean equals(java.lang.Object)>("log4j:configuration");	if $z0 != 0 goto $r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r3 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("debug");	$r18 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r3);	$r4 = new java.lang.StringBuffer;	specialinvoke $r4.<java.lang.StringBuffer: void <init>()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("debug attribute= \"");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r18);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r8);	$z1 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z1 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	$z17 = virtualinvoke $r18.<java.lang.String: boolean equals(java.lang.Object)>("null");	if $z17 != 0 goto staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>("Ignoring debug attribute.");	$z18 = staticinvoke <org.apache.log4j.helpers.OptionConverter: boolean toBoolean(java.lang.String,boolean)>($r18, 1);	staticinvoke <org.apache.log4j.helpers.LogLog: void setInternalDebugging(boolean)>($z18);	goto [?= $r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset")];	$r19 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("reset");	$r20 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r19);	$r21 = new java.lang.StringBuffer;	specialinvoke $r21.<java.lang.StringBuffer: void <init>()>();	$r22 = virtualinvoke $r21.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("reset attribute= \"");	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r20);	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25);	$r26 = "";	$z20 = virtualinvoke $r26.<java.lang.String: boolean equals(java.lang.Object)>($r20);	if $z20 != 0 goto $r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r27 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("configDebug");	$r28 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r27);	$z21 = virtualinvoke $r28.<java.lang.String: boolean equals(java.lang.Object)>("");	if $z21 != 0 goto $r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r29 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("threshold");	$r30 = virtualinvoke r2.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r29);	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Threshold =\"");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r30);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("\".");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r35);	$r36 = "";	$z22 = virtualinvoke $r36.<java.lang.String: boolean equals(java.lang.Object)>($r30);	if $z22 != 0 goto $r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$r37 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i2 = interfaceinvoke $r37.<org.w3c.dom.NodeList: int getLength()>();	i3 = 0;	if i3 >= $i2 goto i4 = 0;	i4 = 0;	if i4 >= $i2 goto return;	return
;block_num 12