(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2111 0)
(declare-sort var1760 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun loggableMetadata/-2079498932 (var1760) String)
(declare-fun cast-from-var2111-to-var1760 (var2111) var1760)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2111 var2111)
(declare-const var3440 var2111) ; Statement: r1 := @this: org.hibernate.tuple.component.AbstractCompositionAttribute 
(assert (not (= var3440 null-var2111)))
(define-const var1559 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1559)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1559!1 String)
(assert (= var1559!1 ""))
(assert true)
(define-const var2978 String (loggableMetadata/-2079498932 (cast-from-var2111-to-var1760 var3440))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.tuple.AbstractNonIdentifierAttribute: java.lang.String loggableMetadata()>() 
(assert true)
(define-const var2987 String (append/672562846 var1559!1 var2978)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var1559!2 String)
(assert (= var1559!2 (str.++ var1559!1 var2978)))
(assert true)
(define-const var3513 String (append/672562846 var2987 ",composition")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",composition") 
(declare-const var2987!1 String)
(assert (= var2987!1 (str.++ var2987 ",composition")))
(assert true)
(define-const var2319 String (toString/-2075883882 var3513)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), loggableMetadata/-2079498932=([org.hibernate.tuple.AbstractNonIdentifierAttribute], java.lang.String), cast-from-var2111-to-var1760=([org.hibernate.tuple.component.AbstractCompositionAttribute], org.hibernate.tuple.AbstractNonIdentifierAttribute), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2111=org.hibernate.tuple.component.AbstractCompositionAttribute, var3440=r1, var1559=$r0, var1760=org.hibernate.tuple.AbstractNonIdentifierAttribute, var2978=$r2, var2987=$r3, var3513=$r4, var2319=$r5}
; {org.hibernate.tuple.component.AbstractCompositionAttribute=var2111, r1=var3440, $r0=var1559, org.hibernate.tuple.AbstractNonIdentifierAttribute=var1760, $r2=var2978, $r3=var2987, $r4=var3513, $r5=var2319}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tuple.component.AbstractCompositionAttribute;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.tuple.AbstractNonIdentifierAttribute: java.lang.String loggableMetadata()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",composition");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1