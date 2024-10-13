(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2693 0)
(declare-sort var1109 0)
(declare-sort var671 0)
(declare-sort var3609 0)
(declare-sort var3603 0)
(declare-sort var3365 0)
(declare-sort var2523 0)
(declare-sort var1227 0)
(declare-sort var72 0)
(declare-sort var14 0)
(declare-sort var1150 0)
(declare-sort var3081 0)
(declare-sort var3944 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var14!class ClassObject)
(declare-fun getSessionFactoryHelper/-126384614 (var3609) var671)
(declare-fun cast-from-var2693-to-var3609 (var2693) var3609)
(declare-fun getImportedClassName/-754587902 (var671 String) String)
(declare-fun var3603_isEmpty/1672864985 (String) Bool)
(declare-fun getFactory/592013559 (var671) var3365)
(declare-fun var3365_getServiceRegistry/762402722 (var3365) var2523)
(declare-fun var72_getService/-972330729 (var72 ClassObject) var1227)
(declare-fun cast-from-var2523-to-var72 (var2523) var72)
(declare-fun cast-from-var1227-to-var14 (var1227) var14)
(declare-fun var14_classForName/1513250981 (var14 String) ClassObject)
(declare-fun constructorArgumentTypes/1194991192 (var2693) (Array Int var1150))
(declare-fun var3944_getConstructor/123754610 (ClassObject (Array Int var1150)) var3081)
(declare-const null-var2693 var2693)
(declare-const null-String String)
(declare-const var1255 var2693) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode 
(assert (not (= var1255 null-var2693)))
(declare-const var3466 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3466 null-String)))
(assert true)
(define-const var1497 var671 (getSessionFactoryHelper/-126384614 (cast-from-var2693-to-var3609 var1255))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var2154 String (getImportedClassName/-754587902 var1497 var3466)) ; Statement: r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: java.lang.String getImportedClassName(java.lang.String)>(r1) 
(define-const var2213 Bool (var3603_isEmpty/1672864985 var2154)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $r18 = r3 
(assert (= (ite var2213 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3720 String var2154) ; Statement: $r18 = r3 
(assert true) ; Non Conditional
 ; Statement: if $r18 != null goto $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert (not (= var3720 null-String))) ; Cond: $r18 != null 
(assert true)
(define-const var663 var671 (getSessionFactoryHelper/-126384614 (cast-from-var2693-to-var3609 var1255))) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var2570 var3365 (getFactory/592013559 var663)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3583 var2523 (var3365_getServiceRegistry/762402722 var2570)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var541 var1227 (var72_getService/-972330729 (cast-from-var2523-to-var72 var3583) var14!class)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var1752 var14 (cast-from-var1227-to-var14 var541)) ; Statement: $r8 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r7 
(define-const var3758 ClassObject (var14_classForName/1513250981 var1752 var3720)) ; Statement: r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r18) 
(define-const var594 (Array Int var1150) (constructorArgumentTypes/1194991192 var1255)) ; Statement: $r10 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes> 
(define-const var2602 var3081 (var3944_getConstructor/123754610 var3758 var594)) ; Statement: $r11 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Constructor getConstructor(java.lang.Class,org.hibernate.type.Type[])>(r9, $r10) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getSessionFactoryHelper/-126384614=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), cast-from-var2693-to-var3609=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode), getImportedClassName/-754587902=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper, java.lang.String], java.lang.String), var3603_isEmpty/1672864985=([java.lang.String], boolean), getFactory/592013559=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper], org.hibernate.engine.spi.SessionFactoryImplementor), var3365_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var72_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2523-to-var72=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var1227-to-var14=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var14_classForName/1513250981=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.lang.Class), constructorArgumentTypes/1194991192=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.type.Type[]), var3944_getConstructor/123754610=([java.lang.Class, org.hibernate.type.Type[]], java.lang.reflect.Constructor)}
; {var2693=org.hibernate.hql.internal.ast.tree.ConstructorNode, var1255=r0, var3466=r1, var1109=null_type, var671=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var3609=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var1497=$r2, var2154=r3, var3603=org.hibernate.internal.util.StringHelper, var2213=$z0, var3720=$r18, var663=$r4, var3365=org.hibernate.engine.spi.SessionFactoryImplementor, var2570=$r5, var2523=org.hibernate.service.spi.ServiceRegistryImplementor, var3583=$r6, var1227=org.hibernate.service.Service, var72=org.hibernate.service.ServiceRegistry, var14=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var541=$r7, var1752=$r8, var3758=r9, var1150=org.hibernate.type.Type, var594=$r10, var3081=java.lang.reflect.Constructor, var3944=org.hibernate.internal.util.ReflectHelper, var2602=$r11}
; {org.hibernate.hql.internal.ast.tree.ConstructorNode=var2693, r0=var1255, r1=var3466, null_type=var1109, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var671, org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var3609, $r2=var1497, r3=var2154, org.hibernate.internal.util.StringHelper=var3603, $z0=var2213, $r18=var3720, $r4=var663, org.hibernate.engine.spi.SessionFactoryImplementor=var3365, $r5=var2570, org.hibernate.service.spi.ServiceRegistryImplementor=var2523, $r6=var3583, org.hibernate.service.Service=var1227, org.hibernate.service.ServiceRegistry=var72, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var14, $r7=var541, $r8=var1752, r9=var3758, org.hibernate.type.Type=var1150, $r10=var594, java.lang.reflect.Constructor=var3081, org.hibernate.internal.util.ReflectHelper=var3944, $r11=var2602}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: java.lang.String getImportedClassName(java.lang.String)>(r1);	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3);	if $z0 == 0 goto $r18 = r3;	$r18 = r3;	if $r18 != null goto $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r7 = interfaceinvoke $r6.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	$r8 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r7;	r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r18);	$r10 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes>;	$r11 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Constructor getConstructor(java.lang.Class,org.hibernate.type.Type[])>(r9, $r10);	return $r11
;block_num 4