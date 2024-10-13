(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1418 0)
(declare-sort var1422 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1422) String)
(declare-fun cast-from-var1418-to-var1422 (var1418) var1422)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1418 var1418)
(declare-const var3086 var1418) ; Statement: r1 := @parameter0: org.junit.jupiter.api.condition.EnabledIfSystemProperty 
(assert (not (= var3086 null-var1418)))
(define-const var1807 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1807)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1807!1 String)
(assert (= var1807!1 ""))
(assert true)
(define-const var1695 String (append/672562846 var1807!1 "The \u0027matches\u0027 attribute must not be blank in ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'matches\' attribute must not be blank in ") 
(declare-const var1807!2 String)
(assert (= var1807!2 (str.++ var1807!1 "The \u0027matches\u0027 attribute must not be blank in ")))
(assert true)
(define-const var3241 String (append/-1031950772 var1695 (cast-from-var1418-to-var1422 var3086))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1695!1 String)
(assert (str.prefixof var1695 var1695!1))
(assert true)
(define-const var178 String (toString/-2075883882 var3241)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1418-to-var1422=([org.junit.jupiter.api.condition.EnabledIfSystemProperty], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1418=org.junit.jupiter.api.condition.EnabledIfSystemProperty, var3086=r1, var1807=$r0, var1695=$r2, var1422=java.lang.Object, var3241=$r3, var178=$r4}
; {org.junit.jupiter.api.condition.EnabledIfSystemProperty=var1418, r1=var3086, $r0=var1807, $r2=var1695, java.lang.Object=var1422, $r3=var3241, $r4=var178}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.junit.jupiter.api.condition.EnabledIfSystemProperty;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'matches\' attribute must not be blank in ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1