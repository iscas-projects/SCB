(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2900 0)
(declare-sort var3538 0)
(declare-sort var2624 0)
(declare-sort var384 0)
(declare-sort var2038 0)
(declare-sort var1843 0)
(declare-sort var1270 0)
(declare-sort var2345 0)
(declare-sort var970 0)
(declare-sort var3869 0)
(declare-sort var1089 0)
(declare-sort var3957 0)
(declare-sort var968 0)
(declare-sort var1603 0)
(declare-sort var3137 0)
(declare-sort var2368 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-1951458793 (var2038 var2624 var384) void)
(declare-fun cast-from-var2900-to-var2038 (var2900) var2038)
(declare-fun var1843-init () var1843)
(declare-fun <init>/-2121252426 (var1843) void)
(declare-fun lockOptions/-1530975572 (var2900) var1843)
(declare-fun getQueryString/-1944836461 (var1270) String)
(declare-fun cast-from-var3538-to-var1270 (var3538) var1270)
(declare-fun sqlString/-1530975572 (var2900) String)
(declare-fun isCallable/2029482947 (var3538) Bool)
(declare-fun callable/-1530975572 (var2900) Bool)
(declare-fun getQuerySpaces/1515406908 (var3538) var2345)
(declare-fun var970-init () var970)
(declare-fun <init>/2032108350 (var970 var3869) void)
(declare-fun cast-from-var2345-to-var3869 (var2345) var3869)
(declare-fun cast-from-var970-to-var3869 (var970) var3869)
(declare-fun querySpaces/-1530975572 (var2900) var3869)
(declare-fun getResultSetRef/1261146708 (var3538) String)
(declare-fun var2624_getFactory/1122061256 (var2624) var3957)
(declare-fun var3957_getNamedQueryRepository/-108285413 (var3957) var968)
(declare-fun getResultSetMappingDefinition/215355223 (var968 String) var1603)
(declare-fun var3137-init () var3137)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1350304819 (var3137 String) void)
(declare-fun cast-from-var3137-to-var2368 (var3137) var2368)
(declare-const null-var2900 var2900)
(declare-const null-var3538 var3538)
(declare-const null-var2624 var2624)
(declare-const null-var384 var384)
(declare-const null-var2345 var2345)
(declare-const null-String String)
(declare-const null-var1603 var1603)
(declare-const var2004 var2900) ; Statement: r0 := @this: org.hibernate.query.internal.NativeQueryImpl 
(assert (not (= var2004 null-var2900)))
(declare-const var3405 var3538) ; Statement: r4 := @parameter0: org.hibernate.engine.spi.NamedSQLQueryDefinition 
(assert (not (= var3405 null-var3538)))
(declare-const var1461 var2624) ; Statement: r1 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor 
(assert (not (= var1461 null-var2624)))
(declare-const var2448 var384) ; Statement: r2 := @parameter2: org.hibernate.query.ParameterMetadata 
(assert (not (= var2448 null-var384)))
(assert true)
;(assert (<init>/-1951458793 (cast-from-var2900-to-var2038 var2004) var1461 var2448)) ; Statement: specialinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: void <init>(org.hibernate.engine.spi.SharedSessionContractImplementor,org.hibernate.query.ParameterMetadata)>(r1, r2) 

(declare-const var2004!1 var2900)
(declare-const var1461!1 var2624)
(declare-const var2448!1 var384)
(define-const var2777 var1843 var1843-init) ; Statement: $r31 = new org.hibernate.LockOptions 
(assert true)
;(assert (<init>/-2121252426 var2777)) ; Statement: specialinvoke $r31.<org.hibernate.LockOptions: void <init>()>() 

