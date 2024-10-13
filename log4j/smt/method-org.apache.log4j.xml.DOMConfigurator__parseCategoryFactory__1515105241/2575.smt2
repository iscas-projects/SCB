(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1611 0)
(declare-sort var1788 0)
(declare-sort var614 0)
(declare-sort var1288 0)
(declare-sort var3108 0)
(declare-sort var2048 0)
(declare-sort var164 0)
(declare-sort var3575 0)
(declare-sort var800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1788_getAttribute/210607306 (var1788 String) String)
(declare-fun subst/-1514982940 (var1611 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var614_debug/381960894 (String) void)
(declare-fun var3108_instantiateByClassName/289489540 (String ClassObject var1288) var1288)
(declare-fun cast-from-var1288-to-var2048 (var1288) var2048)
(declare-fun catFactory/-2147047466 (var1611) var2048)
(declare-fun var164-init () var164)
(declare-fun <init>/638421130 (var164 var1288) void)
(declare-fun var800_getChildNodes/-162022572 (var800) var3575)
(declare-fun cast-from-var1788-to-var800 (var1788) var800)
(declare-fun var3575_getLength/224812497 (var3575) Int)
(declare-const null-var1611 var1611)
(declare-const null-var1788 var1788)
(declare-const var1611-class$org$apache$log4j$spi$LoggerFactory ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1288 var1288)
(declare-const var2040 var1611) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var2040 null-var1611)))
(declare-const var3530 var1788) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3530 null-var1788)))
(define-const var276 String (var1788_getAttribute/210607306 var3530 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var3607 String (subst/-1514982940 var2040 var276)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var682 String "") ; Statement: $r4 = "" 
(assert true)
(define-const var3101 Bool (= var682 var3607)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r5 = new java.lang.StringBuffer 
(assert (= (ite var3101 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3006 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3006)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3006!1 String)
(assert true)
(define-const var812 String (append/1560614132 var3006!1 "Desired category factory: [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired category factory: [") 
(declare-const var3006!2 String)
(assert (str.prefixof var3006!1 var3006!2))
(assert true)
(define-const var2946 String (append/1560614132 var812 var3607)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var812!1 String)
(assert (str.prefixof var812 var812!1))
(assert true)
(define-const var1024 String (append/1183289509 var2946 93)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var1146 String (toString/-222306083 var1024)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var614_debug/381960894 var1146)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r9) 

(declare-const var1146!1 String)
(define-const var2698 ClassObject var1611-class$org$apache$log4j$spi$LoggerFactory) ; Statement: $r10 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
 ; Statement: if $r10 != null goto $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
(assert (not (= var2698 null-ClassObject))) ; Cond: $r10 != null 
(define-const var964 ClassObject var1611-class$org$apache$log4j$spi$LoggerFactory) ; Statement: $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
(assert true) ; Non Conditional
(define-const var3249 var1288 (var3108_instantiateByClassName/289489540 var3607 var964 null-var1288)) ; Statement: $r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null) 
(define-const var1670 Bool false) ; Statement: $z1 = $r21 instanceof org.apache.log4j.spi.LoggerFactory 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuffer 
(assert (not (= (ite var1670 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var1287 var2048 (cast-from-var1288-to-var2048 var3249)) ; Statement: $r19 = (org.apache.log4j.spi.LoggerFactory) $r21 
(declare-const var2040!1 var1611)
(assert (not (= var2040!1 null-var1611)))
(assert (= (catFactory/-2147047466 var2040!1) var1287)) ; Statement: r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerFactory catFactory> = $r19 
 ; Statement: goto [?= $r16 = new org.apache.log4j.config.PropertySetter] 
(assert true) ; Non Conditional
(define-const var789 var164 var164-init) ; Statement: $r16 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var789 var3249)) ; Statement: specialinvoke $r16.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r21) 

(declare-const var789!1 var164)
(declare-const var3249!1 var1288)
(define-const var2004 var3575 (var800_getChildNodes/-162022572 (cast-from-var1788-to-var800 var3530))) ; Statement: $r20 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var2158 Int (var3575_getLength/224812497 var2004)) ; Statement: $i1 = interfaceinvoke $r20.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var1634 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto return 
(assert (>= var1634 var2158)) ; Cond: i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var1788_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var614_debug/381960894=([java.lang.String], void), var3108_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var1288-to-var2048=([java.lang.Object], org.apache.log4j.spi.LoggerFactory), catFactory/-2147047466=([org.apache.log4j.xml.DOMConfigurator], org.apache.log4j.spi.LoggerFactory), var164-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var800_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var1788-to-var800=([org.w3c.dom.Element], org.w3c.dom.Node), var3575_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var1611=org.apache.log4j.xml.DOMConfigurator, var2040=r0, var1788=org.w3c.dom.Element, var3530=r1, var276=$r2, var3607=r3, var682=$r4, var3101=$z0, var3006=$r5, var812=$r6, var2946=$r7, var1024=$r8, var1146=$r9, var614=org.apache.log4j.helpers.LogLog, var2698=$r10, var964=$r22, var1288=java.lang.Object, var3108=org.apache.log4j.helpers.OptionConverter, var3249=$r21, var1670=$z1, var2048=org.apache.log4j.spi.LoggerFactory, var1287=$r19, var164=org.apache.log4j.config.PropertySetter, var789=$r16, var3575=org.w3c.dom.NodeList, var800=org.w3c.dom.Node, var2004=$r20, var2158=$i1, var1634=i2}
; {org.apache.log4j.xml.DOMConfigurator=var1611, r0=var2040, org.w3c.dom.Element=var1788, r1=var3530, $r2=var276, r3=var3607, $r4=var682, $z0=var3101, $r5=var3006, $r6=var812, $r7=var2946, $r8=var1024, $r9=var1146, org.apache.log4j.helpers.LogLog=var614, $r10=var2698, $r22=var964, java.lang.Object=var1288, org.apache.log4j.helpers.OptionConverter=var3108, $r21=var3249, $z1=var1670, org.apache.log4j.spi.LoggerFactory=var2048, $r19=var1287, org.apache.log4j.config.PropertySetter=var164, $r16=var789, org.w3c.dom.NodeList=var3575, org.w3c.dom.Node=var800, $r20=var2004, $i1=var2158, i2=var1634}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = "";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $r5 = new java.lang.StringBuffer;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired category factory: [");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r9);	$r10 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	if $r10 != null goto $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	$r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	$r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null);	$z1 = $r21 instanceof org.apache.log4j.spi.LoggerFactory;	if $z1 == 0 goto $r11 = new java.lang.StringBuffer;	$r19 = (org.apache.log4j.spi.LoggerFactory) $r21;	r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerFactory catFactory> = $r19;	goto [?= $r16 = new org.apache.log4j.config.PropertySetter];	$r16 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r16.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r21);	$r20 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i1 = interfaceinvoke $r20.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= $i1 goto return;	return
;block_num 8