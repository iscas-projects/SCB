(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1964 0)
(declare-sort var3732 0)
(declare-sort var2596 0)
(declare-sort var2272 0)
(declare-sort var2406 0)
(declare-sort var2619 0)
(declare-sort var1069 0)
(declare-sort var378 0)
(declare-sort var907 0)
(declare-sort var1517 0)
(declare-sort var2398 0)
(declare-sort var1102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var907!class ClassObject)
(declare-fun <init>/1963157595 (var2406 var3732 var2596) void)
(declare-fun cast-from-var1964-to-var2406 (var1964) var2406)
(declare-fun var3732_getServiceRegistry/762402722 (var3732) var2619)
(declare-fun var378_getService/-972330729 (var378 ClassObject) var1069)
(declare-fun cast-from-var2619-to-var378 (var2619) var378)
(declare-fun cast-from-var1069-to-var907 (var1069) var907)
(declare-fun var907_getDialect/1253253595 (var907) var1517)
(declare-fun supportsNonQueryWithCTE/641183016 (var1517) Bool)
(declare-fun var2398-init () var2398)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1102) ClassObject)
(declare-fun cast-from-var1964-to-var1102 (var1964) var1102)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2398 String) void)
(declare-const null-var1964 var1964)
(declare-const null-var3732 var3732)
(declare-const null-var2596 var2596)
(declare-const null-String String)
(declare-const var2922 var1964) ; Statement: r0 := @this: org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler 
(assert (not (= var2922 null-var1964)))
(declare-const var703 var3732) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var703 null-var3732)))
(declare-const var3231 var2596) ; Statement: r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var3231 null-var2596)))
(declare-const var1863 String) ; Statement: r11 := @parameter2: java.lang.String 
(assert (not (= var1863 null-String)))
(declare-const var2427 String) ; Statement: r12 := @parameter3: java.lang.String 
(assert (not (= var2427 null-String)))
(assert true)
;(assert (<init>/1963157595 (cast-from-var1964-to-var2406 var2922) var703 var3231)) ; Statement: specialinvoke r0.<org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2) 

(declare-const var2922!1 var1964)
(declare-const var703!1 var3732)
(declare-const var3231!1 var2596)
(define-const var3439 var2619 (var3732_getServiceRegistry/762402722 var703!1)) ; Statement: $r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var833 var1069 (var378_getService/-972330729 (cast-from-var2619-to-var378 var3439) var907!class)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;") 
(define-const var2481 var907 (cast-from-var1069-to-var907 var833)) ; Statement: $r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4 
(define-const var2281 var1517 (var907_getDialect/1253253595 var2481)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var3898 Bool (supportsNonQueryWithCTE/641183016 var2281)) ; Statement: $z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsNonQueryWithCTE()>() 
 ; Statement: if $z0 != 0 goto $z1 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsValuesList()>() 
(assert (not (not (= (ite var3898 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2908 var2398 var2398-init) ; Statement: $r29 = new java.lang.UnsupportedOperationException 
(define-const var1367 String String-init) ; Statement: $r30 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1367)) ; Statement: specialinvoke $r30.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1367!1 String)
(assert (= var1367!1 ""))
(assert true)
(define-const var3600 String (append/672562846 var1367!1 "The ")) ; Statement: $r33 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ") 
(declare-const var1367!2 String)
(assert (= var1367!2 (str.++ var1367!1 "The ")))
(assert true)
(define-const var3857 ClassObject (getClass/1258963082 (cast-from-var1964-to-var1102 var2922!1))) ; Statement: $r31 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3490 String (getSimpleName/-390194377 var3857)) ; Statement: $r32 = virtualinvoke $r31.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2630 String (append/672562846 var3600 var3490)) ; Statement: $r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32) 
(declare-const var3600!1 String)
(assert (= var3600!1 (str.++ var3600 var3490)))
(assert true)
(define-const var3971 String (append/672562846 var2630 " can only be used with Dialects that support CTE that can take UPDATE or DELETE statements as well!")) ; Statement: $r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" can only be used with Dialects that support CTE that can take UPDATE or DELETE statements as well!") 
(declare-const var2630!1 String)
(assert (= var2630!1 (str.++ var2630 " can only be used with Dialects that support CTE that can take UPDATE or DELETE statements as well!")))
(assert true)
(define-const var2802 String (toString/-2075883882 var3971)) ; Statement: $r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var2908 var2802)) ; Statement: specialinvoke $r29.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r36) 

