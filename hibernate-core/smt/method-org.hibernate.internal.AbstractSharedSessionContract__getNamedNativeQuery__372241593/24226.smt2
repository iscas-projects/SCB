(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1889 0)
(declare-sort var686 0)
(declare-sort var3494 0)
(declare-sort var3484 0)
(declare-sort var2671 0)
(declare-sort var661 0)
(declare-sort var1986 0)
(declare-sort var3785 0)
(declare-sort var1778 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun checkOpen/1243875042 (var3494) void)
(declare-fun cast-from-var1889-to-var3494 (var1889) var3494)
(declare-fun pulseTransactionCoordinator/-1393349562 (var1889) void)
(declare-fun delayedAfterCompletion/1588071635 (var1889) void)
(declare-fun factory/-778087690 (var1889) var3484)
(declare-fun getNamedQueryRepository/-457165058 (var3484) var2671)
(declare-fun getNamedSQLQueryDefinition/-880269575 (var2671 String) var661)
(declare-fun getExceptionConverter/1154594517 (var1889) var1986)
(declare-fun var3785-init () var3785)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/875830710 (var3785 String) void)
(declare-fun var1986_convert/1521314055 (var1986 var1778) var1778)
(declare-fun cast-from-var3785-to-var1778 (var3785) var1778)
(declare-const null-var1889 var1889)
(declare-const null-String String)
(declare-const null-var661 var661)
(declare-const var3044 var1889) ; Statement: r0 := @this: org.hibernate.internal.AbstractSharedSessionContract 
(assert (not (= var3044 null-var1889)))
(declare-const var3013 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3013 null-String)))
(assert true)
;(assert (checkOpen/1243875042 (cast-from-var1889-to-var3494 var3044))) ; Statement: virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void checkOpen()>() 

(declare-const var3044!1 var1889)
(assert true)
;(assert (pulseTransactionCoordinator/-1393349562 var3044!1)) ; Statement: virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void pulseTransactionCoordinator()>() 

(declare-const var3044!2 var1889)
(assert true)
;(assert (delayedAfterCompletion/1588071635 var3044!2)) ; Statement: virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void delayedAfterCompletion()>() 

(declare-const var3044!3 var1889)
(define-const var3033 var3484 (factory/-778087690 var3044!3)) ; Statement: $r1 = r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.internal.SessionFactoryImpl factory> 
(assert true)
(define-const var466 var2671 (getNamedQueryRepository/-457165058 var3033)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>() 
(assert true)
(define-const var1094 var661 (getNamedSQLQueryDefinition/-880269575 var466 var3013)) ; Statement: r4 = virtualinvoke $r3.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.spi.NamedSQLQueryDefinition getNamedSQLQueryDefinition(java.lang.String)>(r2) 
 ; Statement: if r4 == null goto $r11 = virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.spi.ExceptionConverter getExceptionConverter()>() 
(assert (= var1094 null-var661)) ; Cond: r4 == null 
(assert true)
(define-const var1682 var1986 (getExceptionConverter/1154594517 var3044!3)) ; Statement: $r11 = virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.spi.ExceptionConverter getExceptionConverter()>() 
(define-const var2250 var3785 var3785-init) ; Statement: $r5 = new java.lang.IllegalArgumentException 
(define-const var2346 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2346)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2346!1 String)
(assert (= var2346!1 ""))
(assert true)
(define-const var890 String (append/672562846 var2346!1 "No query defined for that name [")) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No query defined for that name [") 
(declare-const var2346!2 String)
(assert (= var2346!2 (str.++ var2346!1 "No query defined for that name [")))
(assert true)
(define-const var761 String (append/672562846 var890 var3013)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var890!1 String)
(assert (= var890!1 (str.++ var890 var3013)))
(assert true)
(define-const var2286 String (append/672562846 var761 "]")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var761!1 String)
(assert (= var761!1 (str.++ var761 "]")))
(assert true)
(define-const var2085 String (toString/-2075883882 var2286)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/875830710 var2250 var2085)) ; Statement: specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10) 

