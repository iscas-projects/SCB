(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1207 0)
(declare-sort var1683 0)
(declare-sort var326 0)
(declare-sort var2633 0)
(declare-sort var2414 0)
(declare-sort var2975 0)
(declare-sort var2772 0)
(declare-sort var525 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2633-init () var2633)
(declare-fun <init>/638421130 (var2633 var2414) void)
(declare-fun cast-from-var326-to-var2414 (var326) var2414)
(declare-fun removeAllAppenders/313640692 (var2975) void)
(declare-fun cast-from-var326-to-var2975 (var326) var2975)
(declare-fun var525_getChildNodes/-162022572 (var525) var2772)
(declare-fun cast-from-var1683-to-var525 (var1683) var525)
(declare-fun var2772_getLength/224812497 (var2772) Int)
(declare-fun var2772_item/-99689391 (var2772 Int) var525)
(declare-fun var525_getNodeType/-368491152 (var525) Int)
(declare-fun cast-from-var525-to-var1683 (var525) var1683)
(declare-fun var1683_getTagName/1916305756 (var1683) String)
(declare-fun parseLevel/-670752645 (var1207 var1683 var326 Bool) void)
(declare-fun activate/1266231958 (var2633) void)
(declare-const null-var1207 var1207)
(declare-const null-var1683 var1683)
(declare-const null-var326 var326)
(declare-const null-Bool Bool)
(declare-const var3445 var1207) ; Statement: r7 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var3445 null-var1207)))
(declare-const var529 var1683) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var529 null-var1683)))
(declare-const var1322 var326) ; Statement: r1 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var1322 null-var326)))
(declare-const var2326 Bool) ; Statement: z4 := @parameter2: boolean 
(assert (not (= var2326 null-Bool)))
(define-const var159 var2633 var2633-init) ; Statement: $r0 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var159 (cast-from-var326-to-var2414 var1322))) ; Statement: specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1) 

(declare-const var159!1 var2633)
(declare-const var1322!1 var326)
(assert true)
;(assert (removeAllAppenders/313640692 (cast-from-var326-to-var2975 var1322!1))) ; Statement: virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>() 

(declare-const var1322!2 var326)
(define-const var2513 var2772 (var525_getChildNodes/-162022572 (cast-from-var1683-to-var525 var529))) ; Statement: r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2217 Int (var2772_getLength/224812497 var2513)) ; Statement: i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var324 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (not (>= var324 var2217))) ; Negate: Cond: i2 >= i0  
(define-const var1920 var525 (var2772_item/-99689391 var2513 var324)) ; Statement: r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2549 Int (var525_getNodeType/-368491152 var1920)) ; Statement: $s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var2549 1)))) ; Negate: Cond: $s1 != 1  
(define-const var1752 var1683 (cast-from-var525-to-var1683 var1920)) ; Statement: r5 = (org.w3c.dom.Element) r4 
(define-const var1560 String (var1683_getTagName/1916305756 var1752)) ; Statement: r6 = interfaceinvoke r5.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var2683 Bool (= var1560 "appender-ref")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("appender-ref") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level") 
(assert (= (ite var2683 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1674 Bool (= var1560 "level")) ; Statement: $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("priority") 
(assert (= (ite var1674 1 0) 0)) ; Cond: $z1 == 0 
(assert true)
(define-const var808 Bool (= var1560 "priority")) ; Statement: $z2 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("priority") 
 ; Statement: if $z2 == 0 goto $z3 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("param") 
(assert (not (= (ite var808 1 0) 0))) ; Negate: Cond: $z2 == 0  
(assert true)
;(assert (parseLevel/-670752645 var3445 var1752 var1322!2 var2326)) ; Statement: virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: void parseLevel(org.w3c.dom.Element,org.apache.log4j.Logger,boolean)>(r5, r1, z4) 

(declare-const var3445!1 var1207)
(declare-const var1752!1 var1683)
(declare-const var1322!3 var326)
(declare-const var2326!1 Bool)
 ; Statement: goto [?= i2 = i2 + 1] 
(assert true) ; Non Conditional
(define-const var324!1 Int (+ var324 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (>= var324!1 var2217)) ; Cond: i2 >= i0 
(assert true)
;(assert (activate/1266231958 var159!1)) ; Statement: virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 

(declare-const var159!2 var2633)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2633-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), cast-from-var326-to-var2414=([org.apache.log4j.Logger], java.lang.Object), removeAllAppenders/313640692=([org.apache.log4j.Category], void), cast-from-var326-to-var2975=([org.apache.log4j.Logger], org.apache.log4j.Category), var525_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var1683-to-var525=([org.w3c.dom.Element], org.w3c.dom.Node), var2772_getLength/224812497=([org.w3c.dom.NodeList], int), var2772_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var525_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var525-to-var1683=([org.w3c.dom.Node], org.w3c.dom.Element), var1683_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), parseLevel/-670752645=([org.apache.log4j.xml.DOMConfigurator, org.w3c.dom.Element, org.apache.log4j.Logger, boolean], void), activate/1266231958=([org.apache.log4j.config.PropertySetter], void)}
; {var1207=org.apache.log4j.xml.DOMConfigurator, var3445=r7, var1683=org.w3c.dom.Element, var529=r2, var326=org.apache.log4j.Logger, var1322=r1, var2326=z4, var2633=org.apache.log4j.config.PropertySetter, var159=$r0, var2414=java.lang.Object, var2975=org.apache.log4j.Category, var2772=org.w3c.dom.NodeList, var525=org.w3c.dom.Node, var2513=r3, var2217=i0, var324=i2, var1920=r4, var2549=$s1, var1752=r5, var1560=r6, var2683=$z0, var1674=$z1, var808=$z2}
; {org.apache.log4j.xml.DOMConfigurator=var1207, r7=var3445, org.w3c.dom.Element=var1683, r2=var529, org.apache.log4j.Logger=var326, r1=var1322, z4=var2326, org.apache.log4j.config.PropertySetter=var2633, $r0=var159, java.lang.Object=var2414, org.apache.log4j.Category=var2975, org.w3c.dom.NodeList=var2772, org.w3c.dom.Node=var525, r3=var2513, i0=var2217, i2=var324, r4=var1920, $s1=var2549, r5=var1752, r6=var1560, $z0=var2683, $z1=var1674, $z2=var808}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 3}
;stmts r7 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: org.apache.log4j.Logger;	z4 := @parameter2: boolean;	$r0 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1);	virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>();	r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r5 = (org.w3c.dom.Element) r4;	r6 = interfaceinvoke r5.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("appender-ref");	if $z0 == 0 goto $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level");	$z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level");	if $z1 == 0 goto $z2 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("priority");	$z2 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("priority");	if $z2 == 0 goto $z3 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("param");	virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: void parseLevel(org.w3c.dom.Element,org.apache.log4j.Logger,boolean)>(r5, r1, z4);	goto [?= i2 = i2 + 1];	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	return
;block_num 10