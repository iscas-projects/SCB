(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2866 0)
(declare-sort var2631 0)
(declare-sort var2970 0)
(declare-sort var2977 0)
(declare-sort var724 0)
(declare-sort var2285 0)
(declare-sort var1438 0)
(declare-sort var1944 0)
(declare-sort var1300 0)
(declare-sort var661 0)
(declare-sort var3821 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var1944!class ClassObject)
(declare-fun <init>/1690701317 (var2977 var2631 var2970) void)
(declare-fun cast-from-var2866-to-var2977 (var2866) var2977)
(declare-fun var2631_getServiceRegistry/762402722 (var2631) var724)
(declare-fun var1438_getService/-972330729 (var1438 ClassObject) var2285)
(declare-fun cast-from-var724-to-var1438 (var724) var1438)
(declare-fun cast-from-var2285-to-var1944 (var2285) var1944)
(declare-fun var1944_getDialect/1253253595 (var1944) var1300)
(declare-fun supportsRowValueConstructorSyntaxInInList/-2052866003 (var1300) Bool)
(declare-fun var661-init () var661)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getClass/1258963082 (var3821) ClassObject)
(declare-fun cast-from-var2866-to-var3821 (var2866) var3821)
(declare-fun getSimpleName/-390194377 (ClassObject) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-630064361 (var661 String) void)
(declare-const null-var2866 var2866)
(declare-const null-var2631 var2631)
(declare-const null-var2970 var2970)
(declare-const var3410 var2866) ; Statement: r0 := @this: org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl 
(assert (not (= var3410 null-var2866)))
(declare-const var2552 var2631) ; Statement: r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2552 null-var2631)))
(declare-const var606 var2970) ; Statement: r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker 
(assert (not (= var606 null-var2970)))
(assert true)
;(assert (<init>/1690701317 (cast-from-var2866-to-var2977 var3410) var2552 var606)) ; Statement: specialinvoke r0.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2) 

(declare-const var3410!1 var2866)
(declare-const var2552!1 var2631)
(declare-const var606!1 var2970)
(define-const var407 var724 (var2631_getServiceRegistry/762402722 var2552!1)) ; Statement: $r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var3323 var2285 (var1438_getService/-972330729 (cast-from-var724-to-var1438 var407) var1944!class)) ; Statement: $r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;") 
(define-const var2535 var1944 (cast-from-var2285-to-var1944 var3323)) ; Statement: $r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4 
(define-const var3519 var1300 (var1944_getDialect/1253253595 var2535)) ; Statement: r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>() 
(assert true)
(define-const var2641 Bool (supportsRowValueConstructorSyntaxInInList/-2052866003 var3519)) ; Statement: $z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>() 
 ; Statement: if $z0 != 0 goto return 
