(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1191 0)
(declare-sort var422 0)
(declare-sort var2353 0)
(declare-sort var3368 0)
(declare-sort var3994 0)
(declare-sort var733 0)
(declare-sort var1118 0)
(declare-sort var2972 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1191_getAttribute/210607306 (var1191 String) String)
(declare-fun var2353_subst/287586629 (String var422) String)
(declare-fun var3994_instantiateByClassName/289489540 (String ClassObject var3368) var3368)
(declare-fun var733-init () var733)
(declare-fun <init>/638421130 (var733 var3368) void)
(declare-fun var2972_getChildNodes/-162022572 (var2972) var1118)
(declare-fun cast-from-var1191-to-var2972 (var1191) var2972)
(declare-fun var1118_getLength/224812497 (var1118) Int)
(declare-fun var1118_item/-99689391 (var1118 Int) var2972)
(declare-fun var2972_getNodeType/-368491152 (var2972) Int)
(declare-fun cast-from-var2972-to-var1191 (var2972) var1191)
(declare-fun var1191_getTagName/1916305756 (var1191) String)
(declare-fun var2353_setParameter/1603816708 (var1191 var733 var422) void)
(declare-const null-var1191 var1191)
(declare-const null-var422 var422)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3368 var3368)
(declare-const var3039 var1191) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3039 null-var1191)))
(declare-const var264 var422) ; Statement: r1 := @parameter1: java.util.Properties 
(assert (not (= var264 null-var422)))
(declare-const var1954 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var1954 null-ClassObject)))
(define-const var3774 String (var1191_getAttribute/210607306 var3039 "class")) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(define-const var2191 String (var2353_subst/287586629 var3774 var264)) ; Statement: r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1) 
(define-const var1816 var3368 (var3994_instantiateByClassName/289489540 var2191 var1954 null-var3368)) ; Statement: r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null) 
 ; Statement: if r5 == null goto return null 
(assert (not (= var1816 null-var3368))) ; Negate: Cond: r5 == null  
(define-const var870 var733 var733-init) ; Statement: $r6 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var870 var1816)) ; Statement: specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5) 

(declare-const var870!1 var733)
(declare-const var1816!1 var3368)
(define-const var740 var1118 (var2972_getChildNodes/-162022572 (cast-from-var1191-to-var2972 var3039))) ; Statement: r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2550 Int (var1118_getLength/224812497 var740)) ; Statement: i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var3579 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var3579 var2550))) ; Negate: Cond: i2 >= i0  
(define-const var3760 var2972 (var1118_item/-99689391 var740 var3579)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var265 Int (var2972_getNodeType/-368491152 var3760)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var265 1)))) ; Negate: Cond: $s1 != 1  
(define-const var1691 var1191 (cast-from-var2972-to-var1191 var3760)) ; Statement: r9 = (org.w3c.dom.Element) r8 
(define-const var3752 String (var1191_getTagName/1916305756 var1691)) ; Statement: r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var2601 Bool (= var3752 "param")) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1) 
(assert (not (= (ite var2601 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var2353_setParameter/1603816708 var1691 var870!1 var264)) ; Statement: staticinvoke <org.apache.log4j.xml.DOMConfigurator: void setParameter(org.w3c.dom.Element,org.apache.log4j.config.PropertySetter,java.util.Properties)>(r9, $r6, r1) 

(declare-const var1691!1 var1191)
(declare-const var870!2 var733)
(declare-const var264!1 var422)
 ; Statement: goto [?= i2 = i2 + 1] 
(assert true) ; Non Conditional
(define-const var3579!1 Int (+ var3579 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (>= var3579!1 var2550)) ; Cond: i2 >= i0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var1191_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), var2353_subst/287586629=([java.lang.String, java.util.Properties], java.lang.String), var3994_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), var733-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var2972_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var1191-to-var2972=([org.w3c.dom.Element], org.w3c.dom.Node), var1118_getLength/224812497=([org.w3c.dom.NodeList], int), var1118_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var2972_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var2972-to-var1191=([org.w3c.dom.Node], org.w3c.dom.Element), var1191_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var2353_setParameter/1603816708=([org.w3c.dom.Element, org.apache.log4j.config.PropertySetter, java.util.Properties], void)}
; {var1191=org.w3c.dom.Element, var3039=r0, var422=java.util.Properties, var264=r1, var1954=r4, var3774=$r2, var2353=org.apache.log4j.xml.DOMConfigurator, var2191=r3, var3368=java.lang.Object, var3994=org.apache.log4j.helpers.OptionConverter, var1816=r5, var733=org.apache.log4j.config.PropertySetter, var870=$r6, var1118=org.w3c.dom.NodeList, var2972=org.w3c.dom.Node, var740=r7, var2550=i0, var3579=i2, var3760=r8, var265=$s1, var1691=r9, var3752=r10, var2601=$z0}
; {org.w3c.dom.Element=var1191, r0=var3039, java.util.Properties=var422, r1=var264, r4=var1954, $r2=var3774, org.apache.log4j.xml.DOMConfigurator=var2353, r3=var2191, java.lang.Object=var3368, org.apache.log4j.helpers.OptionConverter=var3994, r5=var1816, org.apache.log4j.config.PropertySetter=var733, $r6=var870, org.w3c.dom.NodeList=var1118, org.w3c.dom.Node=var2972, r7=var740, i0=var2550, i2=var3579, r8=var3760, $s1=var265, r9=var1691, r10=var3752, $z0=var2601}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: java.util.Properties;	r4 := @parameter2: java.lang.Class;	$r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1);	r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null);	if r5 == null goto return null;	$r6 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5);	r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r9 = (org.w3c.dom.Element) r8;	r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param");	if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1);	staticinvoke <org.apache.log4j.xml.DOMConfigurator: void setParameter(org.w3c.dom.Element,org.apache.log4j.config.PropertySetter,java.util.Properties)>(r9, $r6, r1);	goto [?= i2 = i2 + 1];	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	return r5
;block_num 9