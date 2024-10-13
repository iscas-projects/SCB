(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1834 0)
(declare-sort var2795 0)
(declare-sort var2774 0)
(declare-sort var11 0)
(declare-sort var1798 0)
(declare-sort var854 0)
(declare-sort var3886 0)
(declare-sort var1876 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2795_getAttribute/210607306 (var2795 String) String)
(declare-fun subst/-1514982940 (var1834 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var2774_debug/381960894 (String) void)
(declare-fun var1834_class$/200565026 (String) ClassObject)
(declare-fun var1798_instantiateByClassName/289489540 (String ClassObject var11) var11)
(declare-fun var2774_error/-402343703 (String) void)
(declare-fun var854-init () var854)
(declare-fun <init>/638421130 (var854 var11) void)
(declare-fun var1876_getChildNodes/-162022572 (var1876) var3886)
(declare-fun cast-from-var2795-to-var1876 (var2795) var1876)
(declare-fun var3886_getLength/224812497 (var3886) Int)
(declare-const null-var1834 var1834)
(declare-const null-var2795 var2795)
(declare-const var1834-class$org$apache$log4j$spi$LoggerFactory ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var11 var11)
(declare-const var333 var1834) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var333 null-var1834)))
(declare-const var2912 var2795) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2912 null-var2795)))
(define-const var642 String (var2795_getAttribute/210607306 var2912 "class")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var1962 String (subst/-1514982940 var333 var642)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var1892 String "") ; Statement: $r4 = "" 
(assert true)
(define-const var1695 Bool (= var1892 var1962)) ; Statement: $z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3) 
 ; Statement: if $z0 == 0 goto $r5 = new java.lang.StringBuffer 
(assert (= (ite var1695 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1439 String String-init) ; Statement: $r5 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1439)) ; Statement: specialinvoke $r5.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1439!1 String)
(assert true)
(define-const var933 String (append/1560614132 var1439!1 "Desired category factory: [")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired category factory: [") 
(declare-const var1439!2 String)
(assert (str.prefixof var1439!1 var1439!2))
(assert true)
(define-const var211 String (append/1560614132 var933 var1962)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var933!1 String)
(assert (str.prefixof var933 var933!1))
(assert true)
(define-const var3819 String (append/1183289509 var211 93)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var335 String (toString/-222306083 var3819)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2774_debug/381960894 var335)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r9) 

(declare-const var335!1 String)
(define-const var2940 ClassObject var1834-class$org$apache$log4j$spi$LoggerFactory) ; Statement: $r10 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
 ; Statement: if $r10 != null goto $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> 
(assert (not (not (= var2940 null-ClassObject)))) ; Negate: Cond: $r10 != null  
(define-const var1785 ClassObject (var1834_class$/200565026 "org.apache.log4j.spi.LoggerFactory")) ; Statement: $r22 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$(java.lang.String)>("org.apache.log4j.spi.LoggerFactory") 
(define-const var1714 ClassObject var1785) ; Statement: <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> = $r22 
 ; Statement: goto [?= $r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null)] 
(assert true) ; Non Conditional
(define-const var855 var11 (var1798_instantiateByClassName/289489540 var1962 var1785 null-var11)) ; Statement: $r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null) 
(define-const var1827 Bool false) ; Statement: $z1 = $r21 instanceof org.apache.log4j.spi.LoggerFactory 
 ; Statement: if $z1 == 0 goto $r11 = new java.lang.StringBuffer 
(assert (= (ite var1827 1 0) 0)) ; Cond: $z1 == 0 
(define-const var640 String String-init) ; Statement: $r11 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var640)) ; Statement: specialinvoke $r11.<java.lang.StringBuffer: void <init>()>() 

(declare-const var640!1 String)
(assert true)
(define-const var3098 String (append/1560614132 var640!1 "Category Factory class ")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Category Factory class ") 
(declare-const var640!2 String)
(assert (str.prefixof var640!1 var640!2))
(assert true)
(define-const var3587 String (append/1560614132 var3098 var1962)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var3098!1 String)
(assert (str.prefixof var3098 var3098!1))
(assert true)
(define-const var3466 String (append/1560614132 var3587 " does not implement org.apache.log4j.LoggerFactory")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" does not implement org.apache.log4j.LoggerFactory") 
(declare-const var3587!1 String)
(assert (str.prefixof var3587 var3587!1))
(assert true)
(define-const var3646 String (toString/-222306083 var3466)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var2774_error/-402343703 var3646)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r15) 

(declare-const var3646!1 String)
(assert true) ; Non Conditional
(define-const var1735 var854 var854-init) ; Statement: $r16 = new org.apache.log4j.config.PropertySetter 
(assert true)
;(assert (<init>/638421130 var1735 var855)) ; Statement: specialinvoke $r16.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r21) 

