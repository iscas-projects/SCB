(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var478 0)
(declare-sort var3504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3504) String)
(declare-fun cast-from-var478-to-var3504 (var478) var3504)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var478 var478)
(declare-const var2184 var478) ; Statement: r1 := @parameter0: org.junit.jupiter.api.condition.DisabledIfSystemProperty 
(assert (not (= var2184 null-var478)))
(define-const var2844 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2844)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2844!1 String)
(assert (= var2844!1 ""))
(assert true)
(define-const var3135 String (append/672562846 var2844!1 "The \u0027named\u0027 attribute must not be blank in ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'named\' attribute must not be blank in ") 
(declare-const var2844!2 String)
(assert (= var2844!2 (str.++ var2844!1 "The \u0027named\u0027 attribute must not be blank in ")))
(assert true)
(define-const var3824 String (append/-1031950772 var3135 (cast-from-var478-to-var3504 var2184))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3135!1 String)
(assert (str.prefixof var3135 var3135!1))
(assert true)
(define-const var1668 String (toString/-2075883882 var3824)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var478-to-var3504=([org.junit.jupiter.api.condition.DisabledIfSystemProperty], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var478=org.junit.jupiter.api.condition.DisabledIfSystemProperty, var2184=r1, var2844=$r0, var3135=$r2, var3504=java.lang.Object, var3824=$r3, var1668=$r4}
; {org.junit.jupiter.api.condition.DisabledIfSystemProperty=var478, r1=var2184, $r0=var2844, $r2=var3135, java.lang.Object=var3504, $r3=var3824, $r4=var1668}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.junit.jupiter.api.condition.DisabledIfSystemProperty;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'named\' attribute must not be blank in ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1