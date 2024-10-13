(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var500 0)
(declare-sort var2976 0)
(declare-sort var2970 0)
(declare-sort var1072 0)
(declare-sort var774 0)
(declare-sort var2757 0)
(declare-sort var2381 0)
(declare-sort var741 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2381-init () var2381)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getName/-1958580599 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/796187277 (var2381 String var741) void)
(declare-fun cast-from-var2757-to-var741 (var2757) var741)
(declare-fun cast-from-var2381-to-var741 (var2381) var741)
(declare-const null-var500 var500)
(declare-const null-ClassObject ClassObject)
(declare-const null-var2976 var2976)
(declare-const null-var2970 var2970)
(declare-const null-var1072 var1072)
(declare-const null-var774 var774)
(declare-const var500-ENTITY_PERSISTER_CONSTRUCTOR_ARGS (Array Int ClassObject))
(declare-const null-var2757 var2757)
(declare-const var1385 var500) ; Statement: r32 := @this: org.hibernate.persister.internal.PersisterFactoryImpl 
(assert (not (= var1385 null-var500)))
(declare-const var3344 ClassObject) ; Statement: r0 := @parameter0: java.lang.Class 
(assert (not (= var3344 null-ClassObject)))
(declare-const var1115 var2976) ; Statement: r3 := @parameter1: org.hibernate.mapping.PersistentClass 
(assert (not (= var1115 null-var2976)))
(declare-const var3842 var2970) ; Statement: r4 := @parameter2: org.hibernate.cache.spi.access.EntityDataAccess 
(assert (not (= var3842 null-var2970)))
(declare-const var1585 var1072) ; Statement: r5 := @parameter3: org.hibernate.cache.spi.access.NaturalIdDataAccess 
(assert (not (= var1585 null-var1072)))
(declare-const var426 var774) ; Statement: r6 := @parameter4: org.hibernate.persister.spi.PersisterCreationContext 
(assert (not (= var426 null-var774)))
(define-const var1768 (Array Int ClassObject) var500-ENTITY_PERSISTER_CONSTRUCTOR_ARGS) ; Statement: $r1 = <org.hibernate.persister.internal.PersisterFactoryImpl: java.lang.Class[] ENTITY_PERSISTER_CONSTRUCTOR_ARGS> 
(assert true) ; Handling Exception: java.lang.Throwable 
(declare-const var25 var2757) ; Statement: $r9 := @caughtexception 
(assert (not (= var25 null-var2757)))
(define-const var3996 var2381 var2381-init) ; Statement: $r39 = new org.hibernate.MappingException 
(define-const var3667 String String-init) ; Statement: $r38 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3667)) ; Statement: specialinvoke $r38.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3667!1 String)
(assert (= var3667!1 ""))
(assert true)
(define-const var1389 String (append/672562846 var3667!1 "Could not get constructor for ")) ; Statement: $r13 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get constructor for ") 
(declare-const var3667!2 String)
(assert (= var3667!2 (str.++ var3667!1 "Could not get constructor for ")))
(assert true)
(define-const var2694 String (getName/-1958580599 var3344)) ; Statement: $r12 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1589 String (append/672562846 var1389 var2694)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12) 
(declare-const var1389!1 String)
(assert (= var1389!1 (str.++ var1389 var2694)))
(assert true)
(define-const var2683 String (toString/-2075883882 var1589)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/796187277 var3996 var2683 (cast-from-var2757-to-var741 var25))) ; Statement: specialinvoke $r39.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9) 

(declare-const var3996!1 var2381)
(declare-const var2683!1 String)
(declare-const var25!1 var2757)
(define-const var2608 var741 (cast-from-var2381-to-var741 var3996!1)) ; Statement: $r43 = (java.lang.Throwable) $r39 
 ; Statement: throw $r43 
(check-sat)
(get-model)
(get-unsat-core)
; {var2381-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getName/-1958580599=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/796187277=([org.hibernate.MappingException, java.lang.String, java.lang.Throwable], void), cast-from-var2757-to-var741=([java.lang.Exception], java.lang.Throwable), cast-from-var2381-to-var741=([org.hibernate.MappingException], java.lang.Throwable)}
; {var500=org.hibernate.persister.internal.PersisterFactoryImpl, var1385=r32, var3344=r0, var2976=org.hibernate.mapping.PersistentClass, var1115=r3, var2970=org.hibernate.cache.spi.access.EntityDataAccess, var3842=r4, var1072=org.hibernate.cache.spi.access.NaturalIdDataAccess, var1585=r5, var774=org.hibernate.persister.spi.PersisterCreationContext, var426=r6, var1768=$r1, var2757=java.lang.Exception, var25=$r9, var2381=org.hibernate.MappingException, var3996=$r39, var3667=$r38, var1389=$r13, var2694=$r12, var1589=$r14, var2683=$r15, var741=java.lang.Throwable, var2608=$r43}
; {org.hibernate.persister.internal.PersisterFactoryImpl=var500, r32=var1385, r0=var3344, org.hibernate.mapping.PersistentClass=var2976, r3=var1115, org.hibernate.cache.spi.access.EntityDataAccess=var2970, r4=var3842, org.hibernate.cache.spi.access.NaturalIdDataAccess=var1072, r5=var1585, org.hibernate.persister.spi.PersisterCreationContext=var774, r6=var426, $r1=var1768, java.lang.Exception=var2757, $r9=var25, org.hibernate.MappingException=var2381, $r39=var3996, $r38=var3667, $r13=var1389, $r12=var2694, $r14=var1589, $r15=var2683, java.lang.Throwable=var741, $r43=var2608}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r32 := @this: org.hibernate.persister.internal.PersisterFactoryImpl;	r0 := @parameter0: java.lang.Class;	r3 := @parameter1: org.hibernate.mapping.PersistentClass;	r4 := @parameter2: org.hibernate.cache.spi.access.EntityDataAccess;	r5 := @parameter3: org.hibernate.cache.spi.access.NaturalIdDataAccess;	r6 := @parameter4: org.hibernate.persister.spi.PersisterCreationContext;	$r1 = <org.hibernate.persister.internal.PersisterFactoryImpl: java.lang.Class[] ENTITY_PERSISTER_CONSTRUCTOR_ARGS>;	$r9 := @caughtexception;	$r39 = new org.hibernate.MappingException;	$r38 = new java.lang.StringBuilder;	specialinvoke $r38.<java.lang.StringBuilder: void <init>()>();	$r13 = virtualinvoke $r38.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Could not get constructor for ");	$r12 = virtualinvoke r0.<java.lang.Class: java.lang.String getName()>();	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r12);	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r39.<org.hibernate.MappingException: void <init>(java.lang.String,java.lang.Throwable)>($r15, $r9);	$r43 = (java.lang.Throwable) $r39;	throw $r43
;block_num 2