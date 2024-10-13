(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2987 0)
(declare-sort var1958 0)
(declare-sort var3263 0)
(declare-sort var407 0)
(declare-sort var1518 0)
(declare-sort var1637 0)
(declare-sort var80 0)
(declare-sort var3544 0)
(declare-sort var1514 0)
(declare-sort var1381 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var407-init () var407)
(declare-fun <init>/638421130 (var407 var1518) void)
(declare-fun cast-from-var3263-to-var1518 (var3263) var1518)
(declare-fun removeAllAppenders/313640692 (var1637) void)
(declare-fun cast-from-var3263-to-var1637 (var3263) var1637)
(declare-fun var3544_getChildNodes/-162022572 (var3544) var80)
(declare-fun cast-from-var1958-to-var3544 (var1958) var3544)
(declare-fun var80_getLength/224812497 (var80) Int)
(declare-fun var80_item/-99689391 (var80 Int) var3544)
(declare-fun var3544_getNodeType/-368491152 (var3544) Int)
(declare-fun cast-from-var3544-to-var1958 (var3544) var1958)
(declare-fun var1958_getTagName/1916305756 (var1958) String)
(declare-fun findAppenderByReference/1035437593 (var2987 var1958) var1514)
(declare-fun var1958_getAttribute/210607306 (var1958 String) String)
(declare-fun subst/-1514982940 (var2987 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1326171653 (var1637) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1381_debug/381960894 (String) void)
(declare-fun addAppender/1138055244 (var1637 var1514) void)
(declare-fun activate/1266231958 (var407) void)
(declare-const null-var2987 var2987)
(declare-const null-var1958 var1958)
(declare-const null-var3263 var3263)
(declare-const null-Bool Bool)
(declare-const null-var1514 var1514)
(declare-const var2669 var2987) ; Statement: r7 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var2669 null-var2987)))
(declare-const var1621 var1958) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1621 null-var1958)))
(declare-const var454 var3263) ; Statement: r1 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var454 null-var3263)))
(declare-const var2955 Bool) ; Statement: z4 := @parameter2: boolean 
(assert (not (= var2955 null-Bool)))
(define-const var1113 var407 var407-init) ; Statement: $r0 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var1113 (cast-from-var3263-to-var1518 var454))) ; Statement: specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1) 

(declare-const var1113!1 var407)
(declare-const var454!1 var3263)
(assert true)
;(assert (removeAllAppenders/313640692 (cast-from-var3263-to-var1637 var454!1))) ; Statement: virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>() 

(declare-const var454!2 var3263)
(define-const var760 var80 (var3544_getChildNodes/-162022572 (cast-from-var1958-to-var3544 var1621))) ; Statement: r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2903 Int (var80_getLength/224812497 var760)) ; Statement: i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var3584 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (not (>= var3584 var2903))) ; Negate: Cond: i2 >= i0  
(define-const var3832 var3544 (var80_item/-99689391 var760 var3584)) ; Statement: r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2690 Int (var3544_getNodeType/-368491152 var3832)) ; Statement: $s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var2690 1)))) ; Negate: Cond: $s1 != 1  
(define-const var3837 var1958 (cast-from-var3544-to-var1958 var3832)) ; Statement: r5 = (org.w3c.dom.Element) r4 
(define-const var145 String (var1958_getTagName/1916305756 var3837)) ; Statement: r6 = interfaceinvoke r5.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var3932 Bool (= var145 "appender-ref")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("appender-ref") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level") 
(assert (not (= (ite var3932 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2572 var1958 (cast-from-var3544-to-var1958 var3832)) ; Statement: r9 = (org.w3c.dom.Element) r4 
(assert true)
(define-const var2642 var1514 (findAppenderByReference/1035437593 var2669 var2572)) ; Statement: r10 = virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.Appender findAppenderByReference(org.w3c.dom.Element)>(r9) 
(define-const var3775 String (var1958_getAttribute/210607306 var2572 "ref")) ; Statement: $r11 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("ref") 
(assert true)
(define-const var85 String (subst/-1514982940 var2669 var3775)) ; Statement: r12 = virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r11) 
 ; Statement: if r10 == null goto $r13 = new java.lang.StringBuffer 
(assert (not (= var2642 null-var1514))) ; Negate: Cond: r10 == null  
(define-const var658 String String-init) ; Statement: $r18 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var658)) ; Statement: specialinvoke $r18.<java.lang.StringBuffer: void <init>()>() 

(declare-const var658!1 String)
(assert true)
(define-const var1722 String (append/1560614132 var658!1 "Adding appender named [")) ; Statement: $r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding appender named [") 
(declare-const var658!2 String)
(assert (str.prefixof var658!1 var658!2))
(assert true)
(define-const var108 String (append/1560614132 var1722 var85)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r12) 
(declare-const var1722!1 String)
(assert (str.prefixof var1722 var1722!1))
(assert true)
(define-const var1674 String (append/1560614132 var108 "] to category [")) ; Statement: $r22 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to category [") 
(declare-const var108!1 String)
(assert (str.prefixof var108 var108!1))
(assert true)
(define-const var1468 String (getName/1326171653 (cast-from-var3263-to-var1637 var454!2))) ; Statement: $r21 = virtualinvoke r1.<org.apache.log4j.Logger: java.lang.String getName()>() 
(assert true)
(define-const var387 String (append/1560614132 var1674 var1468)) ; Statement: $r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r21) 
(declare-const var1674!1 String)
(assert (str.prefixof var1674 var1674!1))
(assert true)
(define-const var88 String (append/1560614132 var387 "].")) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var387!1 String)
(assert (str.prefixof var387 var387!1))
(assert true)
(define-const var3245 String (toString/-222306083 var88)) ; Statement: $r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1381_debug/381960894 var3245)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25) 

