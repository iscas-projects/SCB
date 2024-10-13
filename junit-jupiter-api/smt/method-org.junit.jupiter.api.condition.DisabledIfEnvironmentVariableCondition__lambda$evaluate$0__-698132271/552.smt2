(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1292 0)
(declare-sort var1698 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1698) String)
(declare-fun cast-from-var1292-to-var1698 (var1292) var1698)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1292 var1292)
(declare-const var1484 var1292) ; Statement: r1 := @parameter0: org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable 
(assert (not (= var1484 null-var1292)))
(define-const var969 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var969)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var969!1 String)
(assert (= var969!1 ""))
(assert true)
(define-const var1325 String (append/672562846 var969!1 "The \u0027named\u0027 attribute must not be blank in ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'named\' attribute must not be blank in ") 
(declare-const var969!2 String)
(assert (= var969!2 (str.++ var969!1 "The \u0027named\u0027 attribute must not be blank in ")))
(assert true)
(define-const var1305 String (append/-1031950772 var1325 (cast-from-var1292-to-var1698 var1484))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1325!1 String)
(assert (str.prefixof var1325 var1325!1))
(assert true)
(define-const var1150 String (toString/-2075883882 var1305)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1292-to-var1698=([org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1292=org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable, var1484=r1, var969=$r0, var1325=$r2, var1698=java.lang.Object, var1305=$r3, var1150=$r4}
; {org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable=var1292, r1=var1484, $r0=var969, $r2=var1325, java.lang.Object=var1698, $r3=var1305, $r4=var1150}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'named\' attribute must not be blank in ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1