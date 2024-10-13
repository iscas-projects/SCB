(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2235 0)
(declare-sort var677 0)
(declare-sort var3769 0)
(declare-sort var460 0)
(declare-sort var248 0)
(declare-sort var3194 0)
(declare-sort var608 0)
(declare-sort var3291 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var460-init () var460)
(declare-fun <init>/638421130 (var460 var248) void)
(declare-fun cast-from-var3769-to-var248 (var3769) var248)
(declare-fun removeAllAppenders/313640692 (var3194) void)
(declare-fun cast-from-var3769-to-var3194 (var3769) var3194)
(declare-fun var3291_getChildNodes/-162022572 (var3291) var608)
(declare-fun cast-from-var677-to-var3291 (var677) var3291)
(declare-fun var608_getLength/224812497 (var608) Int)
(declare-fun var608_item/-99689391 (var608 Int) var3291)
(declare-fun var3291_getNodeType/-368491152 (var3291) Int)
(declare-fun activate/1266231958 (var460) void)
(declare-const null-var2235 var2235)
(declare-const null-var677 var677)
(declare-const null-var3769 var3769)
(declare-const null-Bool Bool)
(declare-const var926 var2235) ; Statement: r7 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var926 null-var2235)))
(declare-const var2327 var677) ; Statement: r2 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2327 null-var677)))
(declare-const var1142 var3769) ; Statement: r1 := @parameter1: org.apache.log4j.Logger 
(assert (not (= var1142 null-var3769)))
(declare-const var1008 Bool) ; Statement: z4 := @parameter2: boolean 
(assert (not (= var1008 null-Bool)))
(define-const var3088 var460 var460-init) ; Statement: $r0 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var3088 (cast-from-var3769-to-var248 var1142))) ; Statement: specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1) 

(declare-const var3088!1 var460)
(declare-const var1142!1 var3769)
(assert true)
;(assert (removeAllAppenders/313640692 (cast-from-var3769-to-var3194 var1142!1))) ; Statement: virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>() 

(declare-const var1142!2 var3769)
(define-const var2220 var608 (var3291_getChildNodes/-162022572 (cast-from-var677-to-var3291 var2327))) ; Statement: r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var3541 Int (var608_getLength/224812497 var2220)) ; Statement: i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var3579 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (not (>= var3579 var3541))) ; Negate: Cond: i2 >= i0  
(define-const var1543 var3291 (var608_item/-99689391 var2220 var3579)) ; Statement: r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2790 Int (var3291_getNodeType/-368491152 var1543)) ; Statement: $s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (= var2790 1))) ; Cond: $s1 != 1 
(define-const var3579!1 Int (+ var3579 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (not (>= var3579!1 var3541))) ; Negate: Cond: i2 >= i0  
(define-const var1543!1 var3291 (var608_item/-99689391 var2220 var3579!1)) ; Statement: r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2) 
(define-const var2790!1 Int (var3291_getNodeType/-368491152 var1543!1)) ; Statement: $s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>() 
 ; Statement: if $s1 != 1 goto i2 = i2 + 1 
(assert (not (= var2790!1 1))) ; Cond: $s1 != 1 
(define-const var3579!2 Int (+ var3579!1 1)) ; Statement: i2 = i2 + 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (>= var3579!2 var3541)) ; Cond: i2 >= i0 
(assert true)
;(assert (activate/1266231958 var3088!1)) ; Statement: virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>() 

(declare-const var3088!2 var460)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var460-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), cast-from-var3769-to-var248=([org.apache.log4j.Logger], java.lang.Object), removeAllAppenders/313640692=([org.apache.log4j.Category], void), cast-from-var3769-to-var3194=([org.apache.log4j.Logger], org.apache.log4j.Category), var3291_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var677-to-var3291=([org.w3c.dom.Element], org.w3c.dom.Node), var608_getLength/224812497=([org.w3c.dom.NodeList], int), var608_item/-99689391=([org.w3c.dom.NodeList, int], org.w3c.dom.Node), var3291_getNodeType/-368491152=([org.w3c.dom.Node], short), activate/1266231958=([org.apache.log4j.config.PropertySetter], void)}
; {var2235=org.apache.log4j.xml.DOMConfigurator, var926=r7, var677=org.w3c.dom.Element, var2327=r2, var3769=org.apache.log4j.Logger, var1142=r1, var1008=z4, var460=org.apache.log4j.config.PropertySetter, var3088=$r0, var248=java.lang.Object, var3194=org.apache.log4j.Category, var608=org.w3c.dom.NodeList, var3291=org.w3c.dom.Node, var2220=r3, var3541=i0, var3579=i2, var1543=r4, var2790=$s1}
; {org.apache.log4j.xml.DOMConfigurator=var2235, r7=var926, org.w3c.dom.Element=var677, r2=var2327, org.apache.log4j.Logger=var3769, r1=var1142, z4=var1008, org.apache.log4j.config.PropertySetter=var460, $r0=var3088, java.lang.Object=var248, org.apache.log4j.Category=var3194, org.w3c.dom.NodeList=var608, org.w3c.dom.Node=var3291, r3=var2220, i0=var3541, i2=var3579, r4=var1543, $s1=var2790}
;seq 
;cnt {}
;stmts r7 := @this: org.apache.log4j.xml.DOMConfigurator;	r2 := @parameter0: org.w3c.dom.Element;	r1 := @parameter1: org.apache.log4j.Logger;	z4 := @parameter2: boolean;	$r0 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r0.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>(r1);	virtualinvoke r1.<org.apache.log4j.Logger: void removeAllAppenders()>();	r3 = interfaceinvoke r2.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r3.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	r4 = interfaceinvoke r3.<org.w3c.dom.NodeList: org.w3c.dom.Node item(int)>(i2);	$s1 = interfaceinvoke r4.<org.w3c.dom.Node: short getNodeType()>();	if $s1 != 1 goto i2 = i2 + 1;	i2 = i2 + 1;	goto [?= (branch)];	if i2 >= i0 goto virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	virtualinvoke $r0.<org.apache.log4j.config.PropertySetter: void activate()>();	return
;block_num 9