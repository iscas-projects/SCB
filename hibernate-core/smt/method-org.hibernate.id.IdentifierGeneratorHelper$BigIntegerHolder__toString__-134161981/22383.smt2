(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2657 0)
(declare-sort var188 0)
(declare-sort var3877 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/1081952099 (var2657) var188)
(declare-fun append/-1031950772 (String var3877) String)
(declare-fun cast-from-var188-to-var3877 (var188) var3877)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2657 var2657)
(declare-const var2018 var2657) ; Statement: r1 := @this: org.hibernate.id.IdentifierGeneratorHelper$BigIntegerHolder 
(assert (not (= var2018 null-var2657)))
(define-const var3697 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3697)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3697!1 String)
(assert (= var3697!1 ""))
(assert true)
(define-const var534 String (append/672562846 var3697!1 "BigIntegerHolder[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BigIntegerHolder[") 
(declare-const var3697!2 String)
(assert (= var3697!2 (str.++ var3697!1 "BigIntegerHolder[")))
(define-const var2624 var188 (value/1081952099 var2018)) ; Statement: $r2 = r1.<org.hibernate.id.IdentifierGeneratorHelper$BigIntegerHolder: java.math.BigInteger value> 
(assert true)
(define-const var2767 String (append/-1031950772 var534 (cast-from-var188-to-var3877 var2624))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var534!1 String)
(assert (str.prefixof var534 var534!1))
(assert true)
(define-const var1261 String (append/672562846 var2767 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2767!1 String)
(assert (= var2767!1 (str.++ var2767 "]")))
(assert true)
(define-const var3864 String (toString/-2075883882 var1261)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/1081952099=([org.hibernate.id.IdentifierGeneratorHelper$BigIntegerHolder], java.math.BigInteger), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var188-to-var3877=([java.math.BigInteger], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2657=org.hibernate.id.IdentifierGeneratorHelper$BigIntegerHolder, var2018=r1, var3697=$r0, var534=$r3, var188=java.math.BigInteger, var2624=$r2, var3877=java.lang.Object, var2767=$r4, var1261=$r5, var3864=$r6}
; {org.hibernate.id.IdentifierGeneratorHelper$BigIntegerHolder=var2657, r1=var2018, $r0=var3697, $r3=var534, java.math.BigInteger=var188, $r2=var2624, java.lang.Object=var3877, $r4=var2767, $r5=var1261, $r6=var3864}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.id.IdentifierGeneratorHelper$BigIntegerHolder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BigIntegerHolder[");	$r2 = r1.<org.hibernate.id.IdentifierGeneratorHelper$BigIntegerHolder: java.math.BigInteger value>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1