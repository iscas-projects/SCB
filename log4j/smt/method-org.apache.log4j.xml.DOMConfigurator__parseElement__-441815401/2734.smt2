(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var478 0)
(declare-sort var3046 0)
(declare-sort var2114 0)
(declare-sort var2505 0)
(declare-sort var1062 0)
(declare-sort var44 0)
(declare-sort var341 0)
(declare-sort var2865 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var478_getAttribute/210607306 (var478 String) String)
(declare-fun var2114_subst/287586629 (String var3046) String)
(declare-fun var1062_instantiateByClassName/289489540 (String ClassObject var2505) var2505)
(declare-fun var44-init () var44)
(declare-fun <init>/638421130 (var44 var2505) void)
(declare-fun var2865_getChildNodes/-162022572 (var2865) var341)
(declare-fun cast-from-var478-to-var2865 (var478) var2865)
(declare-fun var341_getLength/224812497 (var341) Int)
(declare-fun var341_item/-99689391 (var341 Int) var2865)
(declare-fun var2865_getNodeType/-368491152 (var2865) Int)
(declare-fun cast-from-var2865-to-var478 (var2865) var478)
(declare-fun var478_getTagName/1916305756 (var478) String)
(declare-fun var2114_parseUnrecognizedElement/-1748218124 (var2505 var478 var3046) void)
(declare-const null-var478 var478)
(declare-const null-var3046 var3046)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2505 var2505)
(declare-const var3571 var478) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3571 null-var478)))
(declare-const var3705 var3046) ; Statement: r1 := @parameter1: java.util.Properties 
(assert (not (= var3705 null-var3046)))
(declare-const var384 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var384 null-ClassObject)))
(define-const var1234 String (var478_getAttribute/210607306 var3571 "class")) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(define-const var194 String (var2114_subst/287586629 var1234 var3705)) ; Statement: r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1) 
(define-const var3931 var2505 (var1062_instantiateByClassName/289489540 var194 var384 null-var2505)) ; Statement: r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null) 
 ; Statement: if r5 == null goto return null 
(assert (not (= var3931 null-var2505))) ; Negate: Cond: r5 == null  
(define-const var3145 var44 var44-init) ; Statement: $r6 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var3145 var3931)) ; Statement: specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5) 

(declare-const var3145!1 var44)
(declare-const var3931!1 var2505)
(define-const var3212 var341 (var2865_getChildNodes/-162022572 (cast-from-var478-to-var2865 var3571))) ; Statement: r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2494 Int (var341_getLength/224812497 var3212)) ; Statement: i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var1099 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var1099 var2494))) ; Negate: Cond: i2 >= i0  
(define-const var520 var2865 (var341_item/-99689391 var3212 var1099)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var906 Int (var2865_getNodeType/-368491152 var520)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var906 1)))) ; Negate: Cond: $s1 != 1  
(define-const var1334 var478 (cast-from-var2865-to-var478 var520)) ; Statement: r9 = (org.w3c.dom.Element) r8 
(define-const var1104 String (var478_getTagName/1916305756 var1334)) ; Statement: r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var1360 Bool (= var1104 "param")) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1) 
(assert (= (ite var1360 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var2114_parseUnrecognizedElement/-1748218124 var3931!1 var1334 var3705)) ; Statement: staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1) 

(declare-const var3931!2 var2505)
(declare-const var1334!1 var478)
(declare-const var3705!1 var3046)
(assert true) ; Non Conditional
(define-const var1099!1 Int (+ var1099 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var1099!1 var2494))) ; Negate: Cond: i2 >= i0  
(define-const var520!1 var2865 (var341_item/-99689391 var3212 var1099!1)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var906!1 Int (var2865_getNodeType/-368491152 var520!1)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (= var906!1 1))) ; Cond: $s1 != 1 
(define-const var1099!2 Int (+ var1099!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (>= var1099!2 var2494)) ; Cond: i2 >= i0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var478_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), var2114_subst/287586629=([java.lang.String, java.util.Properties], java.lang.String), var1062_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), var44-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var2865_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var478-to-var2865=([org.w3c.dom.Element], org.w3c.dom.Node), var341_getLength/224812497=([org.w3c.dom.NodeList], int), var341_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var2865_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var2865-to-var478=([org.w3c.dom.Node], org.w3c.dom.Element), var478_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var2114_parseUnrecognizedElement/-1748218124=([java.lang.Object, org.w3c.dom.Element, java.util.Properties], void)}
; {var478=org.w3c.dom.Element, var3571=r0, var3046=java.util.Properties, var3705=r1, var384=r4, var1234=$r2, var2114=org.apache.log4j.xml.DOMConfigurator, var194=r3, var2505=java.lang.Object, var1062=org.apache.log4j.helpers.OptionConverter, var3931=r5, var44=org.apache.log4j.config.PropertySetter, var3145=$r6, var341=org.w3c.dom.NodeList, var2865=org.w3c.dom.Node, var3212=r7, var2494=i0, var1099=i2, var520=r8, var906=$s1, var1334=r9, var1104=r10, var1360=$z0}
; {org.w3c.dom.Element=var478, r0=var3571, java.util.Properties=var3046, r1=var3705, r4=var384, $r2=var1234, org.apache.log4j.xml.DOMConfigurator=var2114, r3=var194, java.lang.Object=var2505, org.apache.log4j.helpers.OptionConverter=var1062, r5=var3931, org.apache.log4j.config.PropertySetter=var44, $r6=var3145, org.w3c.dom.NodeList=var341, org.w3c.dom.Node=var2865, r7=var3212, i0=var2494, i2=var1099, r8=var520, $s1=var906, r9=var1334, r10=var1104, $z0=var1360}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: java.util.Properties;	r4 := @parameter2: java.lang.Class;	$r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1);	r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null);	if r5 == null goto return null;	$r6 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5);	r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r9 = (org.w3c.dom.Element) r8;	r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param");	if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1);	staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1);	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	return r5
;block_num 12