(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1643 0)
(declare-sort var2254 0)
(declare-sort var1950 0)
(declare-sort var3644 0)
(declare-sort var3084 0)
(declare-sort var2055 0)
(declare-sort var1547 0)
(declare-sort var2112 0)
(declare-sort var436 0)
(declare-sort var772 0)
(declare-sort var922 0)
(declare-sort var3075 0)
(declare-sort var1704 0)
(declare-sort var327 0)
(declare-sort var1433 0)
(declare-sort var1481 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1951458793 (var3084 var1950 var3644) void)
(declare-fun cast-from-var1643-to-var3084 (var1643) var3084)
(declare-fun var2055-init () var2055)
(declare-fun <init>/-2121252426 (var2055) void)
(declare-fun lockOptions/-1530975572 (var1643) var2055)
(declare-fun getQueryString/-1944836461 (var1547) String)
(declare-fun cast-from-var2254-to-var1547 (var2254) var1547)
(declare-fun sqlString/-1530975572 (var1643) String)
(declare-fun isCallable/2029482947 (var2254) Bool)
(declare-fun callable/-1530975572 (var1643) Bool)
(declare-fun getQuerySpaces/1515406908 (var2254) var2112)
(declare-fun cast-from-var436-to-var772 (var436) var772)
(declare-fun querySpaces/-1530975572 (var1643) var772)
(declare-fun getResultSetRef/1261146708 (var2254) String)
(declare-fun var1950_getFactory/1122061256 (var1950) var3075)
(declare-fun var3075_getNamedQueryRepository/-108285413 (var3075) var1704)
(declare-fun getResultSetMappingDefinition/215355223 (var1704 String) var327)
(declare-fun var1433-init () var1433)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var1433 String) void)
(declare-fun cast-from-var1433-to-var1481 (var1433) var1481)
(declare-const null-var1643 var1643)
(declare-const null-var2254 var2254)
(declare-const null-var1950 var1950)
(declare-const null-var3644 var3644)
(declare-const null-var2112 var2112)
(declare-const null-var436 var436)
(declare-const null-String String)
(declare-const null-var327 var327)
(declare-const var1694 var1643) ; Statement: r0 := @this: org.hibernate.query.internal.NativeQueryImpl 
(assert (not (= var1694 null-var1643)))
(declare-const var3382 var2254) ; Statement: r4 := @parameter0: org.hibernate.engine.spi.NamedSQLQueryDefinition 
(assert (not (= var3382 null-var2254)))
(declare-const var2544 var1950) ; Statement: r1 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var2544 null-var1950)))
(declare-const var954 var3644) ; Statement: r2 := @parameter2: org.hibernate.query.ParameterMetadata 
(assert (not (= var954 null-var3644)))
(assert true)
;(assert (<init>/-1951458793 (cast-from-var1643-to-var3084 var1694) var2544 var954)) ; Statement: specialinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: void <init>(org.hibernate.engine.spi.SharedSessionContractImplementor,org.hibernate.query.ParameterMetadata)>(r1, r2) 

(declare-const var1694!1 var1643)
(declare-const var2544!1 var1950)
(declare-const var954!1 var3644)
(define-const var3113 var2055 var2055-init) ; Statement: $r31 = new org.hibernate.LockOptions 
(assert true)
;(assert (<init>/-2121252426 var3113)) ; Statement: specialinvoke $r31.<org.hibernate.LockOptions: void <init>()>() 

(declare-const var3113!1 var2055)
(declare-const var1694!2 var1643)
(assert (not (= var1694!2 null-var1643)))
(assert (= (lockOptions/-1530975572 var1694!2) var3113!1)) ; Statement: r0.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.LockOptions lockOptions> = $r31 
(assert true)
(define-const var1647 String (getQueryString/-1944836461 (cast-from-var2254-to-var1547 var3382))) ; Statement: $r5 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getQueryString()>() 
(declare-const var1694!3 var1643)
(assert (not (= var1694!3 null-var1643)))
(assert (= (sqlString/-1530975572 var1694!3) var1647)) ; Statement: r0.<org.hibernate.query.internal.NativeQueryImpl: java.lang.String sqlString> = $r5 
(assert true)
(define-const var1315 Bool (isCallable/2029482947 var3382)) ; Statement: $z0 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: boolean isCallable()>() 
(declare-const var1694!4 var1643)
(assert (not (= var1694!4 null-var1643)))
(assert (= (callable/-1530975572 var1694!4) var1315)) ; Statement: r0.<org.hibernate.query.internal.NativeQueryImpl: boolean callable> = $z0 
(assert true)
(define-const var1471 var2112 (getQuerySpaces/1515406908 var3382)) ; Statement: $r6 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.util.List getQuerySpaces()>() 
 ; Statement: if $r6 != null goto $r32 = new java.util.ArrayList 
