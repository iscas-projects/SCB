(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var793 0)
(declare-sort var2845 0)
(declare-sort var3098 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2845-init () var2845)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3098) ClassObject)
(declare-fun cast-from-var793-to-var3098 (var793) var3098)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var2845 String) void)
(declare-const null-var793 var793)
(declare-const var1488 var793) ; Statement: r0 := @parameter0: org.hibernate.metamodel.model.domain.spi.PluralPersistentAttribute 
(assert (not (= var1488 null-var793)))
(define-const var1616 Bool true) ; Statement: $z0 = r0 instanceof org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute 
 ; Statement: if $z0 == 0 goto $z1 = r0 instanceof org.hibernate.metamodel.model.domain.spi.PluralPersistentAttribute 
(assert (= (ite var1616 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3569 Bool true) ; Statement: $z1 = r0 instanceof org.hibernate.metamodel.model.domain.spi.PluralPersistentAttribute 
 ; Statement: if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException 
(assert (= (ite var3569 1 0) 0)) ; Cond: $z1 == 0 
(define-const var2338 var2845 var2845-init) ; Statement: $r1 = new java.lang.IllegalArgumentException 
(define-const var1717 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1717)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1717!1 String)
(assert (= var1717!1 ""))
(assert true)
(define-const var1835 String (append/672562846 var1717!1 "Unexpected Attribute Class [")) ; Statement: $r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected Attribute Class [") 
(declare-const var1717!2 String)
(assert (= var1717!2 (str.++ var1717!1 "Unexpected Attribute Class [")))
(assert true)
(define-const var3056 ClassObject (getClass/1258963082 (cast-from-var793-to-var3098 var1488))) ; Statement: $r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3612 String (getName/-1958580599 var3056)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3452 String (append/672562846 var1835 var3612)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1835!1 String)
(assert (= var1835!1 (str.++ var1835 var3612)))
(assert true)
(define-const var3548 String (append/672562846 var3452 "] - expecting SingularAttributeImplementor or PluralAttributeImplementor")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] - expecting SingularAttributeImplementor or PluralAttributeImplementor") 
(declare-const var3452!1 String)
(assert (= var3452!1 (str.++ var3452 "] - expecting SingularAttributeImplementor or PluralAttributeImplementor")))
(assert true)
(define-const var939 String (toString/-2075883882 var3548)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2338 var939)) ; Statement: specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8) 

(declare-const var2338!1 var2845)
(declare-const var939!1 String)
 ; Statement: throw $r1 
(check-sat)
(get-model)
(get-unsat-core)
; {var2845-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var793-to-var3098=([org.hibernate.metamodel.model.domain.spi.PluralPersistentAttribute], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void)}
; {var793=org.hibernate.metamodel.model.domain.spi.PluralPersistentAttribute, var1488=r0, var1616=$z0, var3569=$z1, var2845=java.lang.IllegalArgumentException, var2338=$r1, var1717=$r2, var1835=$r5, var3098=java.lang.Object, var3056=$r3, var3612=$r4, var3452=$r6, var3548=$r7, var939=$r8}
; {org.hibernate.metamodel.model.domain.spi.PluralPersistentAttribute=var793, r0=var1488, $z0=var1616, $z1=var3569, java.lang.IllegalArgumentException=var2845, $r1=var2338, $r2=var1717, $r5=var1835, java.lang.Object=var3098, $r3=var3056, $r4=var3612, $r6=var3452, $r7=var3548, $r8=var939}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @parameter0: org.hibernate.metamodel.model.domain.spi.PluralPersistentAttribute;	$z0 = r0 instanceof org.hibernate.metamodel.model.domain.spi.SingularPersistentAttribute;	if $z0 == 0 goto $z1 = r0 instanceof org.hibernate.metamodel.model.domain.spi.PluralPersistentAttribute;	$z1 = r0 instanceof org.hibernate.metamodel.model.domain.spi.PluralPersistentAttribute;	if $z1 == 0 goto $r1 = new java.lang.IllegalArgumentException;	$r1 = new java.lang.IllegalArgumentException;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unexpected Attribute Class [");	$r3 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r4 = virtualinvoke $r3.<java.lang.Class: java.lang.String getName()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] - expecting SingularAttributeImplementor or PluralAttributeImplementor");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r1.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r8);	throw $r1
;block_num 3