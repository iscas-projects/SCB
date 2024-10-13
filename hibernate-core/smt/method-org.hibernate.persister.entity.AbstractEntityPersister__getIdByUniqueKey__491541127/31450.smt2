(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2959 0)
(declare-sort var1265 0)
(declare-sort var1721 0)
(declare-sort var1527 0)
(declare-sort var2540 0)
(declare-sort var2834 0)
(declare-sort var1732 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2540_isTraceEnabled/-699489552 (var2540) Bool)
(declare-fun getSubclassPropertyIndex/1026729404 (var2959 String) Int)
(declare-fun var2834-init () var2834)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getEntityName/498345966 (var2959) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-790357943 (var2834 String) void)
(declare-fun cast-from-var2834-to-var1732 (var2834) var1732)
(declare-const null-var2959 var2959)
(declare-const null-var1265 var1265)
(declare-const null-String String)
(declare-const null-var1527 var1527)
(declare-const var2959-LOG var2540)
(declare-const var770 var2959) ; Statement: r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister 
(assert (not (= var770 null-var2959)))
(declare-const var2280 var1265) ; Statement: r8 := @parameter0: java.io.Serializable 
(assert (not (= var2280 null-var1265)))
(declare-const var390 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var390 null-String)))
(declare-const var2287 var1527) ; Statement: r4 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2287 null-var1527)))
(define-const var117 var2540 var2959-LOG) ; Statement: $r0 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG> 
(define-const var1496 Bool (var2540_isTraceEnabled/-699489552 var117)) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>() 
 ; Statement: if $z0 == 0 goto $i0 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassPropertyIndex(java.lang.String)>(r2) 
(assert (= (ite var1496 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var1064 Int (getSubclassPropertyIndex/1026729404 var770 var390)) ; Statement: $i0 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassPropertyIndex(java.lang.String)>(r2) 
 ; Statement: if $i0 >= 0 goto r3 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.type.Type getSubclassPropertyType(int)>($i0) 
(assert (not (>= var1064 0))) ; Negate: Cond: $i0 >= 0  
(define-const var2843 var2834 var2834-init) ; Statement: $r60 = new org.hibernate.HibernateException 
(define-const var2072 String String-init) ; Statement: $r59 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2072)) ; Statement: specialinvoke $r59.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2072!1 String)
(assert (= var2072!1 ""))
(assert true)
(define-const var1490 String (append/672562846 var2072!1 "Could not determine Type for property [")) ; Statement: $r31 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine Type for property [") 
(declare-const var2072!2 String)
(assert (= var2072!2 (str.++ var2072!1 "Could not determine Type for property [")))
(assert true)
(define-const var607 String (append/672562846 var1490 var390)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1490!1 String)
(assert (= var1490!1 (str.++ var1490 var390)))
(assert true)
(define-const var3309 String (append/672562846 var607 "] on entity [")) ; Statement: $r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] on entity [") 
(declare-const var607!1 String)
(assert (= var607!1 (str.++ var607 "] on entity [")))
(assert true)
(define-const var2193 String (getEntityName/498345966 var770)) ; Statement: $r33 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getEntityName()>() 
(assert true)
(define-const var1703 String (append/672562846 var3309 var2193)) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33) 
(declare-const var3309!1 String)
(assert (= var3309!1 (str.++ var3309 var2193)))
(assert true)
(define-const var1631 String (append/672562846 var1703 "]")) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1703!1 String)
(assert (= var1703!1 (str.++ var1703 "]")))
(assert true)
(define-const var1548 String (toString/-2075883882 var1631)) ; Statement: $r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-790357943 var2843 var1548)) ; Statement: specialinvoke $r60.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r37) 

(declare-const var2843!1 var2834)
(declare-const var1548!1 String)
(define-const var2084 var1732 (cast-from-var2834-to-var1732 var2843!1)) ; Statement: $r61 = (java.lang.Throwable) $r60 
 ; Statement: throw $r61 
(check-sat)
(get-model)
(get-unsat-core)
; {var2540_isTraceEnabled/-699489552=([org.hibernate.internal.CoreMessageLogger], boolean), getSubclassPropertyIndex/1026729404=([org.hibernate.persister.entity.AbstractEntityPersister, java.lang.String], int), var2834-init=([], org.hibernate.HibernateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getEntityName/498345966=([org.hibernate.persister.entity.AbstractEntityPersister], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-790357943=([org.hibernate.HibernateException, java.lang.String], void), cast-from-var2834-to-var1732=([org.hibernate.HibernateException], java.lang.Throwable)}
; {var2959=org.hibernate.persister.entity.AbstractEntityPersister, var770=r1, var1265=java.io.Serializable, var2280=r8, var390=r2, var1721=null_type, var1527=org.hibernate.engine.spi.SharedSessionContractImplementor, var2287=r4, var2540=org.hibernate.internal.CoreMessageLogger, var117=$r0, var1496=$z0, var1064=$i0, var2834=org.hibernate.HibernateException, var2843=$r60, var2072=$r59, var1490=$r31, var607=$r32, var3309=$r34, var2193=$r33, var1703=$r35, var1631=$r36, var1548=$r37, var1732=java.lang.Throwable, var2084=$r61}
; {org.hibernate.persister.entity.AbstractEntityPersister=var2959, r1=var770, java.io.Serializable=var1265, r8=var2280, r2=var390, null_type=var1721, org.hibernate.engine.spi.SharedSessionContractImplementor=var1527, r4=var2287, org.hibernate.internal.CoreMessageLogger=var2540, $r0=var117, $z0=var1496, $i0=var1064, org.hibernate.HibernateException=var2834, $r60=var2843, $r59=var2072, $r31=var1490, $r32=var607, $r34=var3309, $r33=var2193, $r35=var1703, $r36=var1631, $r37=var1548, java.lang.Throwable=var1732, $r61=var2084}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.persister.entity.AbstractEntityPersister;	r8 := @parameter0: java.io.Serializable;	r2 := @parameter1: java.lang.String;	r4 := @parameter2: org.hibernate.engine.spi.SharedSessionContractImplementor;	$r0 = <org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.internal.CoreMessageLogger LOG>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.CoreMessageLogger: boolean isTraceEnabled()>();	if $z0 == 0 goto $i0 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassPropertyIndex(java.lang.String)>(r2);	$i0 = specialinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: int getSubclassPropertyIndex(java.lang.String)>(r2);	if $i0 >= 0 goto r3 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: org.hibernate.type.Type getSubclassPropertyType(int)>($i0);	$r60 = new org.hibernate.HibernateException;	$r59 = new java.lang.StringBuilder;	specialinvoke $r59.<java.lang.StringBuilder: void <init>()>();	$r31 = virtualinvoke $r59.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not determine Type for property [");	$r32 = virtualinvoke $r31.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r34 = virtualinvoke $r32.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] on entity [");	$r33 = virtualinvoke r1.<org.hibernate.persister.entity.AbstractEntityPersister: java.lang.String getEntityName()>();	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r33);	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r37 = virtualinvoke $r36.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r60.<org.hibernate.HibernateException: void <init>(java.lang.String)>($r37);	$r61 = (java.lang.Throwable) $r60;	throw $r61
;block_num 3