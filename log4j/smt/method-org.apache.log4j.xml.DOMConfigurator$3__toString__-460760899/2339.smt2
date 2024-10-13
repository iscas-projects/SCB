(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1016 0)
(declare-sort var3507 0)
(declare-sort var1489 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$inputStream/-1728311579 (var1016) var3507)
(declare-fun toString/-522406933 (var1489) String)
(declare-fun cast-from-var3507-to-var1489 (var3507) var1489)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var1016 var1016)
(declare-const var3139 var1016) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator$3 
(assert (not (= var3139 null-var1016)))
(define-const var3974 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var3974)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var3974!1 String)
(assert true)
(define-const var148 String (append/1560614132 var3974!1 "input stream [")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("input stream [") 
(declare-const var3974!2 String)
(assert (str.prefixof var3974!1 var3974!2))
(define-const var3751 var3507 (val$inputStream/-1728311579 var3139)) ; Statement: $r2 = r1.<org.apache.log4j.xml.DOMConfigurator$3: java.io.InputStream val$inputStream> 
(assert true)
(define-const var3787 String (toString/-522406933 (cast-from-var3507-to-var1489 var3751))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var458 String (append/1560614132 var148 var3787)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var148!1 String)
(assert (str.prefixof var148 var148!1))
(assert true)
(define-const var1220 String (append/1560614132 var458 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var458!1 String)
(assert (str.prefixof var458 var458!1))
(assert true)
(define-const var2469 String (toString/-222306083 var1220)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), val$inputStream/-1728311579=([org.apache.log4j.xml.DOMConfigurator$3], java.io.InputStream), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3507-to-var1489=([java.io.InputStream], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var1016=org.apache.log4j.xml.DOMConfigurator$3, var3139=r1, var3974=$r0, var148=$r4, var3507=java.io.InputStream, var3751=$r2, var1489=java.lang.Object, var3787=$r3, var458=$r5, var1220=$r6, var2469=$r7}
; {org.apache.log4j.xml.DOMConfigurator$3=var1016, r1=var3139, $r0=var3974, $r4=var148, java.io.InputStream=var3507, $r2=var3751, java.lang.Object=var1489, $r3=var3787, $r5=var458, $r6=var1220, $r7=var2469}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator$3;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("input stream [");	$r2 = r1.<org.apache.log4j.xml.DOMConfigurator$3: java.io.InputStream val$inputStream>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	return $r7
;block_num 1