(declare-const var2250!1 var3785)
(declare-const var2085!1 String)
(define-const var2269 var1778 (var1986_convert/1521314055 var1682 (cast-from-var3785-to-var1778 var2250!1))) ; Statement: $r12 = interfaceinvoke $r11.<org.hibernate.engine.spi.ExceptionConverter: java.lang.RuntimeException convert(java.lang.RuntimeException)>($r5) 
 ; Statement: throw $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {checkOpen/1243875042=([org.hibernate.engine.spi.SharedSessionContractImplementor], void), cast-from-var1889-to-var3494=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.spi.SharedSessionContractImplementor), pulseTransactionCoordinator/-1393349562=([org.hibernate.internal.AbstractSharedSessionContract], void), delayedAfterCompletion/1588071635=([org.hibernate.internal.AbstractSharedSessionContract], void), factory/-778087690=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.internal.SessionFactoryImpl), getNamedQueryRepository/-457165058=([org.hibernate.internal.SessionFactoryImpl], org.hibernate.query.spi.NamedQueryRepository), getNamedSQLQueryDefinition/-880269575=([org.hibernate.query.spi.NamedQueryRepository, java.lang.String], org.hibernate.engine.spi.NamedSQLQueryDefinition), getExceptionConverter/1154594517=([org.hibernate.internal.AbstractSharedSessionContract], org.hibernate.engine.spi.ExceptionConverter), var3785-init=([], java.lang.IllegalArgumentException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/875830710=([java.lang.IllegalArgumentException, java.lang.String], void), var1986_convert/1521314055=([org.hibernate.engine.spi.ExceptionConverter, java.lang.RuntimeException], java.lang.RuntimeException), cast-from-var3785-to-var1778=([java.lang.IllegalArgumentException], java.lang.RuntimeException)}
; {var1889=org.hibernate.internal.AbstractSharedSessionContract, var3044=r0, var3013=r2, var686=null_type, var3494=org.hibernate.engine.spi.SharedSessionContractImplementor, var3484=org.hibernate.internal.SessionFactoryImpl, var3033=$r1, var2671=org.hibernate.query.spi.NamedQueryRepository, var466=$r3, var661=org.hibernate.engine.spi.NamedSQLQueryDefinition, var1094=r4, var1986=org.hibernate.engine.spi.ExceptionConverter, var1682=$r11, var3785=java.lang.IllegalArgumentException, var2250=$r5, var2346=$r6, var890=$r7, var761=$r8, var2286=$r9, var2085=$r10, var1778=java.lang.RuntimeException, var2269=$r12}
; {org.hibernate.internal.AbstractSharedSessionContract=var1889, r0=var3044, r2=var3013, null_type=var686, org.hibernate.engine.spi.SharedSessionContractImplementor=var3494, org.hibernate.internal.SessionFactoryImpl=var3484, $r1=var3033, org.hibernate.query.spi.NamedQueryRepository=var2671, $r3=var466, org.hibernate.engine.spi.NamedSQLQueryDefinition=var661, r4=var1094, org.hibernate.engine.spi.ExceptionConverter=var1986, $r11=var1682, java.lang.IllegalArgumentException=var3785, $r5=var2250, $r6=var2346, $r7=var890, $r8=var761, $r9=var2286, $r10=var2085, java.lang.RuntimeException=var1778, $r12=var2269}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.internal.AbstractSharedSessionContract;	r2 := @parameter0: java.lang.String;	virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void checkOpen()>();	virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void pulseTransactionCoordinator()>();	virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: void delayedAfterCompletion()>();	$r1 = r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.internal.SessionFactoryImpl factory>;	$r3 = virtualinvoke $r1.<org.hibernate.internal.SessionFactoryImpl: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>();	r4 = virtualinvoke $r3.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.spi.NamedSQLQueryDefinition getNamedSQLQueryDefinition(java.lang.String)>(r2);	if r4 == null goto $r11 = virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.spi.ExceptionConverter getExceptionConverter()>();	$r11 = virtualinvoke r0.<org.hibernate.internal.AbstractSharedSessionContract: org.hibernate.engine.spi.ExceptionConverter getExceptionConverter()>();	$r5 = new java.lang.IllegalArgumentException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("No query defined for that name [");	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalArgumentException: void <init>(java.lang.String)>($r10);	$r12 = interfaceinvoke $r11.<org.hibernate.engine.spi.ExceptionConverter: java.lang.RuntimeException convert(java.lang.RuntimeException)>($r5);	throw $r12
;block_num 2