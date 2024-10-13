(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2662 0)
(declare-sort var2175 0)
(declare-sort var3062 0)
(declare-sort var216 0)
(declare-sort var3979 0)
(declare-sort var2030 0)
(declare-sort var3893 0)
(declare-sort var533 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var216_isTraceEnabled/-699489552 (var216) Bool)
(declare-fun cast-from-var3062-to-var216 (var3062) var216)
(declare-fun jdbcCoordinator/-778087690 (var2662) var3979)
(declare-fun var3979_isReadyForSerialization/674696517 (var3979) Bool)
(declare-fun var2030-init () var2030)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3893) ClassObject)
(declare-fun cast-from-var2662-to-var3893 (var2662) var3893)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(declare-fun getSessionIdentifier/-704562777 (var2662) var533)
(declare-fun append/-1031950772 (String var3893) String)
(declare-fun cast-from-var533-to-var3893 (var533) var3893)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var2030 String) void)
(declare-const null-var2662 var2662)
(declare-const null-var2175 var2175)
(declare-const var2662-log var3062)
(declare-const var688 var2662) ; Statement: r1 := @this: org.hibernate.internal.AbstractSharedSessionContract 
(assert (not (= var688 null-var2662)))
(declare-const var3358 var2175) ; Statement: r3 := @parameter0: java.io.ObjectOutputStream 
(assert (not (= var3358 null-var2175)))
(define-const var2226 var3062 var2662-log) ; Statement: $r0 = <org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.internal.EntityManagerMessageLogger log> 
(define-const var1683 Bool (var216_isTraceEnabled/-699489552 (cast-from-var3062-to-var216 var2226))) ; Statement: $z0 = interfaceinvoke $r0.<org.hibernate.internal.EntityManagerMessageLogger: boolean isTraceEnabled()>() 
 ; Statement: if $z0 == 0 goto $r2 = r1.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.jdbc.spi.JdbcCoordinator jdbcCoordinator> 
(assert (= (ite var1683 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3923 var3979 (jdbcCoordinator/-778087690 var688)) ; Statement: $r2 = r1.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.jdbc.spi.JdbcCoordinator jdbcCoordinator> 
(define-const var1943 Bool (var3979_isReadyForSerialization/674696517 var3923)) ; Statement: $z1 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.spi.JdbcCoordinator: boolean isReadyForSerialization()>() 
 ; Statement: if $z1 != 0 goto $z2 = r1.<org.hibernate.internal.AbstractSharedSessionContract: boolean isTransactionCoordinatorShared> 
(assert (not (not (= (ite var1943 1 0) 0)))) ; Negate: Cond: $z1 != 0  
(define-const var545 var2030 var2030-init) ; Statement: $r19 = new java.lang.IllegalStateException 
(define-const var3229 String String-init) ; Statement: $r20 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3229)) ; Statement: specialinvoke $r20.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3229!1 String)
(assert (= var3229!1 ""))
(assert true)
(define-const var1331 String (append/672562846 var3229!1 "Cannot serialize ")) ; Statement: $r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot serialize ") 
(declare-const var3229!2 String)
(assert (= var3229!2 (str.++ var3229!1 "Cannot serialize ")))
(assert true)
(define-const var2495 ClassObject (getClass/1258963082 (cast-from-var2662-to-var3893 var688))) ; Statement: $r21 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2050 String (getSimpleName/-390194377 var2495)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2596 String (append/672562846 var1331 var2050)) ; Statement: $r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22) 
(declare-const var1331!1 String)
(assert (= var1331!1 (str.++ var1331 var2050)))
(assert true)
(define-const var3478 String (append/672562846 var2596 " [")) ; Statement: $r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [") 
(declare-const var2596!1 String)
(assert (= var2596!1 (str.++ var2596 " [")))
(assert true)
(define-const var386 var533 (getSessionIdentifier/-704562777 var688)) ; Statement: $r25 = virtualinvoke r1.<org.hibernate.internal.AbstractSharedSessionContract: java.util.UUID getSessionIdentifier()>() 
(assert true)
(define-const var2853 String (append/-1031950772 var3478 (cast-from-var533-to-var3893 var386))) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25) 
(declare-const var3478!1 String)
(assert (str.prefixof var3478 var3478!1))
(assert true)
(define-const var2723 String (append/672562846 var2853 "] while connected")) ; Statement: $r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] while connected") 
(declare-const var2853!1 String)
(assert (= var2853!1 (str.++ var2853 "] while connected")))
(assert true)
(define-const var798 String (toString/-2075883882 var2723)) ; Statement: $r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var545 var798)) ; Statement: specialinvoke $r19.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r29) 

