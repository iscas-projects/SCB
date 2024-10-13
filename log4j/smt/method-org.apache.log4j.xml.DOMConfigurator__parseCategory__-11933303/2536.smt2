(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1969 0)
(declare-sort var2906 0)
(declare-sort var534 0)
(declare-sort var2960 0)
(declare-sort var3837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2906_getAttribute/210607306 (var2906 String) String)
(declare-fun subst/-1514982940 (var1969 String) String)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/1183289509 (String Int) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun var534_debug/381960894 (String) void)
(declare-fun var534_error/1978659241 (String var3837) void)
(declare-fun cast-from-var2960-to-var3837 (var2960) var3837)
(declare-const null-var1969 var1969)
(declare-const null-var2906 var2906)
(declare-const null-var2960 var2960)
(declare-const var2882 var1969) ; Statement: r0 := @this: org.apache.log4j.xml.DOMConfigurator 
(assert (not (= var2882 null-var1969)))
(declare-const var2348 var2906) ; Statement: r1 := @parameter0: org.w3c.dom.Element 
(assert (not (= var2348 null-var2906)))
(define-const var503 String (var2906_getAttribute/210607306 var2348 "name")) ; Statement: $r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name") 
(assert true)
(define-const var2553 String (subst/-1514982940 var2882 var503)) ; Statement: r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2) 
(define-const var3308 String (var2906_getAttribute/210607306 var2348 "class")) ; Statement: $r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class") 
(assert true)
(define-const var260 String (subst/-1514982940 var2882 var3308)) ; Statement: r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4) 
(define-const var1773 String "") ; Statement: $r6 = "" 
(assert true)
(define-const var122 Bool (= var1773 var260)) ; Statement: $z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5) 
 ; Statement: if $z0 == 0 goto $r7 = new java.lang.StringBuffer 
(assert (= (ite var122 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1261 String String-init) ; Statement: $r7 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1261)) ; Statement: specialinvoke $r7.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1261!1 String)
(assert true)
(define-const var42 String (append/1560614132 var1261!1 "Desired logger sub-class: [")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [") 
(declare-const var1261!2 String)
(assert (str.prefixof var1261!1 var1261!2))
(assert true)
(define-const var3883 String (append/1560614132 var42 var260)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5) 
(declare-const var42!1 String)
(assert (str.prefixof var42 var42!1))
(assert true)
(define-const var717 String (append/1183289509 var3883 93)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93) 
(assert true)
(define-const var1112 String (toString/-222306083 var717)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var534_debug/381960894 var1112)) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11) 

(declare-const var1112!1 String)
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var924 var2960) ; Statement: $r30 := @caughtexception 
(assert (not (= var924 null-var2960)))
(define-const var1731 String String-init) ; Statement: $r31 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1731)) ; Statement: specialinvoke $r31.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1731!1 String)
(assert true)
(define-const var2833 String (append/1560614132 var1731!1 "Could not retrieve category [")) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [") 
(declare-const var1731!2 String)
(assert (str.prefixof var1731!1 var1731!2))
(assert true)
(define-const var1546 String (append/1560614132 var2833 var2553)) ; Statement: $r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3) 
(declare-const var2833!1 String)
(assert (str.prefixof var2833 var2833!1))
(assert true)
(define-const var52 String (append/1560614132 var1546 "]. Reported error follows.")) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.") 
(declare-const var1546!1 String)
(assert (str.prefixof var1546 var1546!1))
(assert true)
(define-const var980 String (toString/-222306083 var52)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>() 
;(assert (var534_error/1978659241 var980 (cast-from-var2960-to-var3837 var924))) ; Statement: staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r35, $r30) 

(declare-const var980!1 String)
(declare-const var924!1 var2960)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2906_getAttribute/210607306=([org.w3c.dom.Element, java.lang.String], java.lang.String), subst/-1514982940=([org.apache.log4j.xml.DOMConfigurator, java.lang.String], java.lang.String), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), append/1183289509=([java.lang.StringBuffer, char], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), var534_debug/381960894=([java.lang.String], void), var534_error/1978659241=([java.lang.String, java.lang.Throwable], void), cast-from-var2960-to-var3837=([java.lang.Exception], java.lang.Throwable)}
; {var1969=org.apache.log4j.xml.DOMConfigurator, var2882=r0, var2906=org.w3c.dom.Element, var2348=r1, var503=$r2, var2553=r3, var3308=$r4, var260=r5, var1773=$r6, var122=$z0, var1261=$r7, var42=$r8, var3883=$r9, var717=$r10, var1112=$r11, var534=org.apache.log4j.helpers.LogLog, var2960=java.lang.Exception, var924=$r30, var1731=$r31, var2833=$r32, var1546=$r33, var52=$r34, var980=$r35, var3837=java.lang.Throwable}
; {org.apache.log4j.xml.DOMConfigurator=var1969, r0=var2882, org.w3c.dom.Element=var2906, r1=var2348, $r2=var503, r3=var2553, $r4=var3308, r5=var260, $r6=var1773, $z0=var122, $r7=var1261, $r8=var42, $r9=var3883, $r10=var717, $r11=var1112, org.apache.log4j.helpers.LogLog=var534, java.lang.Exception=var2960, $r30=var924, $r31=var1731, $r32=var2833, $r33=var1546, $r34=var52, $r35=var980, java.lang.Throwable=var3837}
;seq <java.lang.String: boolean equals(java.lang.Object)>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(char)>;	<java.lang.StringBuffer: java.lang.String toString()>;	<java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1,"<java.lang.StringBuffer: void <init>()>": 2,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 5,"<java.lang.StringBuffer: java.lang.StringBuffer append(char)>": 1,"<java.lang.StringBuffer: java.lang.String toString()>": 2}
;stmts r0 := @this: org.apache.log4j.xml.DOMConfigurator;	r1 := @parameter0: org.w3c.dom.Element;	$r2 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("name");	r3 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r2);	$r4 = interfaceinvoke r1.<org.w3c.dom.Element: java.lang.String getAttribute(java.lang.String)>("class");	r5 = virtualinvoke r0.<org.apache.log4j.xml.DOMConfigurator: java.lang.String subst(java.lang.String)>($r4);	$r6 = "";	$z0 = virtualinvoke $r6.<java.lang.String: boolean equals(java.lang.Object)>(r5);	if $z0 == 0 goto $r7 = new java.lang.StringBuffer;	$r7 = new java.lang.StringBuffer;	specialinvoke $r7.<java.lang.StringBuffer: void <init>()>();	$r8 = virtualinvoke $r7.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Desired logger sub-class: [");	$r9 = virtualinvoke $r8.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r5);	$r10 = virtualinvoke $r9.<java.lang.StringBuffer: java.lang.StringBuffer append(char)>(93);	$r11 = virtualinvoke $r10.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void debug(java.lang.String)>($r11);	$r30 := @caughtexception;	$r31 = new java.lang.StringBuffer;	specialinvoke $r31.<java.lang.StringBuffer: void <init>()>();	$r32 = virtualinvoke $r31.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Could not retrieve category [");	$r33 = virtualinvoke $r32.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>(r3);	$r34 = virtualinvoke $r33.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]. Reported error follows.");	$r35 = virtualinvoke $r34.<java.lang.StringBuffer: java.lang.String toString()>();	staticinvoke <org.apache.log4j.helpers.LogLog: void error(java.lang.String,java.lang.Throwable)>($r35, $r30);	return
;block_num 3