(declare-const var3245!1 String)
 ; Statement: goto [?= virtualinvoke r1.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>(r10)] 
(assert true) ; Non Conditional
(assert true)
;(assert (addAppender/1138055244 (cast-from-var3263-to-var1637 var454!2) var2642)) ; Statement: virtualinvoke r1.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>(r10) 

(declare-const var454!3 var3263)
(declare-const var2642!1 var1514)
 ; Statement: goto [?= i2 = i2 + 1] 
(assert true) ; Non Conditional
(define-const var3584!1 Int (+ var3584 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (>= var3584!1 var2903)) ; Cond: i2 >= i0 
(assert true)
;(assert (activate/1266231958 var1113!1)) ; Statement: virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 

(declare-const var1113!2 var407)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var407-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), cast-from-var3263-to-var1518=([org.apache.log4j.Logger], java.lang.Object), removeAllAppenders/313640692=([org.apache.log4j.Category], void), cast-from-var3263-to-var1637=([org.apache.log4j.Logger], org.apache.log4j.Category), var3544_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var1958-to-var3544=([org.w3c.dom.Element], org.w3c.dom.Node), var80_getLength/224812497=([org.w3c.dom.NodeList], int), var80_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var3544_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var3544-to-var1958=([org.w3c.dom.Node], org.w3c.dom.Element), var1958_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), findAppenderByReference/1035437593=([org.apache.log4j.xml.DOMConfigurator, org.w3c.dom.Element], org.apache.log4j.Appender), var1958_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getName/1326171653=([org.apache.log4j.Category], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1381_debug/381960894=([java.lang.String], void), addAppender/1138055244=([org.apache.log4j.Category, org.apache.log4j.Appender], void), activate/1266231958=([org.apache.log4j.config.PropertySetter], void)}
; {var2987=org.apache.log4j.xml.DOMConfigurator, var2669=r7, var1958=org.w3c.dom.Element, var1621=r2, var3263=org.apache.log4j.Logger, var454=r1, var2955=z4, var407=org.apache.log4j.config.PropertySetter, var1113=$r0, var1518=java.lang.Object, var1637=org.apache.log4j.Category, var80=org.w3c.dom.NodeList, var3544=org.w3c.dom.Node, var760=r3, var2903=i0, var3584=i2, var3832=r4, var2690=$s1, var3837=r5, var145=r6, var3932=$z0, var2572=r9, var1514=org.apache.log4j.Appender, var2642=r10, var3775=$r11, var85=r12, var658=$r18, var1722=$r19, var108=$r20, var1674=$r22, var1468=$r21, var387=$r23, var88=$r24, var3245=$r25, var1381=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.xml.DOMConfigurator=var2987, r7=var2669, org.w3c.dom.Element=var1958, r2=var1621, org.apache.log4j.Logger=var3263, r1=var454, z4=var2955, org.apache.log4j.config.PropertySetter=var407, $r0=var1113, java.lang.Object=var1518, org.apache.log4j.Category=var1637, org.w3c.dom.NodeList=var80, org.w3c.dom.Node=var3544, r3=var760, i0=var2903, i2=var3584, r4=var3832, $s1=var2690, r5=var3837, r6=var145, $z0=var3932, r9=var2572, org.apache.log4j.Appender=var1514, r10=var2642, $r11=var3775, r12=var85, $r18=var658, $r19=var1722, $r20=var108, $r22=var1674, $r21=var1468, $r23=var387, $r24=var88, $r25=var3245, org.apache.log4j.helpers.LogLog=var1381}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: org.apache.log4j.Logger;	z4 := @parameter2: boolean;	$r0 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1);	virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>();	r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r5 = (org.w3c.dom.Element) r4;	r6 = interfaceinvoke r5.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("appender-ref");	if $z0 == 0 goto $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level");	r9 = (org.w3c.dom.Element) r4;	r10 = virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.Appender findAppenderByReference(org.w3c.dom.Element)>(r9);	$r11 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("ref");	r12 = virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r11);	if r10 == null goto $r13 = new java.lang.StringBuffer;	$r18 = new java.lang.StringBuffer;	specialinvoke $r18.<java.lang.StringBuffer: void <init>()>();	$r19 = virtualinvoke $r18.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding appender named [");	$r20 = virtualinvoke $r19.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r12);	$r22 = virtualinvoke $r20.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to category [");	$r21 = virtualinvoke r1.<org.apache.log4j.Logger: java.lang.String getName()>();	$r23 = virtualinvoke $r22.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r21);	$r24 = virtualinvoke $r23.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r25 = virtualinvoke $r24.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r25);	goto [?= virtualinvoke r1.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>(r10)];	virtualinvoke r1.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>(r10);	goto [?= i2 = i2 + 1];	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	return
;block_num 10