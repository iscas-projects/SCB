(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3289 0)
(declare-sort var2736 0)
(declare-sort var2812 0)
(declare-sort var252 0)
(declare-sort var1225 0)
(declare-sort var2609 0)
(declare-sort var3678 0)
(declare-sort var1421 0)
(declare-sort var3250 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2736_getAttribute/210607306 (var2736 String) String)
(declare-fun subst/-1514982940 (var3289 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2812_debug/381960894 (String) void)
(declare-fun var3289_class$/200565026 (String) ClassObject)
(declare-fun var1225_instantiateByClassName/289489540 (String ClassObject var252) var252)
(declare-fun cast-from-var252-to-var2609 (var252) var2609)
(declare-fun catFactory/-2147047466 (var3289) var2609)
(declare-fun var3678-init () var3678)
(declare-fun <init>/638421130 (var3678 var252) void)
(declare-fun var3250_getChildNodes/-162022572 (var3250) var1421)
(declare-fun cast-from-var2736-to-var3250 (var2736) var3250)
(declare-fun var1421_getLength/224812497 (var1421) Int)
(declare-const null-var3289 var3289)
(declare-const null-var2736 var2736)
(declare-const var3289-class$org$apache$log4j$spi$LoggerFactory ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var252 var252)
(declare-const var868 var3289) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var868 null-var3289)))
(declare-const var309 var2736) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var309 null-var2736)))
(define-const var2778 String (var2736_getAttribute/210607306 var309 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var2272 String (subst/-1514982940 var868 var2778)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var2873 String "") ; Statement: $r4 = "" 
(assert true)
(define-const var3295 Bool (= var2873 var2272)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r5 = new java.lang.StringBuffer 
(assert (= (ite var3295 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2679 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2679)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2679!1 String)
(assert true)
(define-const var1651 String (append/1560614132 var2679!1 "Desired category factory: [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired category factory: [") 
(declare-const var2679!2 String)
(assert (str.prefixof var2679!1 var2679!2))
(assert true)
(define-const var969 String (append/1560614132 var1651 var2272)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1651!1 String)
(assert (str.prefixof var1651 var1651!1))
(assert true)
(define-const var894 String (append/1183289509 var969 93)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var1048 String (toString/-222306083 var894)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2812_debug/381960894 var1048)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r9) 

(declare-const var1048!1 String)
(define-const var312 ClassObject var3289-class$org$apache$log4j$spi$LoggerFactory) ; Statement: $r10 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
 ; Statement: if $r10 != null goto $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
(assert (not (not (= var312 null-ClassObject)))) ; Negate: Cond: $r10 != null  
(define-const var2444 ClassObject (var3289_class$/200565026 "org.apache.log4j.spi.LoggerFactory")) ; Statement: $r22 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$(java.lang.String)>("org.apache.log4j.spi.LoggerFactory") 
(define-const var2208 ClassObject var2444) ; Statement: <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> = $r22 
 ; Statement: goto [?= $r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null)] 
(assert true) ; Non Conditional
(define-const var2251 var252 (var1225_instantiateByClassName/289489540 var2272 var2444 null-var252)) ; Statement: $r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null) 
(define-const var764 Bool false) ; Statement: $z1 = $r21 instanceof org.apache.log4j.spi.LoggerFactory 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuffer 
(assert (not (= (ite var764 1 0) 0))) ; Negate: Cond: $z1 == 0  
(define-const var2360 var2609 (cast-from-var252-to-var2609 var2251)) ; Statement: $r19 = (org.apache.log4j.spi.LoggerFactory) $r21 
(declare-const var868!1 var3289)
(assert (not (= var868!1 null-var3289)))
(assert (= (catFactory/-2147047466 var868!1) var2360)) ; Statement: r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerFactory catFactory> = $r19 
 ; Statement: goto [?= $r16 = new org.apache.log4j.config.PropertySetter] 
(assert true) ; Non Conditional
(define-const var1930 var3678 var3678-init) ; Statement: $r16 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var1930 var2251)) ; Statement: specialinvoke $r16.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r21) 

(declare-const var1930!1 var3678)
(declare-const var2251!1 var252)
(define-const var1649 var1421 (var3250_getChildNodes/-162022572 (cast-from-var2736-to-var3250 var309))) ; Statement: $r20 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var3948 Int (var1421_getLength/224812497 var1649)) ; Statement: $i1 = interfaceinvoke $r20.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var3322 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto return 
(assert (>= var3322 var3948)) ; Cond: i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2736_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2812_debug/381960894=([java.lang.String], void), var3289_class$/200565026=([java.lang.String], java.lang.Class), var1225_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var252-to-var2609=([java.lang.Object], org.apache.log4j.spi.LoggerFactory), catFactory/-2147047466=([org.apache.log4j.xml.DOMConfigurator], org.apache.log4j.spi.LoggerFactory), var3678-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var3250_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var2736-to-var3250=([org.w3c.dom.Element], org.w3c.dom.Node), var1421_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var3289=org.apache.log4j.xml.DOMConfigurator, var868=r0, var2736=org.w3c.dom.Element, var309=r1, var2778=$r2, var2272=r3, var2873=$r4, var3295=$z0, var2679=$r5, var1651=$r6, var969=$r7, var894=$r8, var1048=$r9, var2812=org.apache.log4j.helpers.LogLog, var312=$r10, var2444=$r22, var2208=<org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>, var252=java.lang.Object, var1225=org.apache.log4j.helpers.OptionConverter, var2251=$r21, var764=$z1, var2609=org.apache.log4j.spi.LoggerFactory, var2360=$r19, var3678=org.apache.log4j.config.PropertySetter, var1930=$r16, var1421=org.w3c.dom.NodeList, var3250=org.w3c.dom.Node, var1649=$r20, var3948=$i1, var3322=i2}
; {org.apache.log4j.xml.DOMConfigurator=var3289, r0=var868, org.w3c.dom.Element=var2736, r1=var309, $r2=var2778, r3=var2272, $r4=var2873, $z0=var3295, $r5=var2679, $r6=var1651, $r7=var969, $r8=var894, $r9=var1048, org.apache.log4j.helpers.LogLog=var2812, $r10=var312, $r22=var2444, <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>=var2208, java.lang.Object=var252, org.apache.log4j.helpers.OptionConverter=var1225, $r21=var2251, $z1=var764, org.apache.log4j.spi.LoggerFactory=var2609, $r19=var2360, org.apache.log4j.config.PropertySetter=var3678, $r16=var1930, org.w3c.dom.NodeList=var1421, org.w3c.dom.Node=var3250, $r20=var1649, $i1=var3948, i2=var3322}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = "";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $r5 = new java.lang.StringBuffer;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired category factory: [");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r9);	$r10 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	if $r10 != null goto $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	$r22 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$(java.lang.String)>("org.apache.log4j.spi.LoggerFactory");	<org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> = $r22;	goto [?= $r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null)];	$r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null);	$z1 = $r21 instanceof org.apache.log4j.spi.LoggerFactory;	if $z1 == 0 goto $r11 = new java.lang.StringBuffer;	$r19 = (org.apache.log4j.spi.LoggerFactory) $r21;	r0.<org.apache.log4j.xml.DOMConfigurator: org.apache.log4j.spi.LoggerFactory catFactory> = $r19;	goto [?= $r16 = new org.apache.log4j.config.PropertySetter];	$r16 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r16.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r21);	$r20 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i1 = interfaceinvoke $r20.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= $i1 goto return;	return
;block_num 8