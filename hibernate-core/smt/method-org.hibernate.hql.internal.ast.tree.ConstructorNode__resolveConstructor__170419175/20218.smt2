(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1658 0)
(declare-sort var1958 0)
(declare-sort var1401 0)
(declare-sort var790 0)
(declare-sort var1635 0)
(declare-sort var1578 0)
(declare-sort var2388 0)
(declare-sort var1004 0)
(declare-sort var1141 0)
(declare-sort var2658 0)
(declare-sort var3670 0)
(declare-sort var1735 0)
(declare-sort var560 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2658!class ClassObject)
(declare-fun getSessionFactoryHelper/-126384614 (var790) var1401)
(declare-fun cast-from-var1658-to-var790 (var1658) var790)
(declare-fun getImportedClassName/-754587902 (var1401 String) String)
(declare-fun var1635_isEmpty/1672864985 (String) Bool)
(declare-fun getFactory/592013559 (var1401) var1578)
(declare-fun var1578_getServiceRegistry/762402722 (var1578) var2388)
(declare-fun var1141_getService/-972330729 (var1141 ClassObject) var1004)
(declare-fun cast-from-var2388-to-var1141 (var2388) var1141)
(declare-fun cast-from-var1004-to-var2658 (var1004) var2658)
(declare-fun var2658_classForName/1513250981 (var2658 String) ClassObject)
(declare-fun constructorArgumentTypes/1194991192 (var1658) (Array Int var3670))
(declare-fun var560_getConstructor/123754610 (ClassObject (Array Int var3670)) var1735)
(declare-const null-var1658 var1658)
(declare-const null-String String)
(declare-const var3818 var1658) ; Statement: r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode 
(assert (not (= var3818 null-var1658)))
(declare-const var3145 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3145 null-String)))
(assert true)
(define-const var474 var1401 (getSessionFactoryHelper/-126384614 (cast-from-var1658-to-var790 var3818))) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var1789 String (getImportedClassName/-754587902 var474 var3145)) ; Statement: r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: java.lang.String getImportedClassName(java.lang.String)>(r1) 
(define-const var2721 Bool (var1635_isEmpty/1672864985 var1789)) ; Statement: $z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3) 
 ; Statement: if $z0 == 0 goto $r18 = r3 
(assert (not (= (ite var2721 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3871 String var3145) ; Statement: $r18 = r1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $r18 != null goto $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert (not (= var3871 null-String))) ; Cond: $r18 != null 
(assert true)
(define-const var2385 var1401 (getSessionFactoryHelper/-126384614 (cast-from-var1658-to-var790 var3818))) ; Statement: $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>() 
(assert true)
(define-const var644 var1578 (getFactory/592013559 var2385)) ; Statement: $r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3062 var2388 (var1578_getServiceRegistry/762402722 var644)) ; Statement: $r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>() 
(define-const var1840 var1004 (var1141_getService/-972330729 (cast-from-var2388-to-var1141 var3062) var2658!class)) ; Statement: $r7 = interfaceinvoke $r6.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;") 
(define-const var1168 var2658 (cast-from-var1004-to-var2658 var1840)) ; Statement: $r8 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r7 
(define-const var2927 ClassObject (var2658_classForName/1513250981 var1168 var3871)) ; Statement: r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r18) 
(define-const var1365 (Array Int var3670) (constructorArgumentTypes/1194991192 var3818)) ; Statement: $r10 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes> 
(define-const var1182 var1735 (var560_getConstructor/123754610 var2927 var1365)) ; Statement: $r11 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Constructor getConstructor(java.lang.Class,org.hibernate.type.Type[])>(r9, $r10) 
 ; Statement: return $r11 
