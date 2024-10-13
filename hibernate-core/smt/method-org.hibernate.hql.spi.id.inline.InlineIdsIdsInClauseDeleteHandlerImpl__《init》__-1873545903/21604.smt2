(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3344 0)
(declare-sort var113 0)
(declare-sort var3569 0)
(declare-sort var2334 0)
(declare-sort var3754 0)
(declare-sort var2392 0)
(declare-sort var862 0)
(declare-sort var1797 0)
(declare-sort var3580 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1797!class ClassObject)
(declare-fun <init>/372357987 (var2334 var113 var3569) void)
(declare-fun cast-from-var3344-to-var2334 (var3344) var2334)
(declare-fun var113_getServiceRegistry/762402722 (var113) var3754)
(declare-fun var862_getService/-972330729 (var862 ClassObject) var2392)
(declare-fun cast-from-var3754-to-var862 (var3754) var862)
(declare-fun cast-from-var2392-to-var1797 (var2392) var1797)
(declare-fun var1797_getDialect/1253253595 (var1797) var3580)
(declare-fun supportsRowValueConstructorSyntaxInInList/-2052866003 (var3580) Bool)
(declare-const null-var3344 var3344)
(declare-const null-var113 var113)
(declare-const null-var3569 var3569)
(declare-const var3114 var3344) ; Statement: r0 := @this: org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl 
(assert (not (= var3114 null-var3344)))
(declare-const var2703 var113) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2703 null-var113)))
(declare-const var2981 var3569) ; Statement: r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var2981 null-var3569)))
(assert true)
;(assert (<init>/372357987 (cast-from-var3344-to-var2334 var3114) var2703 var2981)) ; Statement: specialinvoke r0.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2) 

(declare-const var3114!1 var3344)
(declare-const var2703!1 var113)
(declare-const var2981!1 var3569)
(define-const var3355 var3754 (var113_getServiceRegistry/762402722 var2703!1)) ; Statement: $r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var1544 var2392 (var862_getService/-972330729 (cast-from-var3754-to-var862 var3355) var1797!class)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;") 
(define-const var658 var1797 (cast-from-var2392-to-var1797 var1544)) ; Statement: $r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4 
(define-const var3982 var3580 (var1797_getDialect/1253253595 var658)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var3208 Bool (supportsRowValueConstructorSyntaxInInList/-2052866003 var3982)) ; Statement: $z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var3208 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/372357987=([org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.hql.internal.ast.HqlSqlWalker], void), cast-from-var3344-to-var2334=([org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl], org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl), var113_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var862_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var3754-to-var862=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var2392-to-var1797=([org.hibernate.service.Service], org.hibernate.engine.jdbc.spi.JdbcServices), var1797_getDialect/1253253595=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.dialect.Dialect), supportsRowValueConstructorSyntaxInInList/-2052866003=([org.hibernate.dialect.Dialect], boolean)}
; {var3344=org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl, var3114=r0, var113=org.hibernate.engine.spi.SessionFactoryImplementor, var2703=r1, var3569=org.hibernate.hql.internal.ast.HqlSqlWalker, var2981=r2, var2334=org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl, var3754=org.hibernate.service.spi.ServiceRegistryImplementor, var3355=$r3, var2392=org.hibernate.service.Service, var862=org.hibernate.service.ServiceRegistry, var1797=org.hibernate.engine.jdbc.spi.JdbcServices, var1544=$r4, var658=$r5, var3580=org.hibernate.dialect.Dialect, var3982=r6, var3208=$z0}
; {org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl=var3344, r0=var3114, org.hibernate.engine.spi.SessionFactoryImplementor=var113, r1=var2703, org.hibernate.hql.internal.ast.HqlSqlWalker=var3569, r2=var2981, org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl=var2334, org.hibernate.service.spi.ServiceRegistryImplementor=var3754, $r3=var3355, org.hibernate.service.Service=var2392, org.hibernate.service.ServiceRegistry=var862, org.hibernate.engine.jdbc.spi.JdbcServices=var1797, $r4=var1544, $r5=var658, org.hibernate.dialect.Dialect=var3580, r6=var3982, $z0=var3208}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.spi.id.inline.InlineIdsIdsInClauseDeleteHandlerImpl;	r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker;	specialinvoke r0.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsDeleteHandlerImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2);	$r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;");	$r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4;	r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>();	$z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>();	if $z0 != 0 goto return;	return
;block_num 2