(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2866 0)
(declare-sort var2621 0)
(declare-sort var2337 0)
(declare-sort var1991 0)
(declare-sort var436 0)
(declare-sort var3760 0)
(declare-sort var3308 0)
(declare-sort var207 0)
(declare-sort var3571 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var207!class ClassObject)
(declare-fun <init>/1690701317 (var1991 var2621 var2337) void)
(declare-fun cast-from-var2866-to-var1991 (var2866) var1991)
(declare-fun var2621_getServiceRegistry/762402722 (var2621) var436)
(declare-fun var3308_getService/-972330729 (var3308 ClassObject) var3760)
(declare-fun cast-from-var436-to-var3308 (var436) var3308)
(declare-fun cast-from-var3760-to-var207 (var3760) var207)
(declare-fun var207_getDialect/1253253595 (var207) var3571)
(declare-fun supportsRowValueConstructorSyntaxInInList/-2052866003 (var3571) Bool)
(declare-const null-var2866 var2866)
(declare-const null-var2621 var2621)
(declare-const null-var2337 var2337)
(declare-const var3703 var2866) ; Statement: r0 := @this: org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl 
(assert (not (= var3703 null-var2866)))
(declare-const var3664 var2621) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3664 null-var2621)))
(declare-const var1781 var2337) ; Statement: r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var1781 null-var2337)))
(assert true)
;(assert (<init>/1690701317 (cast-from-var2866-to-var1991 var3703) var3664 var1781)) ; Statement: specialinvoke r0.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2) 

(declare-const var3703!1 var2866)
(declare-const var3664!1 var2621)
(declare-const var1781!1 var2337)
(define-const var1434 var436 (var2621_getServiceRegistry/762402722 var3664!1)) ; Statement: $r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var3859 var3760 (var3308_getService/-972330729 (cast-from-var436-to-var3308 var1434) var207!class)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;") 
(define-const var3348 var207 (cast-from-var3760-to-var207 var3859)) ; Statement: $r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4 
(define-const var981 var3571 (var207_getDialect/1253253595 var3348)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var1905 Bool (supportsRowValueConstructorSyntaxInInList/-2052866003 var981)) ; Statement: $z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1905 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1690701317=([org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.hql.internal.ast.HqlSqlWalker], void), cast-from-var2866-to-var1991=([org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl], org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl), var2621_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var3308_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var436-to-var3308=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var3760-to-var207=([org.hibernate.service.Service], org.hibernate.engine.jdbc.spi.JdbcServices), var207_getDialect/1253253595=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.dialect.Dialect), supportsRowValueConstructorSyntaxInInList/-2052866003=([org.hibernate.dialect.Dialect], boolean)}
; {var2866=org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl, var3703=r0, var2621=org.hibernate.engine.spi.SessionFactoryImplementor, var3664=r1, var2337=org.hibernate.hql.internal.ast.HqlSqlWalker, var1781=r2, var1991=org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl, var436=org.hibernate.service.spi.ServiceRegistryImplementor, var1434=$r3, var3760=org.hibernate.service.Service, var3308=org.hibernate.service.ServiceRegistry, var207=org.hibernate.engine.jdbc.spi.JdbcServices, var3859=$r4, var3348=$r5, var3571=org.hibernate.dialect.Dialect, var981=r6, var1905=$z0}
; {org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl=var2866, r0=var3703, org.hibernate.engine.spi.SessionFactoryImplementor=var2621, r1=var3664, org.hibernate.hql.internal.ast.HqlSqlWalker=var2337, r2=var1781, org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl=var1991, org.hibernate.service.spi.ServiceRegistryImplementor=var436, $r3=var1434, org.hibernate.service.Service=var3760, org.hibernate.service.ServiceRegistry=var3308, org.hibernate.engine.jdbc.spi.JdbcServices=var207, $r4=var3859, $r5=var3348, org.hibernate.dialect.Dialect=var3571, r6=var981, $z0=var1905}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl;	r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker;	specialinvoke r0.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2);	$r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;");	$r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4;	r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>();	$z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>();	if $z0 != 0 goto return;	return
;block_num 2