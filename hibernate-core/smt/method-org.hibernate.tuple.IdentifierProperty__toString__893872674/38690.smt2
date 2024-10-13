(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2348 0)
(declare-sort var2028 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/1062198463 (var2028) String)
(declare-fun cast-from-var2348-to-var2028 (var2348) var2028)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2348 var2348)
(declare-const var2401 var2348) ; Statement: r1 := @this: org.hibernate.tuple.IdentifierProperty 
(assert (not (= var2401 null-var2348)))
(define-const var153 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var153)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var153!1 String)
(assert (= var153!1 ""))
(assert true)
(define-const var2169 String (append/672562846 var153!1 "IdentifierAttribute(")) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IdentifierAttribute(") 
(declare-const var153!2 String)
(assert (= var153!2 (str.++ var153!1 "IdentifierAttribute(")))
(assert true)
(define-const var566 String (getName/1062198463 (cast-from-var2348-to-var2028 var2401))) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.tuple.IdentifierProperty: java.lang.String getName()>() 
(assert true)
(define-const var1781 String (append/672562846 var2169 var566)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2169!1 String)
(assert (= var2169!1 (str.++ var2169 var566)))
(assert true)
(define-const var3701 String (append/672562846 var1781 ")")) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var1781!1 String)
(assert (= var1781!1 (str.++ var1781 ")")))
(assert true)
(define-const var865 String (toString/-2075883882 var3701)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/1062198463=([org.hibernate.tuple.AbstractAttribute], java.lang.String), cast-from-var2348-to-var2028=([org.hibernate.tuple.IdentifierProperty], org.hibernate.tuple.AbstractAttribute), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2348=org.hibernate.tuple.IdentifierProperty, var2401=r1, var153=$r0, var2169=$r3, var2028=org.hibernate.tuple.AbstractAttribute, var566=$r2, var1781=$r4, var3701=$r5, var865=$r6}
; {org.hibernate.tuple.IdentifierProperty=var2348, r1=var2401, $r0=var153, $r3=var2169, org.hibernate.tuple.AbstractAttribute=var2028, $r2=var566, $r4=var1781, $r5=var3701, $r6=var865}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tuple.IdentifierProperty;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("IdentifierAttribute(");	$r2 = virtualinvoke r1.<org.hibernate.tuple.IdentifierProperty: java.lang.String getName()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1