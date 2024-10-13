(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3687 0)
(declare-sort var844 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var844) String)
(declare-fun cast-from-var3687-to-var844 (var3687) var844)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3687 var3687)
(declare-const var2665 var3687) ; Statement: r1 := @parameter0: org.junit.jupiter.api.condition.EnabledIfSystemProperty 
(assert (not (= var2665 null-var3687)))
(define-const var3118 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3118)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3118!1 String)
(assert (= var3118!1 ""))
(assert true)
(define-const var2794 String (append/672562846 var3118!1 "The \u0027named\u0027 attribute must not be blank in ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'named\' attribute must not be blank in ") 
(declare-const var3118!2 String)
(assert (= var3118!2 (str.++ var3118!1 "The \u0027named\u0027 attribute must not be blank in ")))
(assert true)
(define-const var34 String (append/-1031950772 var2794 (cast-from-var3687-to-var844 var2665))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2794!1 String)
(assert (str.prefixof var2794 var2794!1))
(assert true)
(define-const var3427 String (toString/-2075883882 var34)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3687-to-var844=([org.junit.jupiter.api.condition.EnabledIfSystemProperty], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3687=org.junit.jupiter.api.condition.EnabledIfSystemProperty, var2665=r1, var3118=$r0, var2794=$r2, var844=java.lang.Object, var34=$r3, var3427=$r4}
; {org.junit.jupiter.api.condition.EnabledIfSystemProperty=var3687, r1=var2665, $r0=var3118, $r2=var2794, java.lang.Object=var844, $r3=var34, $r4=var3427}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.junit.jupiter.api.condition.EnabledIfSystemProperty;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'named\' attribute must not be blank in ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1