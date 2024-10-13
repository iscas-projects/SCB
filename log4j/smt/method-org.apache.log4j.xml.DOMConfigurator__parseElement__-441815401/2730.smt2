(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2503 0)
(declare-sort var841 0)
(declare-sort var148 0)
(declare-sort var736 0)
(declare-sort var162 0)
(declare-sort var400 0)
(declare-sort var2046 0)
(declare-sort var3654 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2503_getAttribute/210607306 (var2503 String) String)
(declare-fun var148_subst/287586629 (String var841) String)
(declare-fun var162_instantiateByClassName/289489540 (String ClassObject var736) var736)
(declare-fun var400-init () var400)
(declare-fun <init>/638421130 (var400 var736) void)
(declare-fun var3654_getChildNodes/-162022572 (var3654) var2046)
(declare-fun cast-from-var2503-to-var3654 (var2503) var3654)
(declare-fun var2046_getLength/224812497 (var2046) Int)
(declare-fun var2046_item/-99689391 (var2046 Int) var3654)
(declare-fun var3654_getNodeType/-368491152 (var3654) Int)
(declare-const null-var2503 var2503)
(declare-const null-var841 var841)
(declare-const null-ClassObject ClassObject)
(declare-const null-var736 var736)
(declare-const var3650 var2503) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3650 null-var2503)))
(declare-const var2348 var841) ; Statement: r1 := @parameter1: java.util.Properties 
(assert (not (= var2348 null-var841)))
(declare-const var2866 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var2866 null-ClassObject)))
(define-const var1188 String (var2503_getAttribute/210607306 var3650 "class")) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(define-const var1811 String (var148_subst/287586629 var1188 var2348)) ; Statement: r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1) 
(define-const var2846 var736 (var162_instantiateByClassName/289489540 var1811 var2866 null-var736)) ; Statement: r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null) 
 ; Statement: if r5 == null goto return null 
(assert (not (= var2846 null-var736))) ; Negate: Cond: r5 == null  
(define-const var2145 var400 var400-init) ; Statement: $r6 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var2145 var2846)) ; Statement: specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5) 

(declare-const var2145!1 var400)
(declare-const var2846!1 var736)
(define-const var3744 var2046 (var3654_getChildNodes/-162022572 (cast-from-var2503-to-var3654 var3650))) ; Statement: r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2727 Int (var2046_getLength/224812497 var3744)) ; Statement: i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var2351 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var2351 var2727))) ; Negate: Cond: i2 >= i0  
(define-const var3338 var3654 (var2046_item/-99689391 var3744 var2351)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2871 Int (var3654_getNodeType/-368491152 var3338)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (= var2871 1))) ; Cond: $s1 != 1 
(define-const var2351!1 Int (+ var2351 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var2351!1 var2727))) ; Negate: Cond: i2 >= i0  
(define-const var3338!1 var3654 (var2046_item/-99689391 var3744 var2351!1)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2871!1 Int (var3654_getNodeType/-368491152 var3338!1)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (= var2871!1 1))) ; Cond: $s1 != 1 
(define-const var2351!2 Int (+ var2351!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (>= var2351!2 var2727)) ; Cond: i2 >= i0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var2503_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), var148_subst/287586629=([java.lang.String, java.util.Properties], java.lang.String), var162_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), var400-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var3654_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var2503-to-var3654=([org.w3c.dom.Element], org.w3c.dom.Node), var2046_getLength/224812497=([org.w3c.dom.NodeList], int), var2046_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var3654_getNodeType/-368491152=([org.w3c.dom.Node], short)}
; {var2503=org.w3c.dom.Element, var3650=r0, var841=java.util.Properties, var2348=r1, var2866=r4, var1188=$r2, var148=org.apache.log4j.xml.DOMConfigurator, var1811=r3, var736=java.lang.Object, var162=org.apache.log4j.helpers.OptionConverter, var2846=r5, var400=org.apache.log4j.config.PropertySetter, var2145=$r6, var2046=org.w3c.dom.NodeList, var3654=org.w3c.dom.Node, var3744=r7, var2727=i0, var2351=i2, var3338=r8, var2871=$s1}
; {org.w3c.dom.Element=var2503, r0=var3650, java.util.Properties=var841, r1=var2348, r4=var2866, $r2=var1188, org.apache.log4j.xml.DOMConfigurator=var148, r3=var1811, java.lang.Object=var736, org.apache.log4j.helpers.OptionConverter=var162, r5=var2846, org.apache.log4j.config.PropertySetter=var400, $r6=var2145, org.w3c.dom.NodeList=var2046, org.w3c.dom.Node=var3654, r7=var3744, i0=var2727, i2=var2351, r8=var3338, $s1=var2871}
;seq 
;cnt {}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: java.util.Properties;	r4 := @parameter2: java.lang.Class;	$r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1);	r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null);	if r5 == null goto return null;	$r6 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5);	r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	return r5
;block_num 10