(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3608 0)
(declare-sort var346 0)
(declare-sort var1770 0)
(declare-sort var1300 0)
(declare-sort var2765 0)
(declare-sort var1054 0)
(declare-sort var2423 0)
(declare-sort var3102 0)
(declare-sort var3730 0)
(declare-sort var1496 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var346_getAttribute/210607306 (var346 String) String)
(declare-fun subst/-1514982940 (var3608 String) String)
(declare-fun var2765_instantiateByClassName/289489540 (String ClassObject var1300) var1300)
(declare-fun cast-from-var1300-to-var1054 (var1300) var1054)
(declare-fun var2423-init () var2423)
(declare-fun <init>/638421130 (var2423 var1300) void)
(declare-fun cast-from-var1054-to-var1300 (var1054) var1300)
(declare-fun var3730_getChildNodes/-162022572 (var3730) var3102)
(declare-fun cast-from-var346-to-var3730 (var346) var3730)
(declare-fun var3102_getLength/224812497 (var3102) Int)
(declare-fun activate/1266231958 (var2423) void)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1300) ClassObject)
(declare-fun append/-143899486 (String var1300) String)
(declare-fun cast-from-ClassObject-to-var1300 (ClassObject) var1300)
(declare-fun var1770_getName/-564791716 (var1770) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1496_debug/381960894 (String) void)
(declare-fun var1770_addFilter/-905084679 (var1770 var1054) void)
(declare-const null-var3608 var3608)
(declare-const null-var346 var346)
(declare-const null-var1770 var1770)
(declare-const var3608-class$org$apache$log4j$spi$Filter ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1300 var1300)
(declare-const null-var1054 var1054)
(declare-const var735 var3608) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var735 null-var3608)))
(declare-const var226 var346) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var226 null-var346)))
(declare-const var1048 var1770) ; Statement: r12 := @parameter1: org.apache.log4j.Appender 
(assert (not (= var1048 null-var1770)))
(define-const var3578 String (var346_getAttribute/210607306 var226 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var426 String (subst/-1514982940 var735 var3578)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var290 ClassObject var3608-class$org$apache$log4j$spi$Filter) ; Statement: $r4 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter> 
 ; Statement: if $r4 != null goto $r23 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter> 
(assert (not (= var290 null-ClassObject))) ; Cond: $r4 != null 
(define-const var3532 ClassObject var3608-class$org$apache$log4j$spi$Filter) ; Statement: $r23 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter> 
(assert true) ; Non Conditional
(define-const var1864 var1300 (var2765_instantiateByClassName/289489540 var426 var3532 null-var1300)) ; Statement: $r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r23, null) 
(define-const var2014 var1054 (cast-from-var1300-to-var1054 var1864)) ; Statement: $r22 = (org.apache.log4j.spi.Filter) $r5 
 ; Statement: if $r22 == null goto return 
(assert (not (= var2014 null-var1054))) ; Negate: Cond: $r22 == null  
(define-const var1482 var2423 var2423-init) ; Statement: $r6 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var1482 (cast-from-var1054-to-var1300 var2014))) ; Statement: specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r22) 

(declare-const var1482!1 var2423)
(declare-const var2014!1 var1054)
(define-const var1103 var3102 (var3730_getChildNodes/-162022572 (cast-from-var346-to-var3730 var226))) ; Statement: r7 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var1772 Int (var3102_getLength/224812497 var1103)) ; Statement: i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var3717 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i0 goto virtualinvoke $r6.<org.apache.log4j.config.PropertySetter: void activate()>() 
(assert (>= var3717 var1772)) ; Cond: i2 >= i0 
(assert true)
;(assert (activate/1266231958 var1482!1)) ; Statement: virtualinvoke $r6.<org.apache.log4j.config.PropertySetter: void activate()>() 

(declare-const var1482!2 var2423)
(define-const var3517 String String-init) ; Statement: $r8 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3517)) ; Statement: specialinvoke $r8.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3517!1 String)
(assert true)
(define-const var2246 String (append/1560614132 var3517!1 "Adding filter of type [")) ; Statement: $r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding filter of type [") 
(declare-const var3517!2 String)
(assert (str.prefixof var3517!1 var3517!2))
(assert true)
(define-const var2470 ClassObject (getClass/1258963082 (cast-from-var1054-to-var1300 var2014!1))) ; Statement: $r9 = virtualinvoke $r22.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2007 String (append/-143899486 var2246 (cast-from-ClassObject-to-var1300 var2470))) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r9) 
(assert true)
(define-const var924 String (append/1560614132 var2007 "] to appender named [")) ; Statement: $r14 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to appender named [") 
(declare-const var2007!1 String)
(assert (str.prefixof var2007 var2007!1))
(define-const var2577 String (var1770_getName/-564791716 var1048)) ; Statement: $r13 = interfaceinvoke r12.<org.apache.log4j.Appender: java.lang.String getName()>() 
(assert true)
(define-const var1965 String (append/1560614132 var924 var2577)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r13) 
(declare-const var924!1 String)
(assert (str.prefixof var924 var924!1))
(assert true)
(define-const var1295 String (append/1560614132 var1965 "].")) ; Statement: $r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].") 
(declare-const var1965!1 String)
(assert (str.prefixof var1965 var1965!1))
(assert true)
(define-const var895 String (toString/-222306083 var1295)) ; Statement: $r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1496_debug/381960894 var895)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r17) 

