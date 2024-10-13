(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2824 0)
(declare-sort var3791 0)
(declare-sort var3531 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun val$inputSource/-1728311577 (var2824) var3791)
(declare-fun toString/-522406933 (var3531) String)
(declare-fun cast-from-var3791-to-var3531 (var3791) var3531)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2824 var2824)
(declare-const var3826 var2824) ; Statement: r1 := @this: org.apache.log4j.xml.DOMConfigurator$5 
(assert (not (= var3826 null-var2824)))
(define-const var1136 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1136)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1136!1 String)
(assert true)
(define-const var721 String (append/1560614132 var1136!1 "input source [")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("input source [") 
(declare-const var1136!2 String)
(assert (str.prefixof var1136!1 var1136!2))
(define-const var487 var3791 (val$inputSource/-1728311577 var3826)) ; Statement: $r2 = r1.<org.apache.log4j.xml.DOMConfigurator$5: org.xml.sax.InputSource val$inputSource> 
(assert true)
(define-const var1976 String (toString/-522406933 (cast-from-var3791-to-var3531 var487))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var166 String (append/1560614132 var721 var1976)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3) 
(declare-const var721!1 String)
(assert (str.prefixof var721 var721!1))
(assert true)
(define-const var254 String (append/1560614132 var166 "]")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]") 
(declare-const var166!1 String)
(assert (str.prefixof var166 var166!1))
(assert true)
(define-const var327 String (toString/-222306083 var254)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), val$inputSource/-1728311577=([org.apache.log4j.xml.DOMConfigurator$5], org.xml.sax.InputSource), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var3791-to-var3531=([org.xml.sax.InputSource], java.lang.Object), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2824=org.apache.log4j.xml.DOMConfigurator$5, var3826=r1, var1136=$r0, var721=$r4, var3791=org.xml.sax.InputSource, var487=$r2, var3531=java.lang.Object, var1976=$r3, var166=$r5, var254=$r6, var327=$r7}
; {org.apache.log4j.xml.DOMConfigurator$5=var2824, r1=var3826, $r0=var1136, $r4=var721, org.xml.sax.InputSource=var3791, $r2=var487, java.lang.Object=var3531, $r3=var1976, $r5=var166, $r6=var254, $r7=var327}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.xml.DOMConfigurator$5;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("input source [");	$r2 = r1.<org.apache.log4j.xml.DOMConfigurator$5: org.xml.sax.InputSource val$inputSource>;	$r3 = virtualinvoke $r2.<java.lang.Object: java.lang.String toString()>();	$r5 = virtualinvoke $r4.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("]");	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	return $r7
;block_num 1