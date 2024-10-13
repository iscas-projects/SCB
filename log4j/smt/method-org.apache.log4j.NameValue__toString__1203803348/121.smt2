(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2943 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(declare-fun <init>/-1430969082 (String) void)
(declare-fun key/242598716 (var2943) String)
(define-fun append/1560614132 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/242598716 (var2943) String)
(define-fun toString/-222306083 ((s String)) String s)
(declare-const null-var2943 var2943)
(declare-const var1571 var2943) ; Statement: r1 := @this: org.apache.log4j.NameValue 
(assert (not (= var1571 null-var2943)))
(define-const var1137 String String-init) ; Statement: $r0 = new java.lang.StringBuffer 
(assert true)
;(assert (<init>/-1430969082 var1137)) ; Statement: specialinvoke $r0.<java.lang.StringBuffer: void <init>()>() 

(declare-const var1137!1 String)
(define-const var1900 String (key/242598716 var1571)) ; Statement: $r2 = r1.<org.apache.log4j.NameValue: java.lang.String key> 
(assert true)
(define-const var1613 String (append/1560614132 var1137!1 var1900)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2) 
(declare-const var1137!2 String)
(assert (str.prefixof var1137!1 var1137!2))
(assert true)
(define-const var2621 String (append/1560614132 var1613 "=")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=") 
(declare-const var1613!1 String)
(assert (str.prefixof var1613 var1613!1))
(define-const var956 String (value/242598716 var1571)) ; Statement: $r4 = r1.<org.apache.log4j.NameValue: java.lang.String value> 
(assert true)
(define-const var1619 String (append/1560614132 var2621 var956)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4) 
(declare-const var2621!1 String)
(assert (str.prefixof var2621 var2621!1))
(assert true)
(define-const var3158 String (toString/-222306083 var1619)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuffer), <init>/-1430969082=([java.lang.StringBuffer], void), key/242598716=([org.apache.log4j.NameValue], java.lang.String), append/1560614132=([java.lang.StringBuffer, java.lang.String], java.lang.StringBuffer), value/242598716=([org.apache.log4j.NameValue], java.lang.String), toString/-222306083=([java.lang.StringBuffer], java.lang.String)}
; {var2943=org.apache.log4j.NameValue, var1571=r1, var1137=$r0, var1900=$r2, var1613=$r3, var2621=$r5, var956=$r4, var1619=$r6, var3158=$r7}
; {org.apache.log4j.NameValue=var2943, r1=var1571, $r0=var1137, $r2=var1900, $r3=var1613, $r5=var2621, $r4=var956, $r6=var1619, $r7=var3158}
;seq <java.lang.StringBuffer: void <init>()>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>;	<java.lang.StringBuffer: java.lang.String toString()>
;cnt {"<java.lang.StringBuffer: void <init>()>": 1,"<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>": 3,"<java.lang.StringBuffer: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.log4j.NameValue;	$r0 = new java.lang.StringBuffer;	specialinvoke $r0.<java.lang.StringBuffer: void <init>()>();	$r2 = r1.<org.apache.log4j.NameValue: java.lang.String key>;	$r3 = virtualinvoke $r0.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>("=");	$r4 = r1.<org.apache.log4j.NameValue: java.lang.String value>;	$r6 = virtualinvoke $r5.<java.lang.StringBuffer: java.lang.StringBuffer append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuffer: java.lang.String toString()>();	return $r7
;block_num 1