(declare-const var2777!1 var1843)
(declare-const var2004!2 var2900)
(assert (not (= var2004!2 null-var2900)))
(assert (= (lockOptions/-1530975572 var2004!2) var2777!1)) ; Statement: r0.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.LockOptions lockOptions> = $r31 
(assert true)
(define-const var3531 String (getQueryString/-1944836461 (cast-from-var3538-to-var1270 var3405))) ; Statement: $r5 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getQueryString()>() 
(declare-const var2004!3 var2900)
(assert (not (= var2004!3 null-var2900)))
(assert (= (sqlString/-1530975572 var2004!3) var3531)) ; Statement: r0.<org.hibernate.query.internal.NativeQueryImpl: java.lang.String sqlString> = $r5 
(assert true)
(define-const var919 Bool (isCallable/2029482947 var3405)) ; Statement: $z0 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: boolean isCallable()>() 
(declare-const var2004!4 var2900)
(assert (not (= var2004!4 null-var2900)))
(assert (= (callable/-1530975572 var2004!4) var919)) ; Statement: r0.<org.hibernate.query.internal.NativeQueryImpl: boolean callable> = $z0 
(assert true)
(define-const var3007 var2345 (getQuerySpaces/1515406908 var3405)) ; Statement: $r6 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.util.List getQuerySpaces()>() 
 ; Statement: if $r6 != null goto $r32 = new java.util.ArrayList 
(assert (not (= var3007 null-var2345))) ; Cond: $r6 != null 
(define-const var503 var970 var970-init) ; Statement: $r32 = new java.util.ArrayList 
(define-const var762 var970 var503) ; Statement: $r28 = $r32 
(assert true)
(define-const var462 var2345 (getQuerySpaces/1515406908 var3405)) ; Statement: $r7 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.util.List getQuerySpaces()>() 
(assert true)
;(assert (<init>/2032108350 var503 (cast-from-var2345-to-var3869 var462))) ; Statement: specialinvoke $r32.<java.util.ArrayList: void <init>(java.util.Collection)>($r7) 

(declare-const var503!1 var970)
(declare-const var462!1 var2345)
(assert true) ; Non Conditional
(declare-const var2004!5 var2900)
(assert (not (= var2004!5 null-var2900)))
(assert (= (querySpaces/-1530975572 var2004!5) (cast-from-var970-to-var3869 var762))) ; Statement: r0.<org.hibernate.query.internal.NativeQueryImpl: java.util.Collection querySpaces> = $r28 
(assert true)
(define-const var2588 String (getResultSetRef/1261146708 var3405)) ; Statement: $r8 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>() 
 ; Statement: if $r8 == null goto $r9 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>() 
(assert (not (= var2588 null-String))) ; Negate: Cond: $r8 == null  
(define-const var2389 var3957 (var2624_getFactory/1122061256 var1461!1)) ; Statement: $r15 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2260 var968 (var3957_getNamedQueryRepository/-108285413 var2389)) ; Statement: $r17 = interfaceinvoke $r15.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>() 
(assert true)
(define-const var1574 String (getResultSetRef/1261146708 var3405)) ; Statement: $r16 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>() 
(assert true)
(define-const var2645 var1603 (getResultSetMappingDefinition/215355223 var2260 var1574)) ; Statement: r18 = virtualinvoke $r17.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.ResultSetMappingDefinition getResultSetMappingDefinition(java.lang.String)>($r16) 
 ; Statement: if r18 != null goto $r35 = new java.util.ArrayList 
(assert (not (not (= var2645 null-var1603)))) ; Negate: Cond: r18 != null  
(define-const var447 var3137 var3137-init) ; Statement: $r34 = new org.hibernate.MappingException 
(define-const var3371 String String-init) ; Statement: $r33 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3371)) ; Statement: specialinvoke $r33.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3371!1 String)
(assert (= var3371!1 ""))
(assert true)
(define-const var69 String (append/672562846 var3371!1 "Unable to find resultset-ref definition: ")) ; Statement: $r25 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find resultset-ref definition: ") 
(declare-const var3371!2 String)
(assert (= var3371!2 (str.++ var3371!1 "Unable to find resultset-ref definition: ")))
(assert true)
(define-const var1356 String (getResultSetRef/1261146708 var3405)) ; Statement: $r24 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>() 
(assert true)
(define-const var3562 String (append/672562846 var69 var1356)) ; Statement: $r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24) 
(declare-const var69!1 String)
(assert (= var69!1 (str.++ var69 var1356)))
(assert true)
(define-const var2744 String (toString/-2075883882 var3562)) ; Statement: $r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1350304819 var447 var2744)) ; Statement: specialinvoke $r34.<org.hibernate.MappingException: void <init>(java.lang.String)>($r27) 

