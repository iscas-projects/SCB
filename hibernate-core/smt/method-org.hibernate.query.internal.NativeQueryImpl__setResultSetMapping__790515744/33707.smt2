(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3414 0)
(declare-sort var160 0)
(declare-sort var3475 0)
(declare-sort var2898 0)
(declare-sort var3420 0)
(declare-sort var917 0)
(declare-sort var1968 0)
(declare-sort var3134 0)
(declare-sort var553 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getProducer/-1443624759 (var2898) var3475)
(declare-fun cast-from-var3414-to-var2898 (var3414) var2898)
(declare-fun var3475_getFactory/1122061256 (var3475) var3420)
(declare-fun var3420_getNamedQueryRepository/-108285413 (var3420) var917)
(declare-fun getResultSetMappingDefinition/215355223 (var917 String) var1968)
(declare-fun var3134-init () var3134)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3134 String) void)
(declare-fun cast-from-var3134-to-var553 (var3134) var553)
(declare-const null-var3414 var3414)
(declare-const null-String String)
(declare-const null-var1968 var1968)
(declare-const var44 var3414) ; Statement: r0 := @this: org.hibernate.query.internal.NativeQueryImpl 
(assert (not (= var44 null-var3414)))
(declare-const var3133 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var3133 null-String)))
(assert true)
(define-const var2442 var3475 (getProducer/-1443624759 (cast-from-var3414-to-var2898 var44))) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>() 
(define-const var3259 var3420 (var3475_getFactory/1122061256 var2442)) ; Statement: $r2 = interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var350 var917 (var3420_getNamedQueryRepository/-108285413 var3259)) ; Statement: $r4 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>() 
(assert true)
(define-const var272 var1968 (getResultSetMappingDefinition/215355223 var350 var3133)) ; Statement: r5 = virtualinvoke $r4.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.ResultSetMappingDefinition getResultSetMappingDefinition(java.lang.String)>(r3) 
 ; Statement: if r5 != null goto r6 = virtualinvoke r5.<org.hibernate.engine.ResultSetMappingDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>() 
(assert (not (not (= var272 null-var1968)))) ; Negate: Cond: r5 != null  
(define-const var1243 var3134 var3134-init) ; Statement: $r16 = new org.hibernate.MappingException 
(define-const var3413 String String-init) ; Statement: $r15 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3413)) ; Statement: specialinvoke $r15.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3413!1 String)
(assert (= var3413!1 ""))
(assert true)
(define-const var3782 String (append/672562846 var3413!1 "Unknown SqlResultSetMapping [")) ; Statement: $r11 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown SqlResultSetMapping [") 
(declare-const var3413!2 String)
(assert (= var3413!2 (str.++ var3413!1 "Unknown SqlResultSetMapping [")))
(assert true)
(define-const var1468 String (append/672562846 var3782 var3133)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3782!1 String)
(assert (= var3782!1 (str.++ var3782 var3133)))
(assert true)
(define-const var2549 String (append/672562846 var1468 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1468!1 String)
(assert (= var1468!1 (str.++ var1468 "]")))
(assert true)
(define-const var1207 String (toString/-2075883882 var2549)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var1243 var1207)) ; Statement: specialinvoke $r16.<org.hibernate.MappingException: void <init>(java.lang.String)>($r14) 

(declare-const var1243!1 var3134)
(declare-const var1207!1 String)
(define-const var3829 var553 (cast-from-var3134-to-var553 var1243!1)) ; Statement: $r17 = (java.lang.Throwable) $r16 
 ; Statement: throw $r17 
(check-sat)
(get-model)
(get-unsat-core)
; {getProducer/-1443624759=([org.hibernate.query.internal.AbstractProducedQuery], org.hibernate.engine.spi.SharedSessionContractImplementor), cast-from-var3414-to-var2898=([org.hibernate.query.internal.NativeQueryImpl], org.hibernate.query.internal.AbstractProducedQuery), var3475_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var3420_getNamedQueryRepository/-108285413=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.query.spi.NamedQueryRepository), getResultSetMappingDefinition/215355223=([org.hibernate.query.spi.NamedQueryRepository, java.lang.String], org.hibernate.engine.ResultSetMappingDefinition), var3134-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3134-to-var553=([org.hibernate.MappingException], java.lang.Throwable)}
; {var3414=org.hibernate.query.internal.NativeQueryImpl, var44=r0, var3133=r3, var160=null_type, var3475=org.hibernate.engine.spi.SharedSessionContractImplementor, var2898=org.hibernate.query.internal.AbstractProducedQuery, var2442=$r1, var3420=org.hibernate.engine.spi.SessionFactoryImplementor, var3259=$r2, var917=org.hibernate.query.spi.NamedQueryRepository, var350=$r4, var1968=org.hibernate.engine.ResultSetMappingDefinition, var272=r5, var3134=org.hibernate.MappingException, var1243=$r16, var3413=$r15, var3782=$r11, var1468=$r12, var2549=$r13, var1207=$r14, var553=java.lang.Throwable, var3829=$r17}
; {org.hibernate.query.internal.NativeQueryImpl=var3414, r0=var44, r3=var3133, null_type=var160, org.hibernate.engine.spi.SharedSessionContractImplementor=var3475, org.hibernate.query.internal.AbstractProducedQuery=var2898, $r1=var2442, org.hibernate.engine.spi.SessionFactoryImplementor=var3420, $r2=var3259, org.hibernate.query.spi.NamedQueryRepository=var917, $r4=var350, org.hibernate.engine.ResultSetMappingDefinition=var1968, r5=var272, org.hibernate.MappingException=var3134, $r16=var1243, $r15=var3413, $r11=var3782, $r12=var1468, $r13=var2549, $r14=var1207, java.lang.Throwable=var553, $r17=var3829}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.internal.NativeQueryImpl;	r3 := @parameter0: java.lang.String;	$r1 = virtualinvoke r0.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.engine.spi.SharedSessionContractImplementor getProducer()>();	$r2 = interfaceinvoke $r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r4 = interfaceinvoke $r2.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>();	r5 = virtualinvoke $r4.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.ResultSetMappingDefinition getResultSetMappingDefinition(java.lang.String)>(r3);	if r5 != null goto r6 = virtualinvoke r5.<org.hibernate.engine.ResultSetMappingDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>();	$r16 = new org.hibernate.MappingException;	$r15 = new java.lang.StringBuilder;	specialinvoke $r15.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unknown SqlResultSetMapping [");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r16.<org.hibernate.MappingException: void <init>(java.lang.String)>($r14);	$r17 = (java.lang.Throwable) $r16;	throw $r17
;block_num 2