(assert (not (not (= var1471 null-var2112)))) ; Negate: Cond: $r6 != null  
(define-const var681 var436 null-var436) ; Statement: $r28 = null 
 ; Statement: goto [?= r0.<org.hibernate.query.internal.NativeQueryImpl: java.util.Collection querySpaces> = $r28] 
(assert true) ; Non Conditional
(declare-const var1694!5 var1643)
(assert (not (= var1694!5 null-var1643)))
(assert (= (querySpaces/-1530975572 var1694!5) (cast-from-var436-to-var772 var681))) ; Statement: r0.<org.hibernate.query.internal.NativeQueryImpl: java.util.Collection querySpaces> = $r28 
(assert true)
(define-const var1697 String (getResultSetRef/1261146708 var3382)) ; Statement: $r8 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>() 
 ; Statement: if $r8 == null goto $r9 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>() 
(assert (not (= var1697 null-String))) ; Negate: Cond: $r8 == null  
(define-const var3899 var3075 (var1950_getFactory/1122061256 var2544!1)) ; Statement: $r15 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1301 var1704 (var3075_getNamedQueryRepository/-108285413 var3899)) ; Statement: $r17 = interfaceinvoke $r15.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>() 
(assert true)
(define-const var2110 String (getResultSetRef/1261146708 var3382)) ; Statement: $r16 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>() 
(assert true)
(define-const var1965 var327 (getResultSetMappingDefinition/215355223 var1301 var2110)) ; Statement: r18 = virtualinvoke $r17.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.ResultSetMappingDefinition getResultSetMappingDefinition(java.lang.String)>($r16) 
 ; Statement: if r18 != null goto $r35 = new java.util.ArrayList 
(assert (not (not (= var1965 null-var327)))) ; Negate: Cond: r18 != null  
(define-const var991 var1433 var1433-init) ; Statement: $r34 = new org.hibernate.MappingException 
(define-const var218 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var218)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var218!1 String)
(assert (= var218!1 ""))
(assert true)
(define-const var1090 String (append/672562846 var218!1 "Unable to find resultset-ref definition: ")) ; Statement: $r25 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find resultset-ref definition: ") 
(declare-const var218!2 String)
(assert (= var218!2 (str.++ var218!1 "Unable to find resultset-ref definition: ")))
(assert true)
(define-const var2311 String (getResultSetRef/1261146708 var3382)) ; Statement: $r24 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>() 
(assert true)
(define-const var1371 String (append/672562846 var1090 var2311)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var1090!1 String)
(assert (= var1090!1 (str.++ var1090 var2311)))
(assert true)
(define-const var1257 String (toString/-2075883882 var1371)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var991 var1257)) ; Statement: specialinvoke $r34.<org.hibernate.MappingException: void <init>(java.lang.String)>($r27) 