(assert (not (not (= (ite var2641 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1998 var661 var661-init) ; Statement: $r7 = new java.lang.UnsupportedOperationException 
(define-const var820 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var820)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var820!1 String)
(assert (= var820!1 ""))
(assert true)
(define-const var786 String (append/672562846 var820!1 "The ")) ; Statement: $r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ") 
(declare-const var820!2 String)
(assert (= var820!2 (str.++ var820!1 "The ")))
(assert true)
(define-const var3781 ClassObject (getClass/1258963082 (cast-from-var2866-to-var3821 var3410!1))) ; Statement: $r9 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3043 String (getSimpleName/-390194377 var3781)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getSimpleName()>() 
(assert true)
(define-const var3017 String (append/672562846 var786 var3043)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10) 
(declare-const var786!1 String)
(assert (= var786!1 (str.++ var786 var3043)))
(assert true)
(define-const var1443 String (append/672562846 var3017 " can only be used with Dialects that support IN clause row-value expressions (for composite identifiers)!")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" can only be used with Dialects that support IN clause row-value expressions (for composite identifiers)!") 
(declare-const var3017!1 String)
(assert (= var3017!1 (str.++ var3017 " can only be used with Dialects that support IN clause row-value expressions (for composite identifiers)!")))
(assert true)
(define-const var166 String (toString/-2075883882 var1443)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-630064361 var1998 var166)) ; Statement: specialinvoke $r7.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r14) 

(declare-const var1998!1 var661)
(declare-const var166!1 String)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/1690701317=([org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl, org.hibernate.engine.spi.SessionFactoryImplementor, org.hibernate.hql.internal.ast.HqlSqlWalker], void), cast-from-var2866-to-var2977=([org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl], org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl), var2631_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var1438_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var724-to-var1438=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var2285-to-var1944=([org.hibernate.service.Service], org.hibernate.engine.jdbc.spi.JdbcServices), var1944_getDialect/1253253595=([org.hibernate.engine.jdbc.spi.JdbcServices], org.hibernate.dialect.Dialect), supportsRowValueConstructorSyntaxInInList/-2052866003=([org.hibernate.dialect.Dialect], boolean), var661-init=([], java.lang.UnsupportedOperationException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2866-to-var3821=([org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl], java.lang.Object), getSimpleName/-390194377=([java.lang.Class], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-630064361=([java.lang.UnsupportedOperationException, java.lang.String], void)}
; {var2866=org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl, var3410=r0, var2631=org.hibernate.engine.spi.SessionFactoryImplementor, var2552=r1, var2970=org.hibernate.hql.internal.ast.HqlSqlWalker, var606=r2, var2977=org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl, var724=org.hibernate.service.spi.ServiceRegistryImplementor, var407=$r3, var2285=org.hibernate.service.Service, var1438=org.hibernate.service.ServiceRegistry, var1944=org.hibernate.engine.jdbc.spi.JdbcServices, var3323=$r4, var2535=$r5, var1300=org.hibernate.dialect.Dialect, var3519=r6, var2641=$z0, var661=java.lang.UnsupportedOperationException, var1998=$r7, var820=$r8, var786=$r11, var3821=java.lang.Object, var3781=$r9, var3043=$r10, var3017=$r12, var1443=$r13, var166=$r14}
; {org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl=var2866, r0=var3410, org.hibernate.engine.spi.SessionFactoryImplementor=var2631, r1=var2552, org.hibernate.hql.internal.ast.HqlSqlWalker=var2970, r2=var606, org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl=var2977, org.hibernate.service.spi.ServiceRegistryImplementor=var724, $r3=var407, org.hibernate.service.Service=var2285, org.hibernate.service.ServiceRegistry=var1438, org.hibernate.engine.jdbc.spi.JdbcServices=var1944, $r4=var3323, $r5=var2535, org.hibernate.dialect.Dialect=var1300, r6=var3519, $z0=var2641, java.lang.UnsupportedOperationException=var661, $r7=var1998, $r8=var820, $r11=var786, java.lang.Object=var3821, $r9=var3781, $r10=var3043, $r12=var3017, $r13=var1443, $r14=var166}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.hql.spi.id.inline.InlineIdsInClauseUpdateHandlerImpl;	r1 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	r2 := @parameter1: org.hibernate.hql.internal.ast.HqlSqlWalker;	specialinvoke r0.<org.hibernate.hql.spi.id.inline.AbstractInlineIdsUpdateHandlerImpl: void <init>(org.hibernate.engine.spi.SessionFactoryImplementor,org.hibernate.hql.internal.ast.HqlSqlWalker)>(r1, r2);	$r3 = interfaceinvoke r1.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r4 = interfaceinvoke $r3.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/engine/jdbc/spi/JdbcServices;");	$r5 = (org.hibernate.engine.jdbc.spi.JdbcServices) $r4;	r6 = interfaceinvoke $r5.<org.hibernate.engine.jdbc.spi.JdbcServices: org.hibernate.dialect.Dialect getDialect()>();	$z0 = virtualinvoke r6.<org.hibernate.dialect.Dialect: boolean supportsRowValueConstructorSyntaxInInList()>();	if $z0 != 0 goto return;	$r7 = new java.lang.UnsupportedOperationException;	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r11 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("The ");	$r9 = virtualinvoke r0.<java.lang.Object: java.lang.Class getClass()>();	$r10 = virtualinvoke $r9.<java.lang.Class: java.lang.String getSimpleName()>();	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r10);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" can only be used with Dialects that support IN clause row-value expressions (for composite identifiers)!");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r7.<java.lang.UnsupportedOperationException: void <init>(java.lang.String)>($r14);	throw $r7
;block_num 2