(declare-const var1735!1 var854)
(declare-const var855!1 var11)
(define-const var3477 var3886 (var1876_getChildNodes/-162022572 (cast-from-var2795-to-var1876 var2912))) ; Statement: $r20 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>() 
(define-const var1702 Int (var3886_getLength/224812497 var3477)) ; Statement: $i1 = interfaceinvoke $r20.<org.w3c.dom.NodeList: int getLength()>() 
(define-const var956 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= $i1 goto return 
(assert (>= var956 var1702)) ; Cond: i2 >= $i1 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2795_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var2774_debug/381960894=([java.lang.String], void), var1834_class$/200565026=([java.lang.String], java.lang.Class), var1798_instantiateByClassName/289489540=([java.lang.String, java.lang.Class, java.lang.Object], java.lang.Object), var2774_error/-402343703=([java.lang.String], void), var854-init=([], org.apache.log4j.config.PropertySetter), <init>/638421130=([org.apache.log4j.config.PropertySetter, java.lang.Object], void), var1876_getChildNodes/-162022572=([org.w3c.dom.Node], org.w3c.dom.NodeList), cast-from-var2795-to-var1876=([org.w3c.dom.Element], org.w3c.dom.Node), var3886_getLength/224812497=([org.w3c.dom.NodeList], int)}
; {var1834=org.apache.log4j.xml.DOMConfigurator, var333=r0, var2795=org.w3c.dom.Element, var2912=r1, var642=$r2, var1962=r3, var1892=$r4, var1695=$z0, var1439=$r5, var933=$r6, var211=$r7, var3819=$r8, var335=$r9, var2774=org.apache.log4j.helpers.LogLog, var2940=$r10, var1785=$r22, var1714=<org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>, var11=java.lang.Object, var1798=org.apache.log4j.helpers.OptionConverter, var855=$r21, var1827=$z1, var640=$r11, var3098=$r12, var3587=$r13, var3466=$r14, var3646=$r15, var854=org.apache.log4j.config.PropertySetter, var1735=$r16, var3886=org.w3c.dom.NodeList, var1876=org.w3c.dom.Node, var3477=$r20, var1702=$i1, var956=i2}
; {org.apache.log4j.xml.DOMConfigurator=var1834, r0=var333, org.w3c.dom.Element=var2795, r1=var2912, $r2=var642, r3=var1962, $r4=var1892, $z0=var1695, $r5=var1439, $r6=var933, $r7=var211, $r8=var3819, $r9=var335, org.apache.log4j.helpers.LogLog=var2774, $r10=var2940, $r22=var1785, <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>=var1714, java.lang.Object=var11, org.apache.log4j.helpers.OptionConverter=var1798, $r21=var855, $z1=var1827, $r11=var640, $r12=var3098, $r13=var3587, $r14=var3466, $r15=var3646, org.apache.log4j.config.PropertySetter=var854, $r16=var1735, org.w3c.dom.NodeList=var3886, org.w3c.dom.Node=var1876, $r20=var3477, $i1=var1702, i2=var956}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = "";	$z0 = virtualinvoke $r4.<java.lang.String: boolean equals(java.lang.Object)>(r3);	if $z0 == 0 goto $r5 = new java.lang.StringBuffer;	$r5 = new java.lang.StringBuffer;	specialinvoke $r5.<java.lang.StringBuffer: void <init>()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired category factory: [");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r9);	$r10 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	if $r10 != null goto $r22 = <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory>;	$r22 = staticinvoke <org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$(java.lang.String)>("org.apache.log4j.spi.LoggerFactory");	<org.apache.log4j.xml.DOMConfigurator: java.lang.Class class$org$apache$log4j$spi$LoggerFactory> = $r22;	goto [?= $r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null)];	$r21 = staticinvoke <org.apache.log4j.helpers.OptionConverter: java.lang.Object instantiateByClassName(java.lang.String,java.lang.Class,java.lang.Object)>(r3, $r22, null);	$z1 = $r21 instanceof org.apache.log4j.spi.LoggerFactory;	if $z1 == 0 goto $r11 = new java.lang.StringBuffer;	$r11 = new java.lang.StringBuffer;	specialinvoke $r11.<java.lang.StringBuffer: void <init>()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Category Factory class ");	$r13 = virtualinvoke $r12.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r14 = virtualinvoke $r13.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(" does not implement org.apache.log4j.LoggerFactory");	$r15 = virtualinvoke $r14.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String)>($r15);	$r16 = new org.apache.log4j.config.PropertySetter;	specialinvoke $r16.<org.apache.log4j.config.PropertySetter: void <init>(java.lang.Object)>($r21);	$r20 = interfaceinvoke r1.<org.w3c.dom.Element: org.w3c.dom.NodeList getChildNodes()>();	$i1 = interfaceinvoke $r20.<org.w3c.dom.NodeList: int getLength()>();	i2 = 0;	if i2 >= $i1 goto return;	return
;block_num 8