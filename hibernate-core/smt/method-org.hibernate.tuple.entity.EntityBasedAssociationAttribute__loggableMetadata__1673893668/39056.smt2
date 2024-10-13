(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var420 0)
(declare-sort var900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun loggableMetadata/-2079498932 (var900) String)
(declare-fun cast-from-var420-to-var900 (var420) var900)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var420 var420)
(declare-const var1176 var420) ; Statement: r1 := @this: org.hibernate.tuple.entity.EntityBasedAssociationAttribute 
(assert (not (= var1176 null-var420)))
(define-const var846 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var846)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var846!1 String)
(assert (= var846!1 ""))
(assert true)
(define-const var2 String (loggableMetadata/-2079498932 (cast-from-var420-to-var900 var1176))) ; Statement: $r2 = specialinvoke r1.<org.hibernate.tuple.entity.AbstractEntityBasedAttribute: java.lang.String loggableMetadata()>() 
(assert true)
(define-const var2940 String (append/672562846 var846!1 var2)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var846!2 String)
(assert (= var846!2 (str.++ var846!1 var2)))
(assert true)
(define-const var946 String (append/672562846 var2940 ",association")) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",association") 
(declare-const var2940!1 String)
(assert (= var2940!1 (str.++ var2940 ",association")))
(assert true)
(define-const var1860 String (toString/-2075883882 var946)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), loggableMetadata/-2079498932=([org.hibernate.tuple.AbstractNonIdentifierAttribute], java.lang.String), cast-from-var420-to-var900=([org.hibernate.tuple.entity.EntityBasedAssociationAttribute], org.hibernate.tuple.AbstractNonIdentifierAttribute), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var420=org.hibernate.tuple.entity.EntityBasedAssociationAttribute, var1176=r1, var846=$r0, var900=org.hibernate.tuple.AbstractNonIdentifierAttribute, var2=$r2, var2940=$r3, var946=$r4, var1860=$r5}
; {org.hibernate.tuple.entity.EntityBasedAssociationAttribute=var420, r1=var1176, $r0=var846, org.hibernate.tuple.AbstractNonIdentifierAttribute=var900, $r2=var2, $r3=var2940, $r4=var946, $r5=var1860}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.tuple.entity.EntityBasedAssociationAttribute;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = specialinvoke r1.<org.hibernate.tuple.entity.AbstractEntityBasedAttribute: java.lang.String loggableMetadata()>();	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",association");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1