(declare-const var991!1 var1433)
(declare-const var1257!1 String)
(define-const var3125 var1481 (cast-from-var1433-to-var1481 var991!1)) ; Statement: $r38 = (java.lang.Throwable) $r34 
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1951458793=([org.hibernate.query.internal.AbstractProducedQuery, org.hibernate.engine.spi.SharedSessionContractImplementor, org.hibernate.query.ParameterMetadata], void), cast-from-var1643-to-var3084=([org.hibernate.query.internal.NativeQueryImpl], org.hibernate.query.internal.AbstractProducedQuery), var2055-init=([], org.hibernate.LockOptions), <init>/-2121252426=([org.hibernate.LockOptions], void), lockOptions/-1530975572=([org.hibernate.query.internal.NativeQueryImpl], org.hibernate.LockOptions), getQueryString/-1944836461=([org.hibernate.engine.spi.NamedQueryDefinition], java.lang.String), cast-from-var2254-to-var1547=([org.hibernate.engine.spi.NamedSQLQueryDefinition], org.hibernate.engine.spi.NamedQueryDefinition), sqlString/-1530975572=([org.hibernate.query.internal.NativeQueryImpl], java.lang.String), isCallable/2029482947=([org.hibernate.engine.spi.NamedSQLQueryDefinition], boolean), callable/-1530975572=([org.hibernate.query.internal.NativeQueryImpl], boolean), getQuerySpaces/1515406908=([org.hibernate.engine.spi.NamedSQLQueryDefinition], java.util.List), cast-from-var436-to-var772=([java.util.ArrayList], java.util.Collection), querySpaces/-1530975572=([org.hibernate.query.internal.NativeQueryImpl], java.util.Collection), getResultSetRef/1261146708=([org.hibernate.engine.spi.NamedSQLQueryDefinition], java.lang.String), var1950_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var3075_getNamedQueryRepository/-108285413=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.query.spi.NamedQueryRepository), getResultSetMappingDefinition/215355223=([org.hibernate.query.spi.NamedQueryRepository, java.lang.String], org.hibernate.engine.ResultSetMappingDefinition), var1433-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var1433-to-var1481=([org.hibernate.MappingException], java.lang.Throwable)}
; {var1643=org.hibernate.query.internal.NativeQueryImpl, var1694=r0, var2254=org.hibernate.engine.spi.NamedSQLQueryDefinition, var3382=r4, var1950=org.hibernate.engine.spi.SharedSessionContractImplementor, var2544=r1, var3644=org.hibernate.query.ParameterMetadata, var954=r2, var3084=org.hibernate.query.internal.AbstractProducedQuery, var2055=org.hibernate.LockOptions, var3113=$r31, var1547=org.hibernate.engine.spi.NamedQueryDefinition, var1647=$r5, var1315=$z0, var2112=java.util.List, var1471=$r6, var436=java.util.ArrayList, var681=$r28, var772=java.util.Collection, var1697=$r8, var922=null_type, var3075=org.hibernate.engine.spi.SessionFactoryImplementor, var3899=$r15, var1704=org.hibernate.query.spi.NamedQueryRepository, var1301=$r17, var2110=$r16, var327=org.hibernate.engine.ResultSetMappingDefinition, var1965=r18, var1433=org.hibernate.MappingException, var991=$r34, var218=$r33, var1090=$r25, var2311=$r24, var1371=$r26, var1257=$r27, var1481=java.lang.Throwable, var3125=$r38}
; {org.hibernate.query.internal.NativeQueryImpl=var1643, r0=var1694, org.hibernate.engine.spi.NamedSQLQueryDefinition=var2254, r4=var3382, org.hibernate.engine.spi.SharedSessionContractImplementor=var1950, r1=var2544, org.hibernate.query.ParameterMetadata=var3644, r2=var954, org.hibernate.query.internal.AbstractProducedQuery=var3084, org.hibernate.LockOptions=var2055, $r31=var3113, org.hibernate.engine.spi.NamedQueryDefinition=var1547, $r5=var1647, $z0=var1315, java.util.List=var2112, $r6=var1471, java.util.ArrayList=var436, $r28=var681, java.util.Collection=var772, $r8=var1697, null_type=var922, org.hibernate.engine.spi.SessionFactoryImplementor=var3075, $r15=var3899, org.hibernate.query.spi.NamedQueryRepository=var1704, $r17=var1301, $r16=var2110, org.hibernate.engine.ResultSetMappingDefinition=var327, r18=var1965, org.hibernate.MappingException=var1433, $r34=var991, $r33=var218, $r25=var1090, $r24=var2311, $r26=var1371, $r27=var1257, java.lang.Throwable=var1481, $r38=var3125}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.internal.NativeQueryImpl;	r4 := @parameter0: org.hibernate.engine.spi.NamedSQLQueryDefinition;	r1 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	r2 := @parameter2: org.hibernate.query.ParameterMetadata;	specialinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: void <init>(org.hibernate.engine.spi.SharedSessionContractImplementor,org.hibernate.query.ParameterMetadata)>(r1, r2);	$r31 = new org.hibernate.LockOptions;	specialinvoke $r31.<org.hibernate.LockOptions: void <init>()>();	r0.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.LockOptions lockOptions> = $r31;	$r5 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getQueryString()>();	r0.<org.hibernate.query.internal.NativeQueryImpl: java.lang.String sqlString> = $r5;	$z0 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: boolean isCallable()>();	r0.<org.hibernate.query.internal.NativeQueryImpl: boolean callable> = $z0;	$r6 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.util.List getQuerySpaces()>();	if $r6 != null goto $r32 = new java.util.ArrayList;	$r28 = null;	goto [?= r0.<org.hibernate.query.internal.NativeQueryImpl: java.util.Collection querySpaces> = $r28];	r0.<org.hibernate.query.internal.NativeQueryImpl: java.util.Collection querySpaces> = $r28;	$r8 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>();	if $r8 == null goto $r9 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>();	$r15 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r17 = interfaceinvoke $r15.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>();	$r16 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>();	r18 = virtualinvoke $r17.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.ResultSetMappingDefinition getResultSetMappingDefinition(java.lang.String)>($r16);	if r18 != null goto $r35 = new java.util.ArrayList;	$r34 = new org.hibernate.MappingException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find resultset-ref definition: ");	$r24 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<org.hibernate.MappingException: void <init>(java.lang.String)>($r27);	$r38 = (java.lang.Throwable) $r34;	throw $r38
;block_num 5