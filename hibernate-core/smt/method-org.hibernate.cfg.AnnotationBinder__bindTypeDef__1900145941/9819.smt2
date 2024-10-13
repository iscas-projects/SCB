(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3514 0)
(declare-sort var3561 0)
(declare-sort var2629 0)
(declare-sort var491 0)
(declare-sort var1842 0)
(declare-sort var1474 0)
(declare-sort var3639 0)
(declare-sort var3799 0)
(declare-sort var3968 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2629-init () var2629)
(declare-fun <init>/964458484 (var2629) void)
(declare-fun var3514_parameters/-691994263 (var3514) (Array Int var491))
(declare-fun getLength-Arr-var491-1 ((Array Int var491)) Int)
(declare-fun var3514_name/-1013966276 (var3514) String)
(declare-fun var1842_isEmptyAnnotationValue/1929464449 (String) Bool)
(declare-fun var3514_defaultForType/1858292506 (var3514) ClassObject)
(declare-fun equals/-1650223740 (var3639 var3639) Bool)
(declare-fun cast-from-ClassObject-to-var3639 (ClassObject) var3639)
(declare-fun var3799-init () var3799)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3514_typeClass/669719488 (var3514) ClassObject)
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/609117640 (var3799 String) void)
(declare-fun cast-from-var3799-to-var3968 (var3799) var3968)
(declare-const null-var3514 var3514)
(declare-const null-var3561 var3561)
(declare-const var1474-TYPE ClassObject)
(declare-const var1263 var3514) ; Statement: r1 := @parameter0: org.hibernate.annotations.TypeDef 
(assert (not (= var1263 null-var3514)))
(declare-const var1577 var3561) ; Statement: r5 := @parameter1: org.hibernate.boot.spi.MetadataBuildingContext 
(assert (not (= var1577 null-var3561)))
(define-const var2901 var2629 var2629-init) ; Statement: $r39 = new java.util.Properties 
(assert true)
;(assert (<init>/964458484 var2901)) ; Statement: specialinvoke $r39.<java.util.Properties: void <init>()>() 

(declare-const var2901!1 var2629)
(define-const var3202 (Array Int var491) (var3514_parameters/-691994263 var1263)) ; Statement: r36 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: org.hibernate.annotations.Parameter[] parameters()>() 
(define-const var1449 Int (getLength-Arr-var491-1 var3202)) ; Statement: i0 = lengthof r36 
(define-const var3982 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r2 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.String name()>() 
(assert (>= var3982 var1449)) ; Cond: i1 >= i0 
(define-const var563 String (var3514_name/-1013966276 var1263)) ; Statement: $r2 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.String name()>() 
(define-const var3984 Bool (var1842_isEmptyAnnotationValue/1929464449 var563)) ; Statement: $z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r2) 
 ; Statement: if $z0 == 0 goto $r3 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.String name()>() 
(assert (not (= (ite var3984 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2697 ClassObject (var3514_defaultForType/1858292506 var1263)) ; Statement: $r25 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.Class defaultForType()>() 
(define-const var881 ClassObject var1474-TYPE) ; Statement: $r24 = <java.lang.Void: java.lang.Class TYPE> 
(assert true)
(define-const var304 Bool (equals/-1650223740 (cast-from-ClassObject-to-var3639 var2697) (cast-from-ClassObject-to-var3639 var881))) ; Statement: $z4 = virtualinvoke $r25.<java.lang.Object: boolean equals(java.lang.Object)>($r24) 
 ; Statement: if $z4 == 0 goto $r3 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.String name()>() 
(assert (not (= (ite var304 1 0) 0))) ; Negate: Cond: $z4 == 0  
(define-const var1970 var3799 var3799-init) ; Statement: $r41 = new org.hibernate.AnnotationException 
(define-const var2510 String String-init) ; Statement: $r40 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2510)) ; Statement: specialinvoke $r40.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2510!1 String)
(assert (= var2510!1 ""))
(assert true)
(define-const var1464 String (append/672562846 var2510!1 "Either name or defaultForType (or both) attribute should be set in TypeDef having typeClass ")) ; Statement: $r30 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Either name or defaultForType (or both) attribute should be set in TypeDef having typeClass ") 
(declare-const var2510!2 String)
(assert (= var2510!2 (str.++ var2510!1 "Either name or defaultForType (or both) attribute should be set in TypeDef having typeClass ")))
(define-const var62 ClassObject (var3514_typeClass/669719488 var1263)) ; Statement: $r28 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.Class typeClass()>() 
(assert true)
(define-const var2617 String (getName/-1958580599 var62)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var2643 String (append/672562846 var1464 var2617)) ; Statement: $r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var1464!1 String)
(assert (= var1464!1 (str.++ var1464 var2617)))
(assert true)
(define-const var2520 String (toString/-2075883882 var2643)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/609117640 var1970 var2520)) ; Statement: specialinvoke $r41.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r32) 

