(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2081 0)
(declare-sort var826 0)
(declare-sort var885 0)
(declare-sort var3699 0)
(declare-sort var3243 0)
(declare-sort var1428 0)
(declare-sort var2691 0)
(declare-sort var1786 0)
(declare-sort var718 0)
(declare-sort var1543 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var826_getAttribute/210607306 (var826 String) String)
(declare-fun subst/-1514982940 (var2081 String) String)
(declare-fun var2081_class$/200565026 (String) ClassObject)
(declare-fun var3243_instantiateByClassName/289489540 (String ClassObject var3699) var3699)
(declare-fun cast-from-var3699-to-var1428 (var3699) var1428)
(declare-fun var2691-init () var2691)
(declare-fun <init>/638421130 (var2691 var3699) void)
(declare-fun cast-from-var1428-to-var3699 (var1428) var3699)
(declare-fun var718_getChildNodes/-162022572 (var718) var1786)
(declare-fun cast-from-var826-to-var718 (var826) var718)
(declare-fun var1786_getLength/224812497 (var1786) Int)
(declare-fun activate/1266231958 (var2691) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3699) ClassObject)
(declare-fun append/-143899486 (String var3699) String)
(declare-fun cast-from-ClassObject-to-var3699 (ClassObject) var3699)
(declare-fun var885_getName/-564791716 (var885) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1543_debug/381960894 (String) void)
(declare-fun var885_addFilter/-905084679 (var885 var1428) void)
(declare-const null-var2081 var2081)
(declare-const null-var826 var826)
(declare-const null-var885 var885)
(declare-const var2081-class$org$apache$log4j$spi$Filter ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var3699 var3699)
(declare-const null-var1428 var1428)
(declare-const var1510 var2081) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var1510 null-var2081)))
(declare-const var3954 var826) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var3954 null-var826)))
(declare-const var381 var885) ; Statement: r12 := @parameter1: org.apache.log4j.Appender 
(assert (not (= var381 null-var885)))
(define-const var1013 String (var826_getAttribute/210607306 var3954 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var3814 String (subst/-1514982940 var1510 var1013)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var1456 ClassObject var2081-class$org$apache$log4j$spi$Filter) ; Statement: $r4 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter> 
 ; Statement: if $r4 != null goto $r23 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter> 
(assert (not (not (= var1456 null-ClassObject)))) ; Negate: Cond: $r4 != null  
(define-const var3046 ClassObject (var2081_class$/200565026 "org.apache.log4j.spi.Filter")) ; Statement: $r23 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$(java.lang.String)>("org.apache.log4j.spi.Filter") 
(define-const var2315 ClassObject var3046) ; Statement: <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter> = $r23 
 ; Statement: goto [?= $r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r23, null)] 
(assert true) ; Non Conditional
(define-const var2297 var3699 (var3243_instantiateByClassName/289489540 var3814 var3046 null-var3699)) ; Statement: $r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r23, null) 
(define-const var499 var1428 (cast-from-var3699-to-var1428 var2297)) ; Statement: $r22 = (org.apache.log4j.spi.Filter) $r5 
 ; Statement: if $r22 == null goto return 
(assert (not (= var499 null-var1428))) ; Negate: Cond: $r22 == null  
(define-const var1912 var2691 var2691-init) ; Statement: $r6 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var1912 (cast-from-var1428-to-var3699 var499))) ; Statement: specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r22) 

(declare-const var1912!1 var2691)
(declare-const var499!1 var1428)
(define-const var2581 var1786 (var718_getChildNodes/-162022572 (cast-from-var826-to-var718 var3954))) ; Statement: r7 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var1039 Int (var1786_getLength/224812497 var2581)) ; Statement: i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var2411 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r6.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (>= var2411 var1039)) ; Cond: i2 >= i0 
(assert true)
;(assert (activate/1266231958 var1912!1)) ; Statement: virtualinvoke $r6.<org.apache.log4j.config.PropertySetter: void activate()>() 

(declare-const var1912!2 var2691)
(define-const var593 String String-init) ; Statement: $r8 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var593)) ; Statement: specialinvoke $r8.<java.lang.StringBuffer: void <init>()>() 