(declare-const var447!1 var3137)
(declare-const var2744!1 String)
(define-const var1557 var2368 (cast-from-var3137-to-var2368 var447!1)) ; Statement: $r38 = (java.lang.Throwable) $r34 
 ; Statement: throw $r38 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-1951458793=([org.hibernate.query.internal.AbstractProducedQuery, org.hibernate.engine.spi.SharedSessionContractImplementor, org.hibernate.query.ParameterMetadata], void), cast-from-var2900-to-var2038=([org.hibernate.query.internal.NativeQueryImpl], org.hibernate.query.internal.AbstractProducedQuery), var1843-init=([], org.hibernate.LockOptions), <init>/-2121252426=([org.hibernate.LockOptions], void), lockOptions/-1530975572=([org.hibernate.query.internal.NativeQueryImpl], org.hibernate.LockOptions), getQueryString/-1944836461=([org.hibernate.engine.spi.NamedQueryDefinition], java.lang.String), cast-from-var3538-to-var1270=([org.hibernate.engine.spi.NamedSQLQueryDefinition], org.hibernate.engine.spi.NamedQueryDefinition), sqlString/-1530975572=([org.hibernate.query.internal.NativeQueryImpl], java.lang.String), isCallable/2029482947=([org.hibernate.engine.spi.NamedSQLQueryDefinition], boolean), callable/-1530975572=([org.hibernate.query.internal.NativeQueryImpl], boolean), getQuerySpaces/1515406908=([org.hibernate.engine.spi.NamedSQLQueryDefinition], java.util.List), var970-init=([], java.util.ArrayList), <init>/2032108350=([java.util.ArrayList, java.util.Collection], void), cast-from-var2345-to-var3869=([java.util.List], java.util.Collection), cast-from-var970-to-var3869=([java.util.ArrayList], java.util.Collection), querySpaces/-1530975572=([org.hibernate.query.internal.NativeQueryImpl], java.util.Collection), getResultSetRef/1261146708=([org.hibernate.engine.spi.NamedSQLQueryDefinition], java.lang.String), var2624_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var3957_getNamedQueryRepository/-108285413=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.query.spi.NamedQueryRepository), getResultSetMappingDefinition/215355223=([org.hibernate.query.spi.NamedQueryRepository, java.lang.String], org.hibernate.engine.ResultSetMappingDefinition), var3137-init=([], org.hibernate.MappingException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1350304819=([org.hibernate.MappingException, java.lang.String], void), cast-from-var3137-to-var2368=([org.hibernate.MappingException], java.lang.Throwable)}
