(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var373 0)
(declare-sort var2637 0)
(declare-sort var3893 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getResource/413390302 (ClassObject String) var2637)
(declare-fun var3893-init () var3893)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-222306083 ((s String)) String s)
(declare-fun <init>/-1557872005 (var3893 String) void)
(declare-const var373-class$org$apache$log4j$lf5$DefaultLF5Configurator ClassObject)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2637 var2637)
(define-const var2567 ClassObject var373-class$org$apache$log4j$lf5$DefaultLF5Configurator) ; Statement: $r0 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator> 
 ; Statement: if $r0 != null goto $r7 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator> 
(assert (not (= var2567 null-ClassObject))) ; Cond: $r0 != null 
(define-const var3154 ClassObject var373-class$org$apache$log4j$lf5$DefaultLF5Configurator) ; Statement: $r7 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator> 
(assert true) ; Non Conditional
(assert true)
(define-const var1178 var2637 (getResource/413390302 var3154 "/org/apache/log4j/lf5/config/defaultconfig.properties")) ; Statement: $r6 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties") 
 ; Statement: if $r6 == null goto $r1 = new java.io.IOException 
(assert (= var1178 null-var2637)) ; Cond: $r6 == null 
(define-const var3375 var3893 var3893-init) ; Statement: $r1 = new java.io.IOException 
(define-const var689 String String-init) ; Statement: $r2 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var689)) ; Statement: specialinvoke $r2.<java.lang.StringBuffer: void <init>()>() 

(declare-const var689!1 String)
(assert true)
(define-const var3535 String (append/1560614132 var689!1 "Error: Unable to open the resource")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error: Unable to open the resource") 
(declare-const var689!2 String)
(assert (str.prefixof var689!1 var689!2))
(assert true)
(define-const var3788 String (append/1560614132 var3535 "/org/apache/log4j/lf5/config/defaultconfig.properties")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties") 
(declare-const var3535!1 String)
(assert (str.prefixof var3535 var3535!1))
(assert true)
(define-const var1218 String (toString/-222306083 var3788)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1557872005 var3375 var1218)) ; Statement: specialinvoke $r1.<java.io.IOException: void <init>(java.lang.String)>($r5) 

(declare-const var3375!1 var3893)
(declare-const var1218!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {getResource/413390302=([java.lang.Class, java.lang.String], java.net.URL), var3893-init=([], java.io.IOException), String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), toString/-222306083=([java.lang.StringBuffer], java.lang.String), <init>/-1557872005=([java.io.IOException, java.lang.String], void)}
; {var373=org.apache.log4j.lf5.DefaultLF5Configurator, var2567=$r0, var3154=$r7, var2637=java.net.URL, var1178=$r6, var3893=java.io.IOException, var3375=$r1, var689=$r2, var3535=$r3, var3788=$r4, var1218=$r5}
; {org.apache.log4j.lf5.DefaultLF5Configurator=var373, $r0=var2567, $r7=var3154, java.net.URL=var2637, $r6=var1178, java.io.IOException=var3893, $r1=var3375, $r2=var689, $r3=var3535, $r4=var3788, $r5=var1218}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 2,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts $r0 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator>;	if $r0 != null goto $r7 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator>;	$r7 = <org.apache.log4j.lf5.DefaultLF5Configurator: java.lang.Class class$org$apache$log4j$lf5$DefaultLF5Configurator>;	$r6 = virtualinvoke $r7.<java.lang.Class: java.net.URL getResource(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties");	if $r6 == null goto $r1 = new java.io.IOException;	$r1 = new java.io.IOException;	$r2 = new java.lang.StringBuffer;	specialinvoke $r2.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r2.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("Error: Unable to open the resource");	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("/org/apache/log4j/lf5/config/defaultconfig.properties");	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.String toString()>();	specialinvoke $r1.<java.io.IOException: void <init>(java.lang.String)>($r5);	throw $r1
;block_num 4