(declare-const var593!1 String)
(assert true)
(define-const var3648 String (append/1560614132 var593!1 "Adding filter of type [")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding filter of type [") 
(declare-const var593!2 String)
(assert (str.prefixof var593!1 var593!2))
(assert true)
(define-const var388 ClassObject (getClass/1258963082 (cast-from-var1428-to-var3699 var499!1))) ; Statement: $r9 = virtualinvoke $r22.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3118 String (append/-143899486 var3648 (cast-from-ClassObject-to-var3699 var388))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r9) 
(assert true)
(define-const var873 String (append/1560614132 var3118 "] to appender named [")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to appender named [") 
(declare-const var3118!1 String)
(assert (str.prefixof var3118 var3118!1))
(define-const var783 String (var885_getName/-564791716 var381)) ; Statement: $r13 = interfaceinvoke r12.<org.apache.log4j.Appender: java.lang.String getName()>() 
(assert true)
(define-const var143 String (append/1560614132 var873 var783)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r13) 
(declare-const var873!1 String)
(assert (str.prefixof var873 var873!1))
(assert true)
(define-const var834 String (append/1560614132 var143 "].")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var143!1 String)
(assert (str.prefixof var143 var143!1))
(assert true)
(define-const var1352 String (toString/-222306083 var834)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1543_debug/381960894 var1352)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r17) 

(declare-const var1352!1 String)
;(assert (var885_addFilter/-905084679 var381 var499!1)) ; Statement: interfaceinvoke r12.<org.apache.log4j.Appender: void addFilter(org.apache.log4j.spi.Filter)>($r22) 

(declare-const var381!1 var885)
(declare-const var499!2 var1428)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var826_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), var2081_class$/200565026=([java.lang.String], java.lang.Class), var3243_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var3699-to-var1428=([java.lang.Object], org.apache.log4j.spi.Filter), var2691-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), cast-from-var1428-to-var3699=([org.apache.log4j.spi.Filter], java.lang.Object), var718_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var826-to-var718=([org.w3c.dom.Element], org.w3c.dom.Node), var1786_getLength/224812497=([org.w3c.dom.NodeList], int), activate/1266231958=([org.apache.log4j.config.PropertySetter], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-ClassObject-to-var3699=([java.lang.Class], java.lang.Object), var885_getName/-564791716=([org.apache.log4j.Appender], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1543_debug/381960894=([java.lang.String], void), var885_addFilter/-905084679=([org.apache.log4j.Appender, org.apache.log4j.spi.Filter], void)}
; {var2081=org.apache.log4j.xml.DOMConfigurator, var1510=r0, var826=org.w3c.dom.Element, var3954=r1, var885=org.apache.log4j.Appender, var381=r12, var1013=$r2, var3814=r3, var1456=$r4, var3046=$r23, var2315=<org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter>, var3699=java.lang.Object, var3243=org.apache.log4j.helpers.OptionConverter, var2297=$r5, var1428=org.apache.log4j.spi.Filter, var499=$r22, var2691=org.apache.log4j.config.PropertySetter, var1912=$r6, var1786=org.w3c.dom.NodeList, var718=org.w3c.dom.Node, var2581=r7, var1039=i0, var2411=i2, var593=$r8, var3648=$r10, var388=$r9, var3118=$r11, var873=$r14, var783=$r13, var143=$r15, var834=$r16, var1352=$r17, var1543=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.xml.DOMConfigurator=var2081, r0=var1510, org.w3c.dom.Element=var826, r1=var3954, org.apache.log4j.Appender=var885, r12=var381, $r2=var1013, r3=var3814, $r4=var1456, $r23=var3046, <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter>=var2315, java.lang.Object=var3699, org.apache.log4j.helpers.OptionConverter=var3243, $r5=var2297, org.apache.log4j.spi.Filter=var1428, $r22=var499, org.apache.log4j.config.PropertySetter=var2691, $r6=var1912, org.w3c.dom.NodeList=var1786, org.w3c.dom.Node=var718, r7=var2581, i0=var1039, i2=var2411, $r8=var593, $r10=var3648, $r9=var388, $r11=var3118, $r14=var873, $r13=var783, $r15=var143, $r16=var834, $r17=var1352, org.apache.log4j.helpers.LogLog=var1543}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	r12 := @parameter1: org.apache.log4j.Appender;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter>;	if $r4 != null goto $r23 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter>;	$r23 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$(java.lang.String)>("org.apache.log4j.spi.Filter");	<org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter> = $r23;	goto [?= $r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r23, null)];	$r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r23, null);	$r22 = (org.apache.log4j.spi.Filter) $r5;	if $r22 == null goto return;	$r6 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r22);	r7 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto virtualinvoke $r6.<org.apache.log4j.config.PropertySetter: void activate()>();	virtualinvoke $r6.<org.apache.log4j.config.PropertySetter: void activate()>();	$r8 = new java.lang.StringBuffer;	specialinvoke $r8.<java.lang.StringBuffer: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding filter of type [");	$r9 = virtualinvoke $r22.<java.lang.Object: java.lang.Class getClass()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to appender named [");	$r13 = interfaceinvoke r12.<org.apache.log4j.Appender: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r17);	interfaceinvoke r12.<org.apache.log4j.Appender: void addFilter(org.apache.log4j.spi.Filter)>($r22);	return
;block_num 7