(declare-const var545!1 var2030)
(declare-const var798!1 String)
 ; Statement: throw $r19 
(check-sat)
(get-model)
(get-unsat-core)
; {var216_isTraceEnabled/-699489552=([org.hibernate.internal.CoreMessageLogger], boolean), cast-from-var3062-to-var216=([org.hibernate.internal.EntityManagerMessageLogger], org.hibernate.internal.CoreMessageLogger), jdbcCoordinator/-778087690=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.jdbc.spi.JdbcCoordinator), var3979_isReadyForSerialization/674696517=([org.hibernate.engine.jdbc.spi.JdbcCoordinator], boolean), var2030-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2662-to-var3893=([org.hibernate.internal.AbstractSharedSessionContract], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), getSessionIdentifier/-704562777=([org.hibernate.internal.AbstractSharedSessionContract], java.util.UUID), append/-1031950772=([java.lang.StringBuilder, java.lang.Object], java.lang.StringBuilder), cast-from-var533-to-var3893=([java.util.UUID], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var2662=org.hibernate.internal.AbstractSharedSessionContract, var688=r1, var2175=java.io.ObjectOutputStream, var3358=r3, var3062=org.hibernate.internal.EntityManagerMessageLogger, var2226=$r0, var216=org.hibernate.internal.CoreMessageLogger, var1683=$z0, var3979=org.hibernate.engine.jdbc.spi.JdbcCoordinator, var3923=$r2, var1943=$z1, var2030=java.lang.IllegalStateException, var545=$r19, var3229=$r20, var1331=$r23, var3893=java.lang.Object, var2495=$r21, var2050=$r22, var2596=$r24, var3478=$r26, var533=java.util.UUID, var386=$r25, var2853=$r27, var2723=$r28, var798=$r29}
; {org.hibernate.internal.AbstractSharedSessionContract=var2662, r1=var688, java.io.ObjectOutputStream=var2175, r3=var3358, org.hibernate.internal.EntityManagerMessageLogger=var3062, $r0=var2226, org.hibernate.internal.CoreMessageLogger=var216, $z0=var1683, org.hibernate.engine.jdbc.spi.JdbcCoordinator=var3979, $r2=var3923, $z1=var1943, java.lang.IllegalStateException=var2030, $r19=var545, $r20=var3229, $r23=var1331, java.lang.Object=var3893, $r21=var2495, $r22=var2050, $r24=var2596, $r26=var3478, java.util.UUID=var533, $r25=var386, $r27=var2853, $r28=var2723, $r29=var798}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.internal.AbstractSharedSessionContract;	r3 := @parameter0: java.io.ObjectOutputStream;	$r0 = <org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.internal.EntityManagerMessageLogger log>;	$z0 = interfaceinvoke $r0.<org.hibernate.internal.EntityManagerMessageLogger: boolean isTraceEnabled()>();	if $z0 == 0 goto $r2 = r1.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.jdbc.spi.JdbcCoordinator jdbcCoordinator>;	$r2 = r1.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.jdbc.spi.JdbcCoordinator jdbcCoordinator>;	$z1 = interfaceinvoke $r2.<org.hibernate.engine.jdbc.spi.JdbcCoordinator: boolean isReadyForSerialization()>();	if $z1 != 0 goto $z2 = r1.<org.hibernate.internal.AbstractSharedSessionContract: boolean isTransactionCoordinatorShared>;	$r19 = new java.lang.IllegalStateException;	$r20 = new java.lang.StringBuilder;	specialinvoke $r20.<java.lang.StringBuilder: void <init>()>();	$r23 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Cannot serialize ");	$r21 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r22 = virtualinvoke $r21.<java.lang.Class: java.lang.String getSimpleName()>();	$r24 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r22);	$r26 = virtualinvoke $r24.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" [");	$r25 = virtualinvoke r1.<org.hibernate.internal.AbstractSharedSessionContract: java.util.UUID getSessionIdentifier()>();	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.Object)>($r25);	$r28 = virtualinvoke $r27.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("] while connected");	$r29 = virtualinvoke $r28.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r19.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r29);	throw $r19
;block_num 3