(declare-const var2908!1 var2398)
(declare-const var2802!1 String)
 ; Statement: throw $r29 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1963157595=([org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.hql.internal.ast.HqlSqlWalker], void), cast-from-var1964-to-var2406=([org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler], org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler), var3732_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var378_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2619-to-var378=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var1069-to-var907=([org.hibernate.service.Service], org.hibernate.engine.jdbc.spi.JdbcServices), var907_getDialect/1253253595=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.dialect.Dialect), supportsNonQueryWithCTE/641183016=([org.hibernate.dialect.Dialect], boolean), var2398-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1964-to-var1102=([org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var1964=org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler, var2922=r0, var3732=org.hibernate.engine.spi.SessionFactoryImplementor, var703=r1, var2596=org.hibernate.hql.internal.ast.HqlSqlWalker, var3231=r2, var1863=r11, var2272=null_type, var2427=r12, var2406=org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler, var2619=org.hibernate.service.spi.ServiceRegistryImplementor, var3439=$r3, var1069=org.hibernate.service.Service, var378=org.hibernate.service.ServiceRegistry, var907=org.hibernate.engine.jdbc.spi.JdbcServices, var833=$r4, var2481=$r5, var1517=org.hibernate.dialect.Dialect, var2281=r6, var3898=$z0, var2398=java.lang.UnsupportedOperationException, var2908=$r29, var1367=$r30, var3600=$r33, var1102=java.lang.Object, var3857=$r31, var3490=$r32, var2630=$r34, var3971=$r35, var2802=$r36}
; {org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler=var1964, r0=var2922, org.hibernate.engine.spi.SessionFactoryImplementor=var3732, r1=var703, org.hibernate.hql.internal.ast.HqlSqlWalker=var2596, r2=var3231, r11=var1863, null_type=var2272, r12=var2427, org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler=var2406, org.hibernate.service.spi.ServiceRegistryImplementor=var2619, $r3=var3439, org.hibernate.service.Service=var1069, org.hibernate.service.ServiceRegistry=var378, org.hibernate.engine.jdbc.spi.JdbcServices=var907, $r4=var833, $r5=var2481, org.hibernate.dialect.Dialect=var1517, r6=var2281, $z0=var3898, java.lang.UnsupportedOperationException=var2398, $r29=var2908, $r30=var1367, $r33=var3600, java.lang.Object=var1102, $r31=var3857, $r32=var3490, $r34=var2630, $r35=var3971, $r36=var2802}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.spi.id.cte.AbstractCteValuesListBulkIdHandler;	r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker;	r11 := @parameter2: java.lang.String;	r12 := @parameter3: java.lang.String;	specialinvoke r0.<org.hibernate.hql.spi.id.AbstractIdsBulkIdHandler: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2);	$r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;");	$r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4;	r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>();	$z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsNonQueryWithCTE()>();	if $z0 != 0 goto $z1 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsValuesList()>();	$r29 = new java.lang.UnsupportedOperationException;	$r30 = new java.lang.StringBuilder;	specialinvoke $r30.<java.lang.StringBuilder: void <init>()>();	$r33 = virtualinvoke $r30.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ");	$r31 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r32 = virtualinvoke $r31.<java.lang.Class: java.lang.String getSimpleName()>();	$r34 = virtualinvoke $r33.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r32);	$r35 = virtualinvoke $r34.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" can only be used with Dialects that support CTE that can take UPDATE or DELETE statements as well!");	$r36 = virtualinvoke $r35.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r29.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r36);	throw $r29
;block_num 2