(check-sat)
(get-model)
(get-unsat-core)
; {getSessionFactoryHelper/-126384614=([org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode], org.hibernate.hql.internal.ast.util.SessionFactoryHelper), cast-from-var1658-to-var790=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode), getImportedClassName/-754587902=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper, java.lang.String], java.lang.String), var1635_isEmpty/1672864985=([java.lang.String], boolean), getFactory/592013559=([org.hibernate.hql.internal.ast.util.SessionFactoryHelper], org.hibernate.engine.spi.SessionFactoryImplementor), var1578_getServiceRegistry/762402722=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.service.spi.ServiceRegistryImplementor), var1141_getService/-972330729=([org.hibernate.service.ServiceRegistry, java.lang.Class], org.hibernate.service.Service), cast-from-var2388-to-var1141=([org.hibernate.service.spi.ServiceRegistryImplementor], org.hibernate.service.ServiceRegistry), cast-from-var1004-to-var2658=([org.hibernate.service.Service], org.hibernate.boot.registry.classloading.spi.ClassLoaderService), var2658_classForName/1513250981=([org.hibernate.boot.registry.classloading.spi.ClassLoaderService, java.lang.String], java.lang.Class), constructorArgumentTypes/1194991192=([org.hibernate.hql.internal.ast.tree.ConstructorNode], org.hibernate.type.Type[]), var560_getConstructor/123754610=([java.lang.Class, org.hibernate.type.Type[]], java.lang.reflect.Constructor)}
; {var1658=org.hibernate.hql.internal.ast.tree.ConstructorNode, var3818=r0, var3145=r1, var1958=null_type, var1401=org.hibernate.hql.internal.ast.util.SessionFactoryHelper, var790=org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode, var474=$r2, var1789=r3, var1635=org.hibernate.internal.util.StringHelper, var2721=$z0, var3871=$r18, var2385=$r4, var1578=org.hibernate.engine.spi.SessionFactoryImplementor, var644=$r5, var2388=org.hibernate.service.spi.ServiceRegistryImplementor, var3062=$r6, var1004=org.hibernate.service.Service, var1141=org.hibernate.service.ServiceRegistry, var2658=org.hibernate.boot.registry.classloading.spi.ClassLoaderService, var1840=$r7, var1168=$r8, var2927=r9, var3670=org.hibernate.type.Type, var1365=$r10, var1735=java.lang.reflect.Constructor, var560=org.hibernate.internal.util.ReflectHelper, var1182=$r11}
; {org.hibernate.hql.internal.ast.tree.ConstructorNode=var1658, r0=var3818, r1=var3145, null_type=var1958, org.hibernate.hql.internal.ast.util.SessionFactoryHelper=var1401, org.hibernate.hql.internal.ast.tree.HqlSqlWalkerNode=var790, $r2=var474, r3=var1789, org.hibernate.internal.util.StringHelper=var1635, $z0=var2721, $r18=var3871, $r4=var2385, org.hibernate.engine.spi.SessionFactoryImplementor=var1578, $r5=var644, org.hibernate.service.spi.ServiceRegistryImplementor=var2388, $r6=var3062, org.hibernate.service.Service=var1004, org.hibernate.service.ServiceRegistry=var1141, org.hibernate.boot.registry.classloading.spi.ClassLoaderService=var2658, $r7=var1840, $r8=var1168, r9=var2927, org.hibernate.type.Type=var3670, $r10=var1365, java.lang.reflect.Constructor=var1735, org.hibernate.internal.util.ReflectHelper=var560, $r11=var1182}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.ast.tree.ConstructorNode;	r1 := @parameter0: java.lang.String;	$r2 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	r3 = virtualinvoke $r2.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: java.lang.String getImportedClassName(java.lang.String)>(r1);	$z0 = staticinvoke <org.hibernate.internal.util.StringHelper: boolean isEmpty(java.lang.String)>(r3);	if $z0 == 0 goto $r18 = r3;	$r18 = r1;	goto [?= (branch)];	if $r18 != null goto $r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$r4 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.hql.internal.ast.util.SessionFactoryHelper getSessionFactoryHelper()>();	$r5 = virtualinvoke $r4.<org.hibernate.hql.internal.ast.util.SessionFactoryHelper: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r6 = interfaceinvoke $r5.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.service.spi.ServiceRegistryImplementor getServiceRegistry()>();	$r7 = interfaceinvoke $r6.<org.hibernate.service.spi.ServiceRegistryImplementor: org.hibernate.service.Service getService(java.lang.Class)>(class "Lorg/hibernate/boot/registry/classloading/spi/ClassLoaderService;");	$r8 = (org.hibernate.boot.registry.classloading.spi.ClassLoaderService) $r7;	r9 = interfaceinvoke $r8.<org.hibernate.boot.registry.classloading.spi.ClassLoaderService: java.lang.Class classForName(java.lang.String)>($r18);	$r10 = r0.<org.hibernate.hql.internal.ast.tree.ConstructorNode: org.hibernate.type.Type[] constructorArgumentTypes>;	$r11 = staticinvoke <org.hibernate.internal.util.ReflectHelper: java.lang.reflect.Constructor getConstructor(java.lang.Class,org.hibernate.type.Type[])>(r9, $r10);	return $r11
;block_num 4