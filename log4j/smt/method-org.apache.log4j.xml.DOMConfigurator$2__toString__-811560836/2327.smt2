(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var971 0)
(declare-sort var1363 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$url/-1728311580 (var971) var1363)
(declare-fun toString/-1839352374 (var1363) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var971 var971)
(declare-const var3127 var971) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator$2 
(assert (not (= var3127 null-var971)))
(define-const var1057 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1057)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1057!1 String)
(assert true)
(define-const var3211 String (append/1560614132 var1057!1 "url [")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("url [") 
(declare-const var1057!2 String)
(assert (str.prefixof var1057!1 var1057!2))
(define-const var1413 var1363 (val$url/-1728311580 var3127)) ; Statement: $r2 = r1.<org.apache.log4j.xml.DOMConfigurator$2: java.net.URL val$url> 
(assert true)
(define-const var1809 String (toString/-1839352374 var1413)) ; Statement: $r3 = virtualinvoke $r2.<java.net.URL: java.lang.String toString()>() 
(assert true)
(define-const var3596 String (append/1560614132 var3211 var1809)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var3211!1 String)
(assert (str.prefixof var3211 var3211!1))
(assert true)
(define-const var3778 String (append/1560614132 var3596 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var3596!1 String)
(assert (str.prefixof var3596 var3596!1))
(assert true)
(define-const var2785 String (toString/-222306083 var3778)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), val$url/-1728311580=([org.apache.log4j.xml.DOMConfigurator$2], java.net.URL), toString/-1839352374=([java.net.URL], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var971=org.apache.log4j.xml.DOMConfigurator$2, var3127=r1, var1057=$r0, var3211=$r4, var1363=java.net.URL, var1413=$r2, var1809=$r3, var3596=$r5, var3778=$r6, var2785=$r7}
; {org.apache.log4j.xml.DOMConfigurator$2=var971, r1=var3127, $r0=var1057, $r4=var3211, java.net.URL=var1363, $r2=var1413, $r3=var1809, $r5=var3596, $r6=var3778, $r7=var2785}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.net.URL: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator$2;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("url [");	$r2 = r1.<org.apache.log4j.xml.DOMConfigurator$2: java.net.URL val$url>;	$r3 = virtualinvoke $r2.<java.net.URL: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	return $r7
;block_num 1