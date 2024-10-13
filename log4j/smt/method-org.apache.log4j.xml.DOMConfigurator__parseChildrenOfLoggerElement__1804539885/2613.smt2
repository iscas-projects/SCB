(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3636 0)
(declare-sort var2813 0)
(declare-sort var1351 0)
(declare-sort var2766 0)
(declare-sort var3772 0)
(declare-sort var630 0)
(declare-sort var1974 0)
(declare-sort var1371 0)
(declare-sort var3147 0)
(declare-sort var568 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2766-init () var2766)
(declare-fun <init>/638421130 (var2766 var3772) void)
(declare-fun cast-from-var1351-to-var3772 (var1351) var3772)
(declare-fun removeAllAppenders/313640692 (var630) void)
(declare-fun cast-from-var1351-to-var630 (var1351) var630)
(declare-fun var1371_getChildNodes/-162022572 (var1371) var1974)
(declare-fun cast-from-var2813-to-var1371 (var2813) var1371)
(declare-fun var1974_getLength/224812497 (var1974) Int)
(declare-fun var1974_item/-99689391 (var1974 Int) var1371)
(declare-fun var1371_getNodeType/-368491152 (var1371) Int)
(declare-fun cast-from-var1371-to-var2813 (var1371) var2813)
(declare-fun var2813_getTagName/1916305756 (var2813) String)
(declare-fun findAppenderByReference/1035437593 (var3636 var2813) var3147)
(declare-fun var2813_getAttribute/210607306 (var2813 String) String)
(declare-fun subst/-1514982940 (var3636 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var568_debug/381960894 (String) void)
(declare-fun addAppender/1138055244 (var630 var3147) void)
(declare-fun activate/1266231958 (var2766) void)
(declare-const null-var3636 var3636)
(declare-const null-var2813 var2813)
(declare-const null-var1351 var1351)
(declare-const null-Bool Bool)
(declare-const null-var3147 var3147)
(declare-const var1590 var3636) ; Statement: r7 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1590 null-var3636)))
(declare-const var1359 var2813) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1359 null-var2813)))
(declare-const var3423 var1351) ; Statement: r1 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var3423 null-var1351)))
(declare-const var3244 Bool) ; Statement: z4 := @parameter2: boolean 
(assert (not (= var3244 null-Bool)))
(define-const var1804 var2766 var2766-init) ; Statement: $r0 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var1804 (cast-from-var1351-to-var3772 var3423))) ; Statement: specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1) 

(declare-const var1804!1 var2766)
(declare-const var3423!1 var1351)
(assert true)
;(assert (removeAllAppenders/313640692 (cast-from-var1351-to-var630 var3423!1))) ; Statement: virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>() 

