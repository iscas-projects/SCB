(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var934 0)
(declare-sort var712 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var712) String)
(declare-fun cast-from-var934-to-var712 (var934) var712)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var934 var934)
(declare-const var468 var934) ; Statement: r1 := @parameter0: org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable 
(assert (not (= var468 null-var934)))
(define-const var3465 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3465)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3465!1 String)
(assert (= var3465!1 ""))
(assert true)
(define-const var2996 String (append/672562846 var3465!1 "The \u0027named\u0027 attribute must not be blank in ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'named\' attribute must not be blank in ") 
(declare-const var3465!2 String)
(assert (= var3465!2 (str.++ var3465!1 "The \u0027named\u0027 attribute must not be blank in ")))
(assert true)
(define-const var775 String (append/-1031950772 var2996 (cast-from-var934-to-var712 var468))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2996!1 String)
(assert (str.prefixof var2996 var2996!1))
(assert true)
(define-const var925 String (toString/-2075883882 var775)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var934-to-var712=([org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var934=org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable, var468=r1, var3465=$r0, var2996=$r2, var712=java.lang.Object, var775=$r3, var925=$r4}
; {org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable=var934, r1=var468, $r0=var3465, $r2=var2996, java.lang.Object=var712, $r3=var775, $r4=var925}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'named\' attribute must not be blank in ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1