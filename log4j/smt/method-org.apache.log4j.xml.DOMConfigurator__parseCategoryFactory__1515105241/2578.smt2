(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3058 0)
(declare-sort var2850 0)
(declare-sort var1137 0)
(declare-sort var2112 0)
(declare-sort var3274 0)
(declare-sort var1229 0)
(declare-sort var1481 0)
(declare-sort var84 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2850_getAttribute/210607306 (var2850 String) String)
(declare-fun subst/-1514982940 (var3058 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var1137_debug/381960894 (String) void)
(declare-fun var3274_instantiateByClassName/289489540 (String ClassObject var2112) var2112)
(declare-fun var1137_error/-402343703 (String) void)
(declare-fun var1229-init () var1229)
(declare-fun <init>/638421130 (var1229 var2112) void)
(declare-fun var84_getChildNodes/-162022572 (var84) var1481)
(declare-fun cast-from-var2850-to-var84 (var2850) var84)
(declare-fun var1481_getLength/224812497 (var1481) Int)
(declare-const null-var3058 var3058)
(declare-const null-var2850 var2850)
(declare-const var3058-class$org$apache$log4j$spi$LoggerFactory ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2112 var2112)
(declare-const var2973 var3058) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var2973 null-var3058)))
(declare-const var119 var2850) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var119 null-var2850)))
(define-const var3443 String (var2850_getAttribute/210607306 var119 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var2748 String (subst/-1514982940 var2973 var3443)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var2232 String "") ; Statement: $r4 = "" 
(assert true)
(define-const var983 Bool (= var2232 var2748)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r5 = new java.lang.StringBuffer 
(assert (= (ite var983 1 0) 0)) ; Cond: $z0 == 0 
(define-const var891 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var891)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var891!1 String)
(assert true)
(define-const var2963 String (append/1560614132 var891!1 "Desired category factory: [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired category factory: [") 
(declare-const var891!2 String)
(assert (str.prefixof var891!1 var891!2))
(assert true)
(define-const var3384 String (append/1560614132 var2963 var2748)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var2963!1 String)
(assert (str.prefixof var2963 var2963!1))
(assert true)
(define-const var2833 String (append/1183289509 var3384 93)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var3820 String (toString/-222306083 var2833)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1137_debug/381960894 var3820)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r9) 

(declare-const var3820!1 String)
(define-const var3453 ClassObject var3058-class$org$apache$log4j$spi$LoggerFactory) ; Statement: $r10 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
 ; Statement: if $r10 != null goto $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
(assert (not (= var3453 null-ClassObject))) ; Cond: $r10 != null 
(define-const var2796 ClassObject var3058-class$org$apache$log4j$spi$LoggerFactory) ; Statement: $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
(assert true) ; Non Conditional
(define-const var1868 var2112 (var3274_instantiateByClassName/289489540 var2748 var2796 null-var2112)) ; Statement: $r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null) 
(define-const var2779 Bool false) ; Statement: $z1 = $r21 instanceof org.apache.log4j.spi.LoggerFactory 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuffer 
(assert (= (ite var2779 1 0) 0)) ; Cond: $z1 == 0 
(define-const var3809 String String-init) ; Statement: $r11 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3809)) ; Statement: specialinvoke $r11.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3809!1 String)
(assert true)
(define-const var1928 String (append/1560614132 var3809!1 "Category Factory class ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Category Factory class ") 
(declare-const var3809!2 String)
(assert (str.prefixof var3809!1 var3809!2))
(assert true)
(define-const var1807 String (append/1560614132 var1928 var2748)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var1928!1 String)
(assert (str.prefixof var1928 var1928!1))
(assert true)
(define-const var2885 String (append/1560614132 var1807 " does not implement org.apache.log4j.LoggerFactory")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" does not implement org.apache.log4j.LoggerFactory") 
(declare-const var1807!1 String)
(assert (str.prefixof var1807 var1807!1))
(assert true)
(define-const var192 String (toString/-222306083 var2885)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var1137_error/-402343703 var192)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r15) 

(declare-const var192!1 String)
(assert true) ; Non Conditional
(define-const var907 var1229 var1229-init) ; Statement: $r16 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var907 var1868)) ; Statement: specialinvoke $r16.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r21) 

(declare-const var907!1 var1229)
(declare-const var1868!1 var2112)
(define-const var2165 var1481 (var84_getChildNodes/-162022572 (cast-from-var2850-to-var84 var119))) ; Statement: $r20 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var1939 Int (var1481_getLength/224812497 var2165)) ; Statement: $i1 = interfaceinvoke $r20.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var1302 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto return 
(assert (>= var1302 var1939)) ; Cond: i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2850_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var1137_debug/381960894=([java.lang.String], void), var3274_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), var1137_error/-402343703=([java.lang.String], void), var1229-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var84_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var2850-to-var84=([org.w3c.dom.Element], org.w3c.dom.Node), var1481_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var3058=org.apache.log4j.xml.DOMConfigurator, var2973=r0, var2850=org.w3c.dom.Element, var119=r1, var3443=$r2, var2748=r3, var2232=$r4, var983=$z0, var891=$r5, var2963=$r6, var3384=$r7, var2833=$r8, var3820=$r9, var1137=org.apache.log4j.helpers.LogLog, var3453=$r10, var2796=$r22, var2112=java.lang.Object, var3274=org.apache.log4j.helpers.OptionConverter, var1868=$r21, var2779=$z1, var3809=$r11, var1928=$r12, var1807=$r13, var2885=$r14, var192=$r15, var1229=org.apache.log4j.config.PropertySetter, var907=$r16, var1481=org.w3c.dom.NodeList, var84=org.w3c.dom.Node, var2165=$r20, var1939=$i1, var1302=i2}
; {org.apache.log4j.xml.DOMConfigurator=var3058, r0=var2973, org.w3c.dom.Element=var2850, r1=var119, $r2=var3443, r3=var2748, $r4=var2232, $z0=var983, $r5=var891, $r6=var2963, $r7=var3384, $r8=var2833, $r9=var3820, org.apache.log4j.helpers.LogLog=var1137, $r10=var3453, $r22=var2796, java.lang.Object=var2112, org.apache.log4j.helpers.OptionConverter=var3274, $r21=var1868, $z1=var2779, $r11=var3809, $r12=var1928, $r13=var1807, $r14=var2885, $r15=var192, org.apache.log4j.config.PropertySetter=var1229, $r16=var907, org.w3c.dom.NodeList=var1481, org.w3c.dom.Node=var84, $r20=var2165, $i1=var1939, i2=var1302}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = "";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $r5 = new java.lang.StringBuffer;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired category factory: [");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r9);	$r10 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	if $r10 != null goto $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	$r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	$r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null);	$z1 = $r21 instanceof org.apache.log4j.spi.LoggerFactory;	if $z1 == 0 goto $r11 = new java.lang.StringBuffer;	$r11 = new java.lang.StringBuffer;	specialinvoke $r11.<java.lang.StringBuffer: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Category Factory class ");	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" does not implement org.apache.log4j.LoggerFactory");	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r15);	$r16 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r16.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r21);	$r20 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i1 = interfaceinvoke $r20.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= $i1 goto return;	return
;block_num 8