(declare-const var3423!2 var1351)
(define-const var3430 var1974 (var1371_getChildNodes/-162022572 (cast-from-var2813-to-var1371 var1359))) ; Statement: r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var3478 Int (var1974_getLength/224812497 var3430)) ; Statement: i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var2247 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (not (>= var2247 var3478))) ; Negate: Cond: i2 >= i0  
(define-const var419 var1371 (var1974_item/-99689391 var3430 var2247)) ; Statement: r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var306 Int (var1371_getNodeType/-368491152 var419)) ; Statement: $s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var306 1)))) ; Negate: Cond: $s1 != 1  
(define-const var677 var2813 (cast-from-var1371-to-var2813 var419)) ; Statement: r5 = (org.w3c.dom.Element) r4 
(define-const var740 String (var2813_getTagName/1916305756 var677)) ; Statement: r6 = interfaceinvoke r5.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var1750 Bool (= var740 "appender-ref")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("appender-ref") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level") 
(assert (not (= (ite var1750 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2254 var2813 (cast-from-var1371-to-var2813 var419)) ; Statement: r9 = (org.w3c.dom.Element) r4 
(assert true)
(define-const var2155 var3147 (findAppenderByReference/1035437593 var1590 var2254)) ; Statement: r10 = virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.Appender findAppenderByReference(org.w3c.dom.Element)>(r9) 
(define-const var1600 String (var2813_getAttribute/210607306 var2254 "ref")) ; Statement: $r11 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("ref") 
(assert true)
(define-const var1534 String (subst/-1514982940 var1590 var1600)) ; Statement: r12 = virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r11) 
 ; Statement: if r10 == null goto $r13 = new java.lang.StringBuffer 
(assert (= var2155 null-var3147)) ; Cond: r10 == null 
(define-const var3465 String String-init) ; Statement: $r13 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3465)) ; Statement: specialinvoke $r13.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3465!1 String)
(assert true)
(define-const var3443 String (append/1560614132 var3465!1 "Appender named [")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender named [") 
(declare-const var3465!2 String)
(assert (str.prefixof var3465!1 var3465!2))
(assert true)
(define-const var1837 String (append/1560614132 var3443 var1534)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r12) 
(declare-const var3443!1 String)
(assert (str.prefixof var3443 var3443!1))
(assert true)
(define-const var296 String (append/1560614132 var1837 "] not found.")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] not found.") 
(declare-const var1837!1 String)
(assert (str.prefixof var1837 var1837!1))
(assert true)
(define-const var1466 String (toString/-222306083 var296)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var568_debug/381960894 var1466)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r17) 

(declare-const var1466!1 String)
(assert true) ; Non Conditional
(assert true)
;(assert (addAppender/1138055244 (cast-from-var1351-to-var630 var3423!2) var2155)) ; Statement: virtualinvoke r1.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>(r10) 

(declare-const var3423!3 var1351)
(declare-const var2155!1 var3147)
 ; Statement: goto [?= i2 = i2 + 1] 
(assert true) ; Non Conditional
(define-const var2247!1 Int (+ var2247 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (>= var2247!1 var3478)) ; Cond: i2 >= i0 
(assert true)
;(assert (activate/1266231958 var1804!1)) ; Statement: virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 

(declare-const var1804!2 var2766)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2766-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), cast-from-var1351-to-var3772=([org.apache.log4j.Logger], java.lang.Object), removeAllAppenders/313640692=([org.apache.log4j.Category], void), cast-from-var1351-to-var630=([org.apache.log4j.Logger], org.apache.log4j.Category), var1371_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var2813-to-var1371=([org.w3c.dom.Element], org.w3c.dom.Node), var1974_getLength/224812497=([org.w3c.dom.NodeList], int), var1974_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var1371_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var1371-to-var2813=([org.w3c.dom.Node], org.w3c.dom.Element), var2813_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), findAppenderByReference/1035437593=([org.apache.log4j.xml.DOMConfigurator, org.w3c.dom.Element], org.apache.log4j.Appender), var2813_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var568_debug/381960894=([java.lang.String], void), addAppender/1138055244=([org.apache.log4j.Category, org.apache.log4j.Appender], void), activate/1266231958=([org.apache.log4j.config.PropertySetter], void)}
; {var3636=org.apache.log4j.xml.DOMConfigurator, var1590=r7, var2813=org.w3c.dom.Element, var1359=r2, var1351=org.apache.log4j.Logger, var3423=r1, var3244=z4, var2766=org.apache.log4j.config.PropertySetter, var1804=$r0, var3772=java.lang.Object, var630=org.apache.log4j.Category, var1974=org.w3c.dom.NodeList, var1371=org.w3c.dom.Node, var3430=r3, var3478=i0, var2247=i2, var419=r4, var306=$s1, var677=r5, var740=r6, var1750=$z0, var2254=r9, var3147=org.apache.log4j.Appender, var2155=r10, var1600=$r11, var1534=r12, var3465=$r13, var3443=$r14, var1837=$r15, var296=$r16, var1466=$r17, var568=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.xml.DOMConfigurator=var3636, r7=var1590, org.w3c.dom.Element=var2813, r2=var1359, org.apache.log4j.Logger=var1351, r1=var3423, z4=var3244, org.apache.log4j.config.PropertySetter=var2766, $r0=var1804, java.lang.Object=var3772, org.apache.log4j.Category=var630, org.w3c.dom.NodeList=var1974, org.w3c.dom.Node=var1371, r3=var3430, i0=var3478, i2=var2247, r4=var419, $s1=var306, r5=var677, r6=var740, $z0=var1750, r9=var2254, org.apache.log4j.Appender=var3147, r10=var2155, $r11=var1600, r12=var1534, $r13=var3465, $r14=var3443, $r15=var1837, $r16=var296, $r17=var1466, org.apache.log4j.helpers.LogLog=var568}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r7 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: org.apache.log4j.Logger;	z4 := @parameter2: boolean;	$r0 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1);	virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>();	r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r5 = (org.w3c.dom.Element) r4;	r6 = interfaceinvoke r5.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("appender-ref");	if $z0 == 0 goto $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level");	r9 = (org.w3c.dom.Element) r4;	r10 = virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.Appender findAppenderByReference(org.w3c.dom.Element)>(r9);	$r11 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("ref");	r12 = virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r11);	if r10 == null goto $r13 = new java.lang.StringBuffer;	$r13 = new java.lang.StringBuffer;	specialinvoke $r13.<java.lang.StringBuffer: void <init>()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Appender named [");	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r12);	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] not found.");	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r17);	virtualinvoke r1.<org.apache.log4j.Logger: void addAppender(org.apache.log4j.Appender)>(r10);	goto [?= i2 = i2 + 1];	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	return
;block_num 10