(declare-const var895!1 String)
;(assert (var1770_addFilter/-905084679 var1048 var2014!1)) ; Statement: interfaceinvoke r12.<org.apache.log4j.Appender: void addFilter(org.apache.log4j.spi.Filter)>($r22) 

(declare-const var1048!1 var1770)
(declare-const var2014!2 var1054)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var346_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), var2765_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), cast-from-var1300-to-var1054=([java.lang.Object], org.apache.log4j.spi.Filter), var2423-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), cast-from-var1054-to-var1300=([org.apache.log4j.spi.Filter], java.lang.Object), var3730_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var346-to-var3730=([org.w3c.dom.Element], org.w3c.dom.Node), var3102_getLength/224812497=([org.w3c.dom.NodeList], int), activate/1266231958=([org.apache.log4j.config.PropertySetter], void), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), getClass/1258963082=([java.lang.Object], java.lang.Class), append/-143899486=([java.lang.StringBuffer, java.lang.Object], java.lang.StringBuffer), cast-from-ClassObject-to-var1300=([java.lang.Class], java.lang.Object), var1770_getName/-564791716=([org.apache.log4j.Appender], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1496_debug/381960894=([java.lang.String], void), var1770_addFilter/-905084679=([org.apache.log4j.Appender, org.apache.log4j.spi.Filter], void)}
; {var3608=org.apache.log4j.xml.DOMConfigurator, var735=r0, var346=org.w3c.dom.Element, var226=r1, var1770=org.apache.log4j.Appender, var1048=r12, var3578=$r2, var426=r3, var290=$r4, var3532=$r23, var1300=java.lang.Object, var2765=org.apache.log4j.helpers.OptionConverter, var1864=$r5, var1054=org.apache.log4j.spi.Filter, var2014=$r22, var2423=org.apache.log4j.config.PropertySetter, var1482=$r6, var3102=org.w3c.dom.NodeList, var3730=org.w3c.dom.Node, var1103=r7, var1772=i0, var3717=i2, var3517=$r8, var2246=$r10, var2470=$r9, var2007=$r11, var924=$r14, var2577=$r13, var1965=$r15, var1295=$r16, var895=$r17, var1496=org.apache.log4j.helpers.LogLog}
; {org.apache.log4j.xml.DOMConfigurator=var3608, r0=var735, org.w3c.dom.Element=var346, r1=var226, org.apache.log4j.Appender=var1770, r12=var1048, $r2=var3578, r3=var426, $r4=var290, $r23=var3532, java.lang.Object=var1300, org.apache.log4j.helpers.OptionConverter=var2765, $r5=var1864, org.apache.log4j.spi.Filter=var1054, $r22=var2014, org.apache.log4j.config.PropertySetter=var2423, $r6=var1482, org.w3c.dom.NodeList=var3102, org.w3c.dom.Node=var3730, r7=var1103, i0=var1772, i2=var3717, $r8=var3517, $r10=var2246, $r9=var2470, $r11=var2007, $r14=var924, $r13=var2577, $r15=var1965, $r16=var1295, $r17=var895, org.apache.log4j.helpers.LogLog=var1496}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 4,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	r12 := @parameter1: org.apache.log4j.Appender;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter>;	if $r4 != null goto $r23 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter>;	$r23 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$Filter>;	$r5 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r23, null);	$r22 = (org.apache.log4j.spi.Filter) $r5;	if $r22 == null goto return;	$r6 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r6.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r22);	r7 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	i0 = interfaceinvoke r7.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= i0 goto virtualinvoke $r6.<org.apache.log4j.config.PropertySetter: void activate()>();	virtualinvoke $r6.<org.apache.log4j.config.PropertySetter: void activate()>();	$r8 = new java.lang.StringBuffer;	specialinvoke $r8.<java.lang.StringBuffer: void <init>()>();	$r10 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Adding filter of type [");	$r9 = virtualinvoke $r22.<java.lang.Object: java.lang.Class getClass()>();	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.Object)>($r9);	$r14 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("] to appender named [");	$r13 = interfaceinvoke r12.<org.apache.log4j.Appender: java.lang.String getName()>();	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r13);	$r16 = virtualinvoke $r15.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("].");	$r17 = virtualinvoke $r16.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r17);	interfaceinvoke r12.<org.apache.log4j.Appender: void addFilter(org.apache.log4j.spi.Filter)>($r22);	return
;block_num 7