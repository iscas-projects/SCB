(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var741 0)
(declare-sort var2237 0)
(declare-sort var1050 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/-581583050 (var741) var2237)
(declare-fun append/-1031950772 (String var1050) String)
(declare-fun cast-from-var2237-to-var1050 (var2237) var1050)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var741 var741)
(declare-const var1333 var741) ; Statement: r1 := @this: org.hibernate.id.IdentifierGeneratorHelper$BigDecimalHolder 
(assert (not (= var1333 null-var741)))
(define-const var2863 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2863)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2863!1 String)
(assert (= var2863!1 ""))
(assert true)
(define-const var2920 String (append/672562846 var2863!1 "BigDecimalHolder[")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BigDecimalHolder[") 
(declare-const var2863!2 String)
(assert (= var2863!2 (str.++ var2863!1 "BigDecimalHolder[")))
(define-const var2011 var2237 (value/-581583050 var1333)) ; Statement: $r2 = r1.<org.hibernate.id.IdentifierGeneratorHelper$BigDecimalHolder: java.math.BigDecimal value> 
(assert true)
(define-const var3196 String (append/-1031950772 var2920 (cast-from-var2237-to-var1050 var2011))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2920!1 String)
(assert (str.prefixof var2920 var2920!1))
(assert true)
(define-const var2219 String (append/672562846 var3196 "]")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var3196!1 String)
(assert (= var3196!1 (str.++ var3196 "]")))
(assert true)
(define-const var1266 String (toString/-2075883882 var2219)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/-581583050=([org.hibernate.id.IdentifierGeneratorHelper$BigDecimalHolder], java.math.BigDecimal), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var2237-to-var1050=([java.math.BigDecimal], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var741=org.hibernate.id.IdentifierGeneratorHelper$BigDecimalHolder, var1333=r1, var2863=$r0, var2920=$r3, var2237=java.math.BigDecimal, var2011=$r2, var1050=java.lang.Object, var3196=$r4, var2219=$r5, var1266=$r6}
; {org.hibernate.id.IdentifierGeneratorHelper$BigDecimalHolder=var741, r1=var1333, $r0=var2863, $r3=var2920, java.math.BigDecimal=var2237, $r2=var2011, java.lang.Object=var1050, $r4=var3196, $r5=var2219, $r6=var1266}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.id.IdentifierGeneratorHelper$BigDecimalHolder;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("BigDecimalHolder[");	$r2 = r1.<org.hibernate.id.IdentifierGeneratorHelper$BigDecimalHolder: java.math.BigDecimal value>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1