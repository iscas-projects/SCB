(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3078 0)
(declare-sort var586 0)
(declare-sort var1996 0)
(declare-sort var3173 0)
(declare-sort var3646 0)
(declare-sort var3971 0)
(declare-sort var2679 0)
(declare-sort var2110 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3173-init () var3173)
(declare-fun <init>/638421130 (var3173 var3646) void)
(declare-fun cast-from-var1996-to-var3646 (var1996) var3646)
(declare-fun removeAllAppenders/313640692 (var3971) void)
(declare-fun cast-from-var1996-to-var3971 (var1996) var3971)
(declare-fun var2110_getChildNodes/-162022572 (var2110) var2679)
(declare-fun cast-from-var586-to-var2110 (var586) var2110)
(declare-fun var2679_getLength/224812497 (var2679) Int)
(declare-fun var2679_item/-99689391 (var2679 Int) var2110)
(declare-fun var2110_getNodeType/-368491152 (var2110) Int)
(declare-fun cast-from-var2110-to-var586 (var2110) var586)
(declare-fun var586_getTagName/1916305756 (var586) String)
(declare-fun parseLevel/-670752645 (var3078 var586 var1996 Bool) void)
(declare-fun activate/1266231958 (var3173) void)
(declare-const null-var3078 var3078)
(declare-const null-var586 var586)
(declare-const null-var1996 var1996)
(declare-const null-Bool Bool)
(declare-const var234 var3078) ; Statement: r7 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var234 null-var3078)))
(declare-const var2191 var586) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2191 null-var586)))
(declare-const var1155 var1996) ; Statement: r1 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var1155 null-var1996)))
(declare-const var1697 Bool) ; Statement: z4 := @parameter2: boolean 
(assert (not (= var1697 null-Bool)))
(define-const var1266 var3173 var3173-init) ; Statement: $r0 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var1266 (cast-from-var1996-to-var3646 var1155))) ; Statement: specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1) 

(declare-const var1266!1 var3173)
(declare-const var1155!1 var1996)
(assert true)
;(assert (removeAllAppenders/313640692 (cast-from-var1996-to-var3971 var1155!1))) ; Statement: virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>() 

(declare-const var1155!2 var1996)
(define-const var2166 var2679 (var2110_getChildNodes/-162022572 (cast-from-var586-to-var2110 var2191))) ; Statement: r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2515 Int (var2679_getLength/224812497 var2166)) ; Statement: i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var51 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (not (>= var51 var2515))) ; Negate: Cond: i2 >= i0  
(define-const var2661 var2110 (var2679_item/-99689391 var2166 var51)) ; Statement: r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var313 Int (var2110_getNodeType/-368491152 var2661)) ; Statement: $s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var313 1)))) ; Negate: Cond: $s1 != 1  
(define-const var913 var586 (cast-from-var2110-to-var586 var2661)) ; Statement: r5 = (org.w3c.dom.Element) r4 
(define-const var3561 String (var586_getTagName/1916305756 var913)) ; Statement: r6 = interfaceinvoke r5.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var1221 Bool (= var3561 "appender-ref")) ; Statement: $z0 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("appender-ref") 
 ; Statement: if $z0 == 0 goto $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level") 
(assert (= (ite var1221 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var601 Bool (= var3561 "level")) ; Statement: $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level") 
 ; Statement: if $z1 == 0 goto $z2 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("priority") 
(assert (not (= (ite var601 1 0) 0))) ; Negate: Cond: $z1 == 0  
(assert true)
;(assert (parseLevel/-670752645 var234 var913 var1155!2 var1697)) ; Statement: virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: void parseLevel(org.w3c.dom.Element,org.apache.log4j.Logger,boolean)>(r5, r1, z4) 

(declare-const var234!1 var3078)
(declare-const var913!1 var586)
(declare-const var1155!3 var1996)
(declare-const var1697!1 Bool)
 ; Statement: goto [?= i2 = i2 + 1] 
(assert true) ; Non Conditional
(define-const var51!1 Int (+ var51 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (>= var51!1 var2515)) ; Cond: i2 >= i0 
(assert true)
;(assert (activate/1266231958 var1266!1)) ; Statement: virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 

(declare-const var1266!2 var3173)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3173-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), cast-from-var1996-to-var3646=([org.apache.log4j.Logger], java.lang.Object), removeAllAppenders/313640692=([org.apache.log4j.Category], void), cast-from-var1996-to-var3971=([org.apache.log4j.Logger], org.apache.log4j.Category), var2110_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var586-to-var2110=([org.w3c.dom.Element], org.w3c.dom.Node), var2679_getLength/224812497=([org.w3c.dom.NodeList], int), var2679_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var2110_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var2110-to-var586=([org.w3c.dom.Node], org.w3c.dom.Element), var586_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), parseLevel/-670752645=([org.apache.log4j.xml.DOMConfigurator, org.w3c.dom.Element, org.apache.log4j.Logger, boolean], void), activate/1266231958=([org.apache.log4j.config.PropertySetter], void)}
; {var3078=org.apache.log4j.xml.DOMConfigurator, var234=r7, var586=org.w3c.dom.Element, var2191=r2, var1996=org.apache.log4j.Logger, var1155=r1, var1697=z4, var3173=org.apache.log4j.config.PropertySetter, var1266=$r0, var3646=java.lang.Object, var3971=org.apache.log4j.Category, var2679=org.w3c.dom.NodeList, var2110=org.w3c.dom.Node, var2166=r3, var2515=i0, var51=i2, var2661=r4, var313=$s1, var913=r5, var3561=r6, var1221=$z0, var601=$z1}
; {org.apache.log4j.xml.DOMConfigurator=var3078, r7=var234, org.w3c.dom.Element=var586, r2=var2191, org.apache.log4j.Logger=var1996, r1=var1155, z4=var1697, org.apache.log4j.config.PropertySetter=var3173, $r0=var1266, java.lang.Object=var3646, org.apache.log4j.Category=var3971, org.w3c.dom.NodeList=var2679, org.w3c.dom.Node=var2110, r3=var2166, i0=var2515, i2=var51, r4=var2661, $s1=var313, r5=var913, r6=var3561, $z0=var1221, $z1=var601}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 2}
;stmts r7 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: org.apache.log4j.Logger;	z4 := @parameter2: boolean;	$r0 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1);	virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>();	r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r5 = (org.w3c.dom.Element) r4;	r6 = interfaceinvoke r5.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("appender-ref");	if $z0 == 0 goto $z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level");	$z1 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("level");	if $z1 == 0 goto $z2 = virtualinvoke r6.<java.lang.String: boolean equals(java.lang.Object)>("priority");	virtualinvoke r7.<org.apache.log4j.xml.DOMConfigurator: void parseLevel(org.w3c.dom.Element,org.apache.log4j.Logger,boolean)>(r5, r1, z4);	goto [?= i2 = i2 + 1];	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	return
;block_num 9