(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2616 0)
(declare-sort var11 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var11) String)
(declare-fun cast-from-var2616-to-var11 (var2616) var11)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2616 var2616)
(declare-const var2098 var2616) ; Statement: r1 := @parameter0: org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable 
(assert (not (= var2098 null-var2616)))
(define-const var3301 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3301)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3301!1 String)
(assert (= var3301!1 ""))
(assert true)
(define-const var2233 String (append/672562846 var3301!1 "The \u0027matches\u0027 attribute must not be blank in ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'matches\' attribute must not be blank in ") 
(declare-const var3301!2 String)
(assert (= var3301!2 (str.++ var3301!1 "The \u0027matches\u0027 attribute must not be blank in ")))
(assert true)
(define-const var1989 String (append/-1031950772 var2233 (cast-from-var2616-to-var11 var2098))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var2233!1 String)
(assert (str.prefixof var2233 var2233!1))
(assert true)
(define-const var339 String (toString/-2075883882 var1989)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2616-to-var11=([org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2616=org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable, var2098=r1, var3301=$r0, var2233=$r2, var11=java.lang.Object, var1989=$r3, var339=$r4}
; {org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable=var2616, r1=var2098, $r0=var3301, $r2=var2233, java.lang.Object=var11, $r3=var1989, $r4=var339}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.junit.jupiter.api.condition.DisabledIfEnvironmentVariable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'matches\' attribute must not be blank in ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1