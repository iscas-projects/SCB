(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2784 0)
(declare-sort var1496 0)
(declare-sort var3800 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun enumValueConverter/-275627383 (var2784) var1496)
(declare-fun var3800-init () var3800)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun enumClass/-275627383 (var2784) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1590914260 (var3800 String) void)
(declare-const null-var2784 var2784)
(declare-const null-var1496 var1496)
(declare-const var1657 var2784) ; Statement: r0 := @this: org.hibernate.type.EnumType 
(assert (not (= var1657 null-var2784)))
(define-const var3239 var1496 (enumValueConverter/-275627383 var1657)) ; Statement: $r1 = r0.<org.hibernate.type.EnumType: org.hibernate.metamodel.model.convert.spi.EnumValueConverter enumValueConverter> 
 ; Statement: if $r1 != null goto return 
(assert (not (not (= var3239 null-var1496)))) ; Negate: Cond: $r1 != null  
(define-const var666 var3800 var3800-init) ; Statement: $r2 = new org.hibernate.AssertionFailure 
(define-const var2900 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2900)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2900!1 String)
(assert (= var2900!1 ""))
(assert true)
(define-const var1682 String (append/672562846 var2900!1 "EnumType (")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EnumType (") 
(declare-const var2900!2 String)
(assert (= var2900!2 (str.++ var2900!1 "EnumType (")))
(define-const var773 ClassObject (enumClass/-275627383 var1657)) ; Statement: $r4 = r0.<org.hibernate.type.EnumType: java.lang.Class enumClass> 
(assert true)
(define-const var3929 String (getName/-1958580599 var773)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1633 String (append/672562846 var1682 var3929)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1682!1 String)
(assert (= var1682!1 (str.++ var1682 var3929)))
(assert true)
(define-const var166 String (append/672562846 var1633 ") not properly, fully configured")) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") not properly, fully configured") 
(declare-const var1633!1 String)
(assert (= var1633!1 (str.++ var1633 ") not properly, fully configured")))
(assert true)
(define-const var3153 String (toString/-2075883882 var166)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1590914260 var666 var3153)) ; Statement: specialinvoke $r2.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r9) 

(declare-const var666!1 var3800)
(declare-const var3153!1 String)
 ; Statement: throw $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {enumValueConverter/-275627383=([org.hibernate.type.EnumType], org.hibernate.metamodel.model.convert.spi.EnumValueConverter), var3800-init=([], org.hibernate.AssertionFailure), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), enumClass/-275627383=([org.hibernate.type.EnumType], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1590914260=([org.hibernate.AssertionFailure, java.lang.String], void)}
; {var2784=org.hibernate.type.EnumType, var1657=r0, var1496=org.hibernate.metamodel.model.convert.spi.EnumValueConverter, var3239=$r1, var3800=org.hibernate.AssertionFailure, var666=$r2, var2900=$r3, var1682=$r6, var773=$r4, var3929=$r5, var1633=$r7, var166=$r8, var3153=$r9}
; {org.hibernate.type.EnumType=var2784, r0=var1657, org.hibernate.metamodel.model.convert.spi.EnumValueConverter=var1496, $r1=var3239, org.hibernate.AssertionFailure=var3800, $r2=var666, $r3=var2900, $r6=var1682, $r4=var773, $r5=var3929, $r7=var1633, $r8=var166, $r9=var3153}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.type.EnumType;	$r1 = r0.<org.hibernate.type.EnumType: org.hibernate.metamodel.model.convert.spi.EnumValueConverter enumValueConverter>;	if $r1 != null goto return;	$r2 = new org.hibernate.AssertionFailure;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("EnumType (");	$r4 = r0.<org.hibernate.type.EnumType: java.lang.Class enumClass>;	$r5 = virtualinvoke $r4.<java.lang.Class: java.lang.String getName()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(") not properly, fully configured");	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<org.hibernate.AssertionFailure: void <init>(java.lang.String)>($r9);	throw $r2
;block_num 2