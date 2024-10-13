(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1578 0)
(declare-sort var2032 0)
(declare-sort var1219 0)
(declare-sort var197 0)
(declare-sort var709 0)
(declare-sort var3523 0)
(declare-sort var3343 0)
(declare-sort var1833 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1578_getAttribute/210607306 (var1578 String) String)
(declare-fun var1219_subst/287586629 (String var2032) String)
(declare-fun var709_instantiateByClassName/289489540 (String ClassObject var197) var197)
(declare-fun var3523-init () var3523)
(declare-fun <init>/638421130 (var3523 var197) void)
(declare-fun var1833_getChildNodes/-162022572 (var1833) var3343)
(declare-fun cast-from-var1578-to-var1833 (var1578) var1833)
(declare-fun var3343_getLength/224812497 (var3343) Int)
(declare-fun var3343_item/-99689391 (var3343 Int) var1833)
(declare-fun var1833_getNodeType/-368491152 (var1833) Int)
(declare-fun cast-from-var1833-to-var1578 (var1833) var1578)
(declare-fun var1578_getTagName/1916305756 (var1578) String)
(declare-fun var1219_setParameter/1603816708 (var1578 var3523 var2032) void)
(declare-const null-var1578 var1578)
(declare-const null-var2032 var2032)
(declare-const null-ClassObject ClassObject)
(declare-const null-var197 var197)
(declare-const var2962 var1578) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2962 null-var1578)))
(declare-const var146 var2032) ; Statement: r1 := @parameter1: java.util.Properties 
(assert (not (= var146 null-var2032)))
(declare-const var3558 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var3558 null-ClassObject)))
(define-const var361 String (var1578_getAttribute/210607306 var2962 "class")) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(define-const var2165 String (var1219_subst/287586629 var361 var146)) ; Statement: r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1) 
(define-const var3405 var197 (var709_instantiateByClassName/289489540 var2165 var3558 null-var197)) ; Statement: r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null) 
 ; Statement: if r5 == null goto return null 
(assert (not (= var3405 null-var197))) ; Negate: Cond: r5 == null  
(define-const var2748 var3523 var3523-init) ; Statement: $r6 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var2748 var3405)) ; Statement: specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5) 

(declare-const var2748!1 var3523)
(declare-const var3405!1 var197)
(define-const var1336 var3343 (var1833_getChildNodes/-162022572 (cast-from-var1578-to-var1833 var2962))) ; Statement: r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var552 Int (var3343_getLength/224812497 var1336)) ; Statement: i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var269 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var269 var552))) ; Negate: Cond: i2 >= i0  
(define-const var3958 var1833 (var3343_item/-99689391 var1336 var269)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2960 Int (var1833_getNodeType/-368491152 var3958)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (= var2960 1))) ; Cond: $s1 != 1 
(define-const var269!1 Int (+ var269 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var269!1 var552))) ; Negate: Cond: i2 >= i0  
(define-const var3958!1 var1833 (var3343_item/-99689391 var1336 var269!1)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2960!1 Int (var1833_getNodeType/-368491152 var3958!1)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var2960!1 1)))) ; Negate: Cond: $s1 != 1  
(define-const var2595 var1578 (cast-from-var1833-to-var1578 var3958!1)) ; Statement: r9 = (org.w3c.dom.Element) r8 
(define-const var3600 String (var1578_getTagName/1916305756 var2595)) ; Statement: r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var3732 Bool (= var3600 "param")) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1) 
(assert (not (= (ite var3732 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var1219_setParameter/1603816708 var2595 var2748!1 var146)) ; Statement: staticinvoke <org.apache.log4j.xml.DOMConfigurator: void setParameter(org.w3c.dom.Element,org.apache.log4j.config.PropertySetter,java.util.Properties)>(r9, $r6, r1) 

(declare-const var2595!1 var1578)
(declare-const var2748!2 var3523)
(declare-const var146!1 var2032)
 ; Statement: goto [?= i2 = i2 + 1] 
(assert true) ; Non Conditional
(define-const var269!2 Int (+ var269!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (>= var269!2 var552)) ; Cond: i2 >= i0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1578_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), var1219_subst/287586629=([java.lang.String, java.util.Properties], java.lang.String), var709_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), var3523-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var1833_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var1578-to-var1833=([org.w3c.dom.Element], org.w3c.dom.Node), var3343_getLength/224812497=([org.w3c.dom.NodeList], int), var3343_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var1833_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var1833-to-var1578=([org.w3c.dom.Node], org.w3c.dom.Element), var1578_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var1219_setParameter/1603816708=([org.w3c.dom.Element, org.apache.log4j.config.PropertySetter, java.util.Properties], void)}
; {var1578=org.w3c.dom.Element, var2962=r0, var2032=java.util.Properties, var146=r1, var3558=r4, var361=$r2, var1219=org.apache.log4j.xml.DOMConfigurator, var2165=r3, var197=java.lang.Object, var709=org.apache.log4j.helpers.OptionConverter, var3405=r5, var3523=org.apache.log4j.config.PropertySetter, var2748=$r6, var3343=org.w3c.dom.NodeList, var1833=org.w3c.dom.Node, var1336=r7, var552=i0, var269=i2, var3958=r8, var2960=$s1, var2595=r9, var3600=r10, var3732=$z0}
; {org.w3c.dom.Element=var1578, r0=var2962, java.util.Properties=var2032, r1=var146, r4=var3558, $r2=var361, org.apache.log4j.xml.DOMConfigurator=var1219, r3=var2165, java.lang.Object=var197, org.apache.log4j.helpers.OptionConverter=var709, r5=var3405, org.apache.log4j.config.PropertySetter=var3523, $r6=var2748, org.w3c.dom.NodeList=var3343, org.w3c.dom.Node=var1833, r7=var1336, i0=var552, i2=var269, r8=var3958, $s1=var2960, r9=var2595, r10=var3600, $z0=var3732}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: java.util.Properties;	r4 := @parameter2: java.lang.Class;	$r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1);	r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null);	if r5 == null goto return null;	$r6 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5);	r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r9 = (org.w3c.dom.Element) r8;	r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param");	if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1);	staticinvoke <org.apache.log4j.xml.DOMConfigurator: void setParameter(org.w3c.dom.Element,org.apache.log4j.config.PropertySetter,java.util.Properties)>(r9, $r6, r1);	goto [?= i2 = i2 + 1];	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	return r5
;block_num 12