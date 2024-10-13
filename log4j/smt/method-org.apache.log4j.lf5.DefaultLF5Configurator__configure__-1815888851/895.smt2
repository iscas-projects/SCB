(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1140 0)
(declare-sort var1141 0)
(declare-sort var3599 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1140_class$/1066606404 (String) ClassObject)
(declare-fun getResource/413390302 (ClassObject String) var1141)
(declare-fun var3599-init () var3599)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3599 String) void)
(declare-const var1140-class$org$apache$log4j$lf5$DefaultLF5Configurator ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var1141 var1141)
(define-const var1127 ClassObject var1140-class$org$apache$log4j$lf5$DefaultLF5Configurator) ; Statement: $r0 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator> 
 ; Statement: if $r0 != null goto $r7 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator> 
(assert (not (not (= var1127 null-ClassObject)))) ; Negate: Cond: $r0 != null  
(define-const var1157 ClassObject (var1140_class$/1066606404 "org.apache.log4j.lf5.DefaultLF5Configurator")) ; Statement: $r7 = staticinvoke <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$(java.lang.String)>("org.apache.log4j.lf5.DefaultLF5Configurator") 
(define-const var3272 ClassObject var1157) ; Statement: <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator> = $r7 
 ; Statement: goto [?= $r6 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties")] 
(assert true) ; Non Conditional
(assert true)
(define-const var2514 var1141 (getResource/413390302 var1157 "/org/apache/log4j/lf5/config/defaultconfig.properties")) ; Statement: $r6 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties") 
 ; Statement: if $r6 == null goto $r1 = new java.io.IOException 
(assert (= var2514 null-var1141)) ; Cond: $r6 == null 
(define-const var1485 var3599 var3599-init) ; Statement: $r1 = new java.io.IOException 
(define-const var2868 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var2868)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var2868!1 String)
(assert true)
(define-const var2168 String (append/1560614132 var2868!1 "Error: Unable to open the resource")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error: Unable to open the resource") 
(declare-const var2868!2 String)
(assert (str.prefixof var2868!1 var2868!2))
(assert true)
(define-const var3490 String (append/1560614132 var2168 "/org/apache/log4j/lf5/config/defaultconfig.properties")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties") 
(declare-const var2168!1 String)
(assert (str.prefixof var2168 var2168!1))
(assert true)
(define-const var2733 String (toString/-222306083 var3490)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var1485 var2733)) ; Statement: specialinvoke $r1.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var1485!1 var3599)
(declare-const var2733!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var1140_class$/1066606404=([java.lang.String], java.lang.Class), getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), var3599-init=([], java.io.IOException), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var1140=org.apache.log4j.lf5.DefaultLF5Configurator, var1127=$r0, var1157=$r7, var3272=<org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator>, var1141=java.net.URL, var2514=$r6, var3599=java.io.IOException, var1485=$r1, var2868=$r2, var2168=$r3, var3490=$r4, var2733=$r5}
; {org.apache.log4j.lf5.DefaultLF5Configurator=var1140, $r0=var1127, $r7=var1157, <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator>=var3272, java.net.URL=var1141, $r6=var2514, java.io.IOException=var3599, $r1=var1485, $r2=var2868, $r3=var2168, $r4=var3490, $r5=var2733}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts $r0 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator>;	if $r0 != null goto $r7 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator>;	$r7 = staticinvoke <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$(java.lang.String)>("org.apache.log4j.lf5.DefaultLF5Configurator");	<org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator> = $r7;	goto [?= $r6 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties")];	$r6 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties");	if $r6 == null goto $r1 = new java.io.IOException;	$r1 = new java.io.IOException;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error: Unable to open the resource");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r1.<java.io.IOException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 4