; {var2900=org.hibernate.query.internal.NativeQueryImpl, var2004=r0, var3538=org.hibernate.engine.spi.NamedSQLQueryDefinition, var3405=r4, var2624=org.hibernate.engine.spi.SharedSessionContractImplementor, var1461=r1, var384=org.hibernate.query.ParameterMetadata, var2448=r2, var2038=org.hibernate.query.internal.AbstractProducedQuery, var1843=org.hibernate.LockOptions, var2777=$r31, var1270=org.hibernate.engine.spi.NamedQueryDefinition, var3531=$r5, var919=$z0, var2345=java.util.List, var3007=$r6, var970=java.util.ArrayList, var503=$r32, var762=$r28, var462=$r7, var3869=java.util.Collection, var2588=$r8, var1089=null_type, var3957=org.hibernate.engine.spi.SessionFactoryImplementor, var2389=$r15, var968=org.hibernate.query.spi.NamedQueryRepository, var2260=$r17, var1574=$r16, var1603=org.hibernate.engine.ResultSetMappingDefinition, var2645=r18, var3137=org.hibernate.MappingException, var447=$r34, var3371=$r33, var69=$r25, var1356=$r24, var3562=$r26, var2744=$r27, var2368=java.lang.Throwable, var1557=$r38}
; {org.hibernate.query.internal.NativeQueryImpl=var2900, r0=var2004, org.hibernate.engine.spi.NamedSQLQueryDefinition=var3538, r4=var3405, org.hibernate.engine.spi.SharedSessionContractImplementor=var2624, r1=var1461, org.hibernate.query.ParameterMetadata=var384, r2=var2448, org.hibernate.query.internal.AbstractProducedQuery=var2038, org.hibernate.LockOptions=var1843, $r31=var2777, org.hibernate.engine.spi.NamedQueryDefinition=var1270, $r5=var3531, $z0=var919, java.util.List=var2345, $r6=var3007, java.util.ArrayList=var970, $r32=var503, $r28=var762, $r7=var462, java.util.Collection=var3869, $r8=var2588, null_type=var1089, org.hibernate.engine.spi.SessionFactoryImplementor=var3957, $r15=var2389, org.hibernate.query.spi.NamedQueryRepository=var968, $r17=var2260, $r16=var1574, org.hibernate.engine.ResultSetMappingDefinition=var1603, r18=var2645, org.hibernate.MappingException=var3137, $r34=var447, $r33=var3371, $r25=var69, $r24=var1356, $r26=var3562, $r27=var2744, java.lang.Throwable=var2368, $r38=var1557}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.query.internal.NativeQueryImpl;	r4 := @parameter0: org.hibernate.engine.spi.NamedSQLQueryDefinition;	r1 := @parameter1: org.hibernate.engine.spi.SharedSessionContractImplementor;	r2 := @parameter2: org.hibernate.query.ParameterMetadata;	specialinvoke r0.<org.hibernate.query.internal.AbstractProducedQuery: void <init>(org.hibernate.engine.spi.SharedSessionContractImplementor,org.hibernate.query.ParameterMetadata)>(r1, r2);	$r31 = new org.hibernate.LockOptions;	specialinvoke $r31.<org.hibernate.LockOptions: void <init>()>();	r0.<org.hibernate.query.internal.NativeQueryImpl: org.hibernate.LockOptions lockOptions> = $r31;	$r5 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getQueryString()>();	r0.<org.hibernate.query.internal.NativeQueryImpl: java.lang.String sqlString> = $r5;	$z0 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: boolean isCallable()>();	r0.<org.hibernate.query.internal.NativeQueryImpl: boolean callable> = $z0;	$r6 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.util.List getQuerySpaces()>();	if $r6 != null goto $r32 = new java.util.ArrayList;	$r32 = new java.util.ArrayList;	$r28 = $r32;	$r7 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.util.List getQuerySpaces()>();	specialinvoke $r32.<java.util.ArrayList: void <init>(java.util.Collection)>($r7);	r0.<org.hibernate.query.internal.NativeQueryImpl: java.util.Collection querySpaces> = $r28;	$r8 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>();	if $r8 == null goto $r9 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: org.hibernate.engine.query.spi.sql.NativeSQLQueryReturn[] getQueryReturns()>();	$r15 = interfaceinvoke r1.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r17 = interfaceinvoke $r15.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.query.spi.NamedQueryRepository getNamedQueryRepository()>();	$r16 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>();	r18 = virtualinvoke $r17.<org.hibernate.query.spi.NamedQueryRepository: org.hibernate.engine.ResultSetMappingDefinition getResultSetMappingDefinition(java.lang.String)>($r16);	if r18 != null goto $r35 = new java.util.ArrayList;	$r34 = new org.hibernate.MappingException;	$r33 = new java.lang.StringBuilder;	specialinvoke $r33.<java.lang.StringBuilder: void <init>()>();	$r25 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Unable to find resultset-ref definition: ");	$r24 = virtualinvoke r4.<org.hibernate.engine.spi.NamedSQLQueryDefinition: java.lang.String getResultSetRef()>();	$r26 = virtualinvoke $r25.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r24);	$r27 = virtualinvoke $r26.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r34.<org.hibernate.MappingException: void <init>(java.lang.String)>($r27);	$r38 = (java.lang.Throwable) $r34;	throw $r38
;block_num 5