(declare-const var1970!1 var3799)
(declare-const var2520!1 String)
(define-const var2624 var3968 (cast-from-var3799-to-var3968 var1970!1)) ; Statement: $r44 = (java.lang.Throwable) $r41 
 ; Statement: throw $r44 
(check-sat)
(get-model)
(get-unsat-core)
; {var2629-init=([], java.util.Properties), <init>/964458484=([java.util.Properties], void), var3514_parameters/-691994263=([org.hibernate.annotations.TypeDef], org.hibernate.annotations.Parameter[]), getLength-Arr-var491-1=([org.hibernate.annotations.Parameter[]], int), var3514_name/-1013966276=([org.hibernate.annotations.TypeDef], java.lang.String), var1842_isEmptyAnnotationValue/1929464449=([java.lang.String], boolean), var3514_defaultForType/1858292506=([org.hibernate.annotations.TypeDef], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var3639=([java.lang.Class], java.lang.Object), var3799-init=([], org.hibernate.AnnotationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3514_typeClass/669719488=([org.hibernate.annotations.TypeDef], java.lang.Class), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/609117640=([org.hibernate.AnnotationException, java.lang.String], void), cast-from-var3799-to-var3968=([org.hibernate.AnnotationException], java.lang.Throwable)}
; {var3514=org.hibernate.annotations.TypeDef, var1263=r1, var3561=org.hibernate.boot.spi.MetadataBuildingContext, var1577=r5, var2629=java.util.Properties, var2901=$r39, var491=org.hibernate.annotations.Parameter, var3202=r36, var1449=i0, var3982=i1, var563=$r2, var1842=org.hibernate.cfg.BinderHelper, var3984=$z0, var2697=$r25, var1474=java.lang.Void, var881=$r24, var3639=java.lang.Object, var304=$z4, var3799=org.hibernate.AnnotationException, var1970=$r41, var2510=$r40, var1464=$r30, var62=$r28, var2617=$r29, var2643=$r31, var2520=$r32, var3968=java.lang.Throwable, var2624=$r44}
; {org.hibernate.annotations.TypeDef=var3514, r1=var1263, org.hibernate.boot.spi.MetadataBuildingContext=var3561, r5=var1577, java.util.Properties=var2629, $r39=var2901, org.hibernate.annotations.Parameter=var491, r36=var3202, i0=var1449, i1=var3982, $r2=var563, org.hibernate.cfg.BinderHelper=var1842, $z0=var3984, $r25=var2697, java.lang.Void=var1474, $r24=var881, java.lang.Object=var3639, $z4=var304, org.hibernate.AnnotationException=var3799, $r41=var1970, $r40=var2510, $r30=var1464, $r28=var62, $r29=var2617, $r31=var2643, $r32=var2520, java.lang.Throwable=var3968, $r44=var2624}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: org.hibernate.annotations.TypeDef;	r5 := @parameter1: org.hibernate.boot.spi.MetadataBuildingContext;	$r39 = new java.util.Properties;	specialinvoke $r39.<java.util.Properties: void <init>()>();	r36 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: org.hibernate.annotations.Parameter[] parameters()>();	i0 = lengthof r36;	i1 = 0;	if i1 >= i0 goto $r2 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.String name()>();	$r2 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.String name()>();	$z0 = staticinvoke <org.hibernate.cfg.BinderHelper: boolean isEmptyAnnotationValue(java.lang.String)>($r2);	if $z0 == 0 goto $r3 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.String name()>();	$r25 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.Class defaultForType()>();	$r24 = <java.lang.Void: java.lang.Class TYPE>;	$z4 = virtualinvoke $r25.<java.lang.Object: boolean equals(java.lang.Object)>($r24);	if $z4 == 0 goto $r3 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.String name()>();	$r41 = new org.hibernate.AnnotationException;	$r40 = new java.lang.StringBuilder;	specialinvoke $r40.<java.lang.StringBuilder: void <init>()>();	$r30 = virtualinvoke $r40.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Either name or defaultForType (or both) attribute should be set in TypeDef having typeClass ");	$r28 = interfaceinvoke r1.<org.hibernate.annotations.TypeDef: java.lang.Class typeClass()>();	$r29 = virtualinvoke $r28.<java.lang.Class: java.lang.String getName()>();	$r31 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r41.<org.hibernate.AnnotationException: void <init>(java.lang.String)>($r32);	$r44 = (java.lang.Throwable) $r41;	throw $r44
;block_num 5