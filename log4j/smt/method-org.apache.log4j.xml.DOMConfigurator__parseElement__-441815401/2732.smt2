(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3515 0)
(declare-sort var2932 0)
(declare-sort var948 0)
(declare-sort var2874 0)
(declare-sort var1387 0)
(declare-sort var1247 0)
(declare-sort var3174 0)
(declare-sort var1926 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3515_getAttribute/210607306 (var3515 String) String)
(declare-fun var948_subst/287586629 (String var2932) String)
(declare-fun var1387_instantiateByClassName/289489540 (String ClassObject var2874) var2874)
(declare-fun var1247-init () var1247)
(declare-fun <init>/638421130 (var1247 var2874) void)
(declare-fun var1926_getChildNodes/-162022572 (var1926) var3174)
(declare-fun cast-from-var3515-to-var1926 (var3515) var1926)
(declare-fun var3174_getLength/224812497 (var3174) Int)
(declare-fun var3174_item/-99689391 (var3174 Int) var1926)
(declare-fun var1926_getNodeType/-368491152 (var1926) Int)
(declare-fun cast-from-var1926-to-var3515 (var1926) var3515)
(declare-fun var3515_getTagName/1916305756 (var3515) String)
(declare-fun var948_setParameter/1603816708 (var3515 var1247 var2932) void)
(declare-const null-var3515 var3515)
(declare-const null-var2932 var2932)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2874 var2874)
(declare-const var111 var3515) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var111 null-var3515)))
(declare-const var3427 var2932) ; Statement: r1 := @parameter1: java.util.Properties 
(assert (not (= var3427 null-var2932)))
(declare-const var2169 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var2169 null-ClassObject)))
(define-const var3231 String (var3515_getAttribute/210607306 var111 "class")) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(define-const var2941 String (var948_subst/287586629 var3231 var3427)) ; Statement: r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1) 
(define-const var224 var2874 (var1387_instantiateByClassName/289489540 var2941 var2169 null-var2874)) ; Statement: r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null) 
 ; Statement: if r5 == null goto return null 
(assert (not (= var224 null-var2874))) ; Negate: Cond: r5 == null  
(define-const var2725 var1247 var1247-init) ; Statement: $r6 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var2725 var224)) ; Statement: specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5) 

(declare-const var2725!1 var1247)
(declare-const var224!1 var2874)
(define-const var409 var3174 (var1926_getChildNodes/-162022572 (cast-from-var3515-to-var1926 var111))) ; Statement: r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2347 Int (var3174_getLength/224812497 var409)) ; Statement: i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var1694 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var1694 var2347))) ; Negate: Cond: i2 >= i0  
(define-const var3416 var1926 (var3174_item/-99689391 var409 var1694)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2947 Int (var1926_getNodeType/-368491152 var3416)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var2947 1)))) ; Negate: Cond: $s1 != 1  
(define-const var852 var3515 (cast-from-var1926-to-var3515 var3416)) ; Statement: r9 = (org.w3c.dom.Element) r8 
(define-const var2167 String (var3515_getTagName/1916305756 var852)) ; Statement: r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var1590 Bool (= var2167 "param")) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1) 
(assert (not (= (ite var1590 1 0) 0))) ; Negate: Cond: $z0 == 0  
;(assert (var948_setParameter/1603816708 var852 var2725!1 var3427)) ; Statement: staticinvoke <org.apache.log4j.xml.DOMConfigurator: void setParameter(org.w3c.dom.Element,org.apache.log4j.config.PropertySetter,java.util.Properties)>(r9, $r6, r1) 

(declare-const var852!1 var3515)
(declare-const var2725!2 var1247)
(declare-const var3427!1 var2932)
 ; Statement: goto [?= i2 = i2 + 1] 
(assert true) ; Non Conditional
(define-const var1694!1 Int (+ var1694 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var1694!1 var2347))) ; Negate: Cond: i2 >= i0  
(define-const var3416!1 var1926 (var3174_item/-99689391 var409 var1694!1)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2947!1 Int (var1926_getNodeType/-368491152 var3416!1)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (= var2947!1 1))) ; Cond: $s1 != 1 
(define-const var1694!2 Int (+ var1694!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (>= var1694!2 var2347)) ; Cond: i2 >= i0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3515_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), var948_subst/287586629=([java.lang.String, java.util.Properties], java.lang.String), var1387_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), var1247-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var1926_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var3515-to-var1926=([org.w3c.dom.Element], org.w3c.dom.Node), var3174_getLength/224812497=([org.w3c.dom.NodeList], int), var3174_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var1926_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var1926-to-var3515=([org.w3c.dom.Node], org.w3c.dom.Element), var3515_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var948_setParameter/1603816708=([org.w3c.dom.Element, org.apache.log4j.config.PropertySetter, java.util.Properties], void)}
; {var3515=org.w3c.dom.Element, var111=r0, var2932=java.util.Properties, var3427=r1, var2169=r4, var3231=$r2, var948=org.apache.log4j.xml.DOMConfigurator, var2941=r3, var2874=java.lang.Object, var1387=org.apache.log4j.helpers.OptionConverter, var224=r5, var1247=org.apache.log4j.config.PropertySetter, var2725=$r6, var3174=org.w3c.dom.NodeList, var1926=org.w3c.dom.Node, var409=r7, var2347=i0, var1694=i2, var3416=r8, var2947=$s1, var852=r9, var2167=r10, var1590=$z0}
; {org.w3c.dom.Element=var3515, r0=var111, java.util.Properties=var2932, r1=var3427, r4=var2169, $r2=var3231, org.apache.log4j.xml.DOMConfigurator=var948, r3=var2941, java.lang.Object=var2874, org.apache.log4j.helpers.OptionConverter=var1387, r5=var224, org.apache.log4j.config.PropertySetter=var1247, $r6=var2725, org.w3c.dom.NodeList=var3174, org.w3c.dom.Node=var1926, r7=var409, i0=var2347, i2=var1694, r8=var3416, $s1=var2947, r9=var852, r10=var2167, $z0=var1590}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: java.util.Properties;	r4 := @parameter2: java.lang.Class;	$r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1);	r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null);	if r5 == null goto return null;	$r6 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5);	r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r9 = (org.w3c.dom.Element) r8;	r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param");	if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1);	staticinvoke <org.apache.log4j.xml.DOMConfigurator: void setParameter(org.w3c.dom.Element,org.apache.log4j.config.PropertySetter,java.util.Properties)>(r9, $r6, r1);	goto [?= i2 = i2 + 1];	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	return r5
;block_num 12