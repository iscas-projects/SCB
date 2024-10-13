(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1936 0)
(declare-sort var1435 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var1435) String)
(declare-fun cast-from-var1936-to-var1435 (var1936) var1435)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1936 var1936)
(declare-const var3064 var1936) ; Statement: r1 := @parameter0: org.junit.jupiter.api.condition.DisabledIfSystemProperty 
(assert (not (= var3064 null-var1936)))
(define-const var913 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var913)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var913!1 String)
(assert (= var913!1 ""))
(assert true)
(define-const var3370 String (append/672562846 var913!1 "The \u0027matches\u0027 attribute must not be blank in ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'matches\' attribute must not be blank in ") 
(declare-const var913!2 String)
(assert (= var913!2 (str.++ var913!1 "The \u0027matches\u0027 attribute must not be blank in ")))
(assert true)
(define-const var1937 String (append/-1031950772 var3370 (cast-from-var1936-to-var1435 var3064))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var3370!1 String)
(assert (str.prefixof var3370 var3370!1))
(assert true)
(define-const var3898 String (toString/-2075883882 var1937)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var1936-to-var1435=([org.junit.jupiter.api.condition.DisabledIfSystemProperty], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1936=org.junit.jupiter.api.condition.DisabledIfSystemProperty, var3064=r1, var913=$r0, var3370=$r2, var1435=java.lang.Object, var1937=$r3, var3898=$r4}
; {org.junit.jupiter.api.condition.DisabledIfSystemProperty=var1936, r1=var3064, $r0=var913, $r2=var3370, java.lang.Object=var1435, $r3=var1937, $r4=var3898}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.junit.jupiter.api.condition.DisabledIfSystemProperty;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'matches\' attribute must not be blank in ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1