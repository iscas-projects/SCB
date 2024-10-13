(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1319 0)
(declare-sort var727 0)
(declare-sort var714 0)
(declare-sort var1843 0)
(declare-sort var2975 0)
(declare-sort var2930 0)
(declare-sort var1873 0)
(declare-sort var1499 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1319_getAttribute/210607306 (var1319 String) String)
(declare-fun var714_subst/287586629 (String var727) String)
(declare-fun var2975_instantiateByClassName/289489540 (String ClassObject var1843) var1843)
(declare-fun var2930-init () var2930)
(declare-fun <init>/638421130 (var2930 var1843) void)
(declare-fun var1499_getChildNodes/-162022572 (var1499) var1873)
(declare-fun cast-from-var1319-to-var1499 (var1319) var1499)
(declare-fun var1873_getLength/224812497 (var1873) Int)
(declare-fun var1873_item/-99689391 (var1873 Int) var1499)
(declare-fun var1499_getNodeType/-368491152 (var1499) Int)
(declare-fun cast-from-var1499-to-var1319 (var1499) var1319)
(declare-fun var1319_getTagName/1916305756 (var1319) String)
(declare-fun var714_parseUnrecognizedElement/-1748218124 (var1843 var1319 var727) void)
(declare-const null-var1319 var1319)
(declare-const null-var727 var727)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1843 var1843)
(declare-const var232 var1319) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var232 null-var1319)))
(declare-const var2959 var727) ; Statement: r1 := @parameter1: java.util.Properties 
(assert (not (= var2959 null-var727)))
(declare-const var1211 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var1211 null-ClassObject)))
(define-const var1360 String (var1319_getAttribute/210607306 var232 "class")) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(define-const var2076 String (var714_subst/287586629 var1360 var2959)) ; Statement: r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1) 
(define-const var2693 var1843 (var2975_instantiateByClassName/289489540 var2076 var1211 null-var1843)) ; Statement: r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null) 
 ; Statement: if r5 == null goto return null 
(assert (not (= var2693 null-var1843))) ; Negate: Cond: r5 == null  
(define-const var196 var2930 var2930-init) ; Statement: $r6 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var196 var2693)) ; Statement: specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5) 

(declare-const var196!1 var2930)
(declare-const var2693!1 var1843)
(define-const var2482 var1873 (var1499_getChildNodes/-162022572 (cast-from-var1319-to-var1499 var232))) ; Statement: r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2353 Int (var1873_getLength/224812497 var2482)) ; Statement: i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var101 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var101 var2353))) ; Negate: Cond: i2 >= i0  
(define-const var3333 var1499 (var1873_item/-99689391 var2482 var101)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2819 Int (var1499_getNodeType/-368491152 var3333)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (= var2819 1))) ; Cond: $s1 != 1 
(define-const var101!1 Int (+ var101 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var101!1 var2353))) ; Negate: Cond: i2 >= i0  
(define-const var3333!1 var1499 (var1873_item/-99689391 var2482 var101!1)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2819!1 Int (var1499_getNodeType/-368491152 var3333!1)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var2819!1 1)))) ; Negate: Cond: $s1 != 1  
(define-const var3543 var1319 (cast-from-var1499-to-var1319 var3333!1)) ; Statement: r9 = (org.w3c.dom.Element) r8 
(define-const var2876 String (var1319_getTagName/1916305756 var3543)) ; Statement: r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var2944 Bool (= var2876 "param")) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1) 
(assert (= (ite var2944 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var714_parseUnrecognizedElement/-1748218124 var2693!1 var3543 var2959)) ; Statement: staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1) 

(declare-const var2693!2 var1843)
(declare-const var3543!1 var1319)
(declare-const var2959!1 var727)
(assert true) ; Non Conditional
(define-const var101!2 Int (+ var101!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (>= var101!2 var2353)) ; Cond: i2 >= i0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1319_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), var714_subst/287586629=([java.lang.String, java.util.Properties], java.lang.String), var2975_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), var2930-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var1499_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var1319-to-var1499=([org.w3c.dom.Element], org.w3c.dom.Node), var1873_getLength/224812497=([org.w3c.dom.NodeList], int), var1873_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var1499_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var1499-to-var1319=([org.w3c.dom.Node], org.w3c.dom.Element), var1319_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var714_parseUnrecognizedElement/-1748218124=([java.lang.Object, org.w3c.dom.Element, java.util.Properties], void)}
; {var1319=org.w3c.dom.Element, var232=r0, var727=java.util.Properties, var2959=r1, var1211=r4, var1360=$r2, var714=org.apache.log4j.xml.DOMConfigurator, var2076=r3, var1843=java.lang.Object, var2975=org.apache.log4j.helpers.OptionConverter, var2693=r5, var2930=org.apache.log4j.config.PropertySetter, var196=$r6, var1873=org.w3c.dom.NodeList, var1499=org.w3c.dom.Node, var2482=r7, var2353=i0, var101=i2, var3333=r8, var2819=$s1, var3543=r9, var2876=r10, var2944=$z0}
; {org.w3c.dom.Element=var1319, r0=var232, java.util.Properties=var727, r1=var2959, r4=var1211, $r2=var1360, org.apache.log4j.xml.DOMConfigurator=var714, r3=var2076, java.lang.Object=var1843, org.apache.log4j.helpers.OptionConverter=var2975, r5=var2693, org.apache.log4j.config.PropertySetter=var2930, $r6=var196, org.w3c.dom.NodeList=var1873, org.w3c.dom.Node=var1499, r7=var2482, i0=var2353, i2=var101, r8=var3333, $s1=var2819, r9=var3543, r10=var2876, $z0=var2944}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: java.util.Properties;	r4 := @parameter2: java.lang.Class;	$r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1);	r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null);	if r5 == null goto return null;	$r6 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5);	r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r9 = (org.w3c.dom.Element) r8;	r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param");	if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1);	staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1);	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	return r5
;block_num 12