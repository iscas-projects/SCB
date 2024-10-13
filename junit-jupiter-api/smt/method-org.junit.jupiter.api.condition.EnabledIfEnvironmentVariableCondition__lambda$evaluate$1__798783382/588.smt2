(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2316 0)
(declare-sort var3785 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1031950772 (String var3785) String)
(declare-fun cast-from-var2316-to-var3785 (var2316) var3785)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2316 var2316)
(declare-const var3194 var2316) ; Statement: r1 := @parameter0: org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable 
(assert (not (= var3194 null-var2316)))
(define-const var2094 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2094)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2094!1 String)
(assert (= var2094!1 ""))
(assert true)
(define-const var1026 String (append/672562846 var2094!1 "The \u0027matches\u0027 attribute must not be blank in ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'matches\' attribute must not be blank in ") 
(declare-const var2094!2 String)
(assert (= var2094!2 (str.++ var2094!1 "The \u0027matches\u0027 attribute must not be blank in ")))
(assert true)
(define-const var2574 String (append/-1031950772 var1026 (cast-from-var2316-to-var3785 var3194))) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1) 
(declare-const var1026!1 String)
(assert (str.prefixof var1026 var1026!1))
(assert true)
(define-const var179 String (toString/-2075883882 var2574)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2316-to-var3785=([org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2316=org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable, var3194=r1, var2094=$r0, var1026=$r2, var3785=java.lang.Object, var2574=$r3, var179=$r4}
; {org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable=var2316, r1=var3194, $r0=var2094, $r2=var1026, java.lang.Object=var3785, $r3=var2574, $r4=var179}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.junit.jupiter.api.condition.EnabledIfEnvironmentVariable;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The \'matches\' attribute must not be blank in ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 1