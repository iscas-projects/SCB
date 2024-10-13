(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2779 0)
(declare-sort var2990 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun loggableMetadata/-2079498932 (var2990) String)
(declare-fun cast-from-var2779-to-var2990 (var2779) var2990)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2779 var2779)
(declare-const var908 var2779) ; Statement: r1 := @this: org.hibernate.tuple.component.CompositeBasedAssociationAttribute 
(assert (not (= var908 null-var2779)))
(define-const var1542 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1542)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1542!1 String)
(assert (= var1542!1 ""))
(assert true)
(define-const var81 String (loggableMetadata/-2079498932 (cast-from-var2779-to-var2990 var908))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.tuple.AbstractNonIdentifierAttribute: java.lang.String loggableMetadata()>() 
(assert true)
(define-const var2057 String (append/672562846 var1542!1 var81)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1542!2 String)
(assert (= var1542!2 (str.++ var1542!1 var81)))
(assert true)
(define-const var625 String (append/672562846 var2057 ",association")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",association") 
(declare-const var2057!1 String)
(assert (= var2057!1 (str.++ var2057 ",association")))
(assert true)
(define-const var2982 String (toString/-2075883882 var625)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), loggableMetadata/-2079498932=([org.hibernate.tuple.AbstractNonIdentifierAttribute], java.lang.String), cast-from-var2779-to-var2990=([org.hibernate.tuple.component.CompositeBasedAssociationAttribute], org.hibernate.tuple.AbstractNonIdentifierAttribute), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2779=org.hibernate.tuple.component.CompositeBasedAssociationAttribute, var908=r1, var1542=$r0, var2990=org.hibernate.tuple.AbstractNonIdentifierAttribute, var81=$r2, var2057=$r3, var625=$r4, var2982=$r5}
; {org.hibernate.tuple.component.CompositeBasedAssociationAttribute=var2779, r1=var908, $r0=var1542, org.hibernate.tuple.AbstractNonIdentifierAttribute=var2990, $r2=var81, $r3=var2057, $r4=var625, $r5=var2982}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tuple.component.CompositeBasedAssociationAttribute;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.tuple.AbstractNonIdentifierAttribute: java.lang.String loggableMetadata()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",association");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1