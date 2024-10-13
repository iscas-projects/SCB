(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var144 0)
(declare-sort var107 0)
(declare-sort var3232 0)
(declare-sort var403 0)
(declare-sort var1615 0)
(declare-sort var584 0)
(declare-sort var3213 0)
(declare-sort var311 0)
(declare-sort var3367 0)
(declare-sort var2264 0)
(declare-sort var1884 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var311!class ClassObject)
(declare-fun <init>/372357987 (var403 var107 var3232) void)
(declare-fun cast-from-var144-to-var403 (var144) var403)
(declare-fun var107_getServiceRegistry/762402722 (var107) var1615)
(declare-fun var3213_getService/-972330729 (var3213 ClassObject) var584)
(declare-fun cast-from-var1615-to-var3213 (var1615) var3213)
(declare-fun cast-from-var584-to-var311 (var584) var311)
(declare-fun var311_getDialect/1253253595 (var311) var3367)
(declare-fun supportsRowValueConstructorSyntaxInInList/-2052866003 (var3367) Bool)
(declare-fun var2264-init () var2264)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var1884) ClassObject)
(declare-fun cast-from-var144-to-var1884 (var144) var1884)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var2264 String) void)
(declare-const null-var144 var144)
(declare-const null-var107 var107)
(declare-const null-var3232 var3232)
(declare-const var789 var144) ; Statement: r0 := @this: org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl 
(assert (not (= var789 null-var144)))
(declare-const var556 var107) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var556 null-var107)))
(declare-const var2852 var3232) ; Statement: r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var2852 null-var3232)))
(assert true)
;(assert (<init>/372357987 (cast-from-var144-to-var403 var789) var556 var2852)) ; Statement: specialinvoke r0.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2) 

(declare-const var789!1 var144)
(declare-const var556!1 var107)
(declare-const var2852!1 var3232)
(define-const var117 var1615 (var107_getServiceRegistry/762402722 var556!1)) ; Statement: $r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var3323 var584 (var3213_getService/-972330729 (cast-from-var1615-to-var3213 var117) var311!class)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;") 
(define-const var705 var311 (cast-from-var584-to-var311 var3323)) ; Statement: $r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4 
(define-const var1236 var3367 (var311_getDialect/1253253595 var705)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var3326 Bool (supportsRowValueConstructorSyntaxInInList/-2052866003 var1236)) ; Statement: $z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var3326 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var845 var2264 var2264-init) ; Statement: $r7 = new java.lang.UnsupportedOperationException 
(define-const var777 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var777)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var777!1 String)
(assert (= var777!1 ""))
(assert true)
(define-const var744 String (append/672562846 var777!1 "The ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ") 
(declare-const var777!2 String)
(assert (= var777!2 (str.++ var777!1 "The ")))
(assert true)
(define-const var2221 ClassObject (getClass/1258963082 (cast-from-var144-to-var1884 var789!1))) ; Statement: $r9 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var521 String (getSimpleName/-390194377 var2221)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var2495 String (append/672562846 var744 var521)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var744!1 String)
(assert (= var744!1 (str.++ var744 var521)))
(assert true)
(define-const var2258 String (append/672562846 var2495 " can only be used with Dialects that support IN clause row-value expressions (for composite identifiers)!")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" can only be used with Dialects that support IN clause row-value expressions (for composite identifiers)!") 
(declare-const var2495!1 String)
(assert (= var2495!1 (str.++ var2495 " can only be used with Dialects that support IN clause row-value expressions (for composite identifiers)!")))
(assert true)
(define-const var3538 String (toString/-2075883882 var2258)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var845 var3538)) ; Statement: specialinvoke $r7.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r14) 

(declare-const var845!1 var2264)
(declare-const var3538!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/372357987=([org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.hql.internal.ast.HqlSqlWalker], void), cast-from-var144-to-var403=([org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl], org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl), var107_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var3213_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var1615-to-var3213=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var584-to-var311=([org.hibernate.service.Service], org.hibernate.engine.jdbc.spi.JdbcServices), var311_getDialect/1253253595=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.dialect.Dialect), supportsRowValueConstructorSyntaxInInList/-2052866003=([org.hibernate.dialect.Dialect], boolean), var2264-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var144-to-var1884=([org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var144=org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl, var789=r0, var107=org.hibernate.engine.spi.SessionFactoryImplementor, var556=r1, var3232=org.hibernate.hql.internal.ast.HqlSqlWalker, var2852=r2, var403=org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl, var1615=org.hibernate.service.spi.ServiceRegistryImplementor, var117=$r3, var584=org.hibernate.service.Service, var3213=org.hibernate.service.ServiceRegistry, var311=org.hibernate.engine.jdbc.spi.JdbcServices, var3323=$r4, var705=$r5, var3367=org.hibernate.dialect.Dialect, var1236=r6, var3326=$z0, var2264=java.lang.UnsupportedOperationException, var845=$r7, var777=$r8, var744=$r11, var1884=java.lang.Object, var2221=$r9, var521=$r10, var2495=$r12, var2258=$r13, var3538=$r14}
; {org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl=var144, r0=var789, org.hibernate.engine.spi.SessionFactoryImplementor=var107, r1=var556, org.hibernate.hql.internal.ast.HqlSqlWalker=var3232, r2=var2852, org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl=var403, org.hibernate.service.spi.ServiceRegistryImplementor=var1615, $r3=var117, org.hibernate.service.Service=var584, org.hibernate.service.ServiceRegistry=var3213, org.hibernate.engine.jdbc.spi.JdbcServices=var311, $r4=var3323, $r5=var705, org.hibernate.dialect.Dialect=var3367, r6=var1236, $z0=var3326, java.lang.UnsupportedOperationException=var2264, $r7=var845, $r8=var777, $r11=var744, java.lang.Object=var1884, $r9=var2221, $r10=var521, $r12=var2495, $r13=var2258, $r14=var3538}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl;	r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker;	specialinvoke r0.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2);	$r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;");	$r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4;	r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>();	$z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>();	if $z0 != 0 goto return;	$r7 = new java.lang.UnsupportedOperationException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ");	$r9 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getSimpleName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" can only be used with Dialects that support IN clause row-value expressions (for composite identifiers)!");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r14);	throw $r7
;block_num 2