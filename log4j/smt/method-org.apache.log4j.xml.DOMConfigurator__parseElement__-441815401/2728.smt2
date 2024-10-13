(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3958 0)
(declare-sort var2930 0)
(declare-sort var152 0)
(declare-sort var2805 0)
(declare-sort var1350 0)
(declare-sort var3854 0)
(declare-sort var25 0)
(declare-sort var657 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3958_getAttribute/210607306 (var3958 String) String)
(declare-fun var152_subst/287586629 (String var2930) String)
(declare-fun var1350_instantiateByClassName/289489540 (String ClassObject var2805) var2805)
(declare-fun var3854-init () var3854)
(declare-fun <init>/638421130 (var3854 var2805) void)
(declare-fun var657_getChildNodes/-162022572 (var657) var25)
(declare-fun cast-from-var3958-to-var657 (var3958) var657)
(declare-fun var25_getLength/224812497 (var25) Int)
(declare-fun var25_item/-99689391 (var25 Int) var657)
(declare-fun var657_getNodeType/-368491152 (var657) Int)
(declare-fun cast-from-var657-to-var3958 (var657) var3958)
(declare-fun var3958_getTagName/1916305756 (var3958) String)
(declare-fun var152_parseUnrecognizedElement/-1748218124 (var2805 var3958 var2930) void)
(declare-const null-var3958 var3958)
(declare-const null-var2930 var2930)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2805 var2805)
(declare-const var1440 var3958) ; Statement: r0 := @parameter0: org.w3c.dom.Element 
(assert (not (= var1440 null-var3958)))
(declare-const var282 var2930) ; Statement: r1 := @parameter1: java.util.Properties 
(assert (not (= var282 null-var2930)))
(declare-const var1819 ClassObject) ; Statement: r4 := @parameter2: java.lang.Class 
(assert (not (= var1819 null-ClassObject)))
(define-const var2184 String (var3958_getAttribute/210607306 var1440 "class")) ; Statement: $r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(define-const var2006 String (var152_subst/287586629 var2184 var282)) ; Statement: r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1) 
(define-const var2541 var2805 (var1350_instantiateByClassName/289489540 var2006 var1819 null-var2805)) ; Statement: r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null) 
 ; Statement: if r5 == null goto return null 
(assert (not (= var2541 null-var2805))) ; Negate: Cond: r5 == null  
(define-const var3941 var3854 var3854-init) ; Statement: $r6 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var3941 var2541)) ; Statement: specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5) 

(declare-const var3941!1 var3854)
(declare-const var2541!1 var2805)
(define-const var3244 var25 (var657_getChildNodes/-162022572 (cast-from-var3958-to-var657 var1440))) ; Statement: r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var3517 Int (var25_getLength/224812497 var3244)) ; Statement: i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var2218 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (not (>= var2218 var3517))) ; Negate: Cond: i2 >= i0  
(define-const var3189 var657 (var25_item/-99689391 var3244 var2218)) ; Statement: r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var1977 Int (var657_getNodeType/-368491152 var3189)) ; Statement: $s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (not (= var1977 1)))) ; Negate: Cond: $s1 != 1  
(define-const var3339 var3958 (cast-from-var657-to-var3958 var3189)) ; Statement: r9 = (org.w3c.dom.Element) r8 
(define-const var2261 String (var3958_getTagName/1916305756 var3339)) ; Statement: r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>() 
(assert true)
(define-const var947 Bool (= var2261 "param")) ; Statement: $z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param") 
 ; Statement: if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1) 
(assert (= (ite var947 1 0) 0)) ; Cond: $z0 == 0 
;(assert (var152_parseUnrecognizedElement/-1748218124 var2541!1 var3339 var282)) ; Statement: staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1) 

(declare-const var2541!2 var2805)
(declare-const var3339!1 var3958)
(declare-const var282!1 var2930)
(assert true) ; Non Conditional
(define-const var2218!1 Int (+ var2218 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto return r5 
(assert (>= var2218!1 var3517)) ; Cond: i2 >= i0 
 ; Statement: return r5 
(check-sat)
(get-model)
(get-unsat-core)
; {var3958_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), var152_subst/287586629=([java.lang.String, java.util.Properties], java.lang.String), var1350_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), var3854-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var657_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var3958-to-var657=([org.w3c.dom.Element], org.w3c.dom.Node), var25_getLength/224812497=([org.w3c.dom.NodeList], int), var25_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var657_getNodeType/-368491152=([org.w3c.dom.Node], short), cast-from-var657-to-var3958=([org.w3c.dom.Node], org.w3c.dom.Element), var3958_getTagName/1916305756=([org.w3c.dom.Element], java.lang.String), var152_parseUnrecognizedElement/-1748218124=([java.lang.Object, org.w3c.dom.Element, java.util.Properties], void)}
; {var3958=org.w3c.dom.Element, var1440=r0, var2930=java.util.Properties, var282=r1, var1819=r4, var2184=$r2, var152=org.apache.log4j.xml.DOMConfigurator, var2006=r3, var2805=java.lang.Object, var1350=org.apache.log4j.helpers.OptionConverter, var2541=r5, var3854=org.apache.log4j.config.PropertySetter, var3941=$r6, var25=org.w3c.dom.NodeList, var657=org.w3c.dom.Node, var3244=r7, var3517=i0, var2218=i2, var3189=r8, var1977=$s1, var3339=r9, var2261=r10, var947=$z0}
; {org.w3c.dom.Element=var3958, r0=var1440, java.util.Properties=var2930, r1=var282, r4=var1819, $r2=var2184, org.apache.log4j.xml.DOMConfigurator=var152, r3=var2006, java.lang.Object=var2805, org.apache.log4j.helpers.OptionConverter=var1350, r5=var2541, org.apache.log4j.config.PropertySetter=var3854, $r6=var3941, org.w3c.dom.NodeList=var25, org.w3c.dom.Node=var657, r7=var3244, i0=var3517, i2=var2218, r8=var3189, $s1=var1977, r9=var3339, r10=var2261, $z0=var947}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r0 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: java.util.Properties;	r4 := @parameter2: java.lang.Class;	$r2 = interfaceinvoke r0.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String,java.util.Properties)>($r2, r1);	r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, r4, null);	if r5 == null goto return null;	$r6 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r5);	r7 = interfaceinvoke r0.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto return r5;	r8 = interfaceinvoke r7.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r8.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	r9 = (org.w3c.dom.Element) r8;	r10 = interfaceinvoke r9.<org.w3c.dom.Element: java.lang.String getTagName()>();	$z0 = virtualinvoke r10.<java.lang.String: boolean equals(java.lang.Object)>("param");	if $z0 == 0 goto staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1);	staticinvoke <org.apache.log4j.xml.DOMConfigurator: void parseUnrecognizedElement(java.lang.Object,org.w3c.dom.Element,java.util.Properties)>(r5, r9, r1);	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto return r5;	return r5
;block_num 9