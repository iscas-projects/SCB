(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3439 0)
(declare-sort var3605 0)
(declare-sort var1229 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun value/1498551328 (var3439) var3605)
(declare-fun append/-1031950772 (String var1229) String)
(declare-fun cast-from-var3605-to-var1229 (var3605) var1229)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3439 var3439)
(declare-const var471 var3439) ; Statement: r1 := @this: org.hibernate.engine.spi.IdentifierValue 
(assert (not (= var471 null-var3439)))
(define-const var295 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var295)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var295!1 String)
(assert (= var295!1 ""))
(assert true)
(define-const var2278 String (append/672562846 var295!1 "identifier unsaved-value: ")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("identifier unsaved-value: ") 
(declare-const var295!2 String)
(assert (= var295!2 (str.++ var295!1 "identifier unsaved-value: ")))
(define-const var3594 var3605 (value/1498551328 var471)) ; Statement: $r2 = r1.<org.hibernate.engine.spi.IdentifierValue: java.io.Serializable value> 
(assert true)
(define-const var3172 String (append/-1031950772 var2278 (cast-from-var3605-to-var1229 var3594))) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2) 
(declare-const var2278!1 String)
(assert (str.prefixof var2278 var2278!1))
(assert true)
(define-const var2419 String (toString/-2075883882 var3172)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), value/1498551328=([org.hibernate.engine.spi.IdentifierValue], java.io.Serializable), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var3605-to-var1229=([java.io.Serializable], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3439=org.hibernate.engine.spi.IdentifierValue, var471=r1, var295=$r0, var2278=$r3, var3605=java.io.Serializable, var3594=$r2, var1229=java.lang.Object, var3172=$r4, var2419=$r5}
; {org.hibernate.engine.spi.IdentifierValue=var3439, r1=var471, $r0=var295, $r3=var2278, java.io.Serializable=var3605, $r2=var3594, java.lang.Object=var1229, $r4=var3172, $r5=var2419}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.engine.spi.IdentifierValue;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("identifier unsaved-value: ");	$r2 = r1.<org.hibernate.engine.spi.IdentifierValue: java.io.Serializable value>;	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1