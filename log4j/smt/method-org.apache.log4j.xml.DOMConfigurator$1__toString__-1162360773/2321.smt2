(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3235 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$filename/-1728311581 (var3235) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var3235 var3235)
(declare-const var3731 var3235) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator$1 
(assert (not (= var3731 null-var3235)))
(define-const var3202 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3202)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3202!1 String)
(assert true)
(define-const var2200 String (append/1560614132 var3202!1 "file [")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("file [") 
(declare-const var3202!2 String)
(assert (str.prefixof var3202!1 var3202!2))
(define-const var770 String (val$filename/-1728311581 var3731)) ; Statement: $r2 = r1.<org.apache.log4j.xml.DOMConfigurator$1: java.lang.String val$filename> 
(assert true)
(define-const var2896 String (append/1560614132 var2200 var770)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var2200!1 String)
(assert (str.prefixof var2200 var2200!1))
(assert true)
(define-const var518 String (append/1560614132 var2896 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var2896!1 String)
(assert (str.prefixof var2896 var2896!1))
(assert true)
(define-const var1104 String (toString/-222306083 var518)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), val$filename/-1728311581=([org.apache.log4j.xml.DOMConfigurator$1], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var3235=org.apache.log4j.xml.DOMConfigurator$1, var3731=r1, var3202=$r0, var2200=$r3, var770=$r2, var2896=$r4, var518=$r5, var1104=$r6}
; {org.apache.log4j.xml.DOMConfigurator$1=var3235, r1=var3731, $r0=var3202, $r3=var2200, $r2=var770, $r4=var2896, $r5=var518, $r6=var1104}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator$1;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("file [");	$r2 = r1.<org.apache.log4j.xml.DOMConfigurator$1: java.lang.String val$filename>;	$r4 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.String toString()>();	return $r6
;block_num 1