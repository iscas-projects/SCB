(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var426 0)
(declare-sort var51 0)
(declare-sort var2428 0)
(declare-sort var3542 0)
(declare-sort var1893 0)
(declare-sort var449 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/239726068 (var426) var51)
(declare-fun var51_access$000/-2102252842 (var51) var2428)
(declare-fun var2428_getFactory/1122061256 (var2428) var3542)
(declare-fun var3542_getTypeResolver/-73977883 (var3542) var1893)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun heuristicType/653904078 (var1893 String) var449)
(declare-fun var449_getName/-1292724027 (var449) String)
(declare-const null-var426 var426)
(declare-const null-ClassObject ClassObject)
(declare-const null-var449 var449)
(declare-const var2015 var426) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1 
(assert (not (= var2015 null-var426)))
(declare-const var1678 ClassObject) ; Statement: r4 := @parameter0: java.lang.Class 
(assert (not (= var1678 null-ClassObject)))
(define-const var1705 var51 (this$0/239726068 var2015)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: org.hibernate.query.criteria.internal.compile.CriteriaCompiler this$0> 
(define-const var3482 var2428 (var51_access$000/-2102252842 var1705)) ; Statement: $r2 = staticinvoke <org.hibernate.query.criteria.internal.compile.CriteriaCompiler: org.hibernate.engine.spi.SharedSessionContractImplementor access$000(org.hibernate.query.criteria.internal.compile.CriteriaCompiler)>($r1) 
(define-const var526 var3542 (var2428_getFactory/1122061256 var3482)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var1711 var1893 (var3542_getTypeResolver/-73977883 var526)) ; Statement: $r6 = interfaceinvoke r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>() 
(assert true)
(define-const var478 String (getName/-1958580599 var1678)) ; Statement: $r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1105 var449 (heuristicType/653904078 var1711 var478)) ; Statement: r7 = virtualinvoke $r6.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r5) 
 ; Statement: if r7 != null goto $r8 = interfaceinvoke r7.<org.hibernate.type.Type: java.lang.String getName()>() 
(assert (not (= var1105 null-var449))) ; Cond: r7 != null 
(define-const var1792 String (var449_getName/-1292724027 var1105)) ; Statement: $r8 = interfaceinvoke r7.<org.hibernate.type.Type: java.lang.String getName()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/239726068=([org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1], org.hibernate.query.criteria.internal.compile.CriteriaCompiler), var51_access$000/-2102252842=([org.hibernate.query.criteria.internal.compile.CriteriaCompiler], org.hibernate.engine.spi.SharedSessionContractImplementor), var2428_getFactory/1122061256=([org.hibernate.engine.spi.SharedSessionContractImplementor], org.hibernate.engine.spi.SessionFactoryImplementor), var3542_getTypeResolver/-73977883=([org.hibernate.engine.spi.SessionFactoryImplementor], org.hibernate.type.TypeResolver), getName/-1958580599=([java.lang.Class], java.lang.String), heuristicType/653904078=([org.hibernate.type.TypeResolver, java.lang.String], org.hibernate.type.Type), var449_getName/-1292724027=([org.hibernate.type.Type], java.lang.String)}
; {var426=org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1, var2015=r0, var1678=r4, var51=org.hibernate.query.criteria.internal.compile.CriteriaCompiler, var1705=$r1, var2428=org.hibernate.engine.spi.SharedSessionContractImplementor, var3482=$r2, var3542=org.hibernate.engine.spi.SessionFactoryImplementor, var526=r3, var1893=org.hibernate.type.TypeResolver, var1711=$r6, var478=$r5, var449=org.hibernate.type.Type, var1105=r7, var1792=$r8}
; {org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1=var426, r0=var2015, r4=var1678, org.hibernate.query.criteria.internal.compile.CriteriaCompiler=var51, $r1=var1705, org.hibernate.engine.spi.SharedSessionContractImplementor=var2428, $r2=var3482, org.hibernate.engine.spi.SessionFactoryImplementor=var3542, r3=var526, org.hibernate.type.TypeResolver=var1893, $r6=var1711, $r5=var478, org.hibernate.type.Type=var449, r7=var1105, $r8=var1792}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1;	r4 := @parameter0: java.lang.Class;	$r1 = r0.<org.hibernate.query.criteria.internal.compile.CriteriaCompiler$1: org.hibernate.query.criteria.internal.compile.CriteriaCompiler this$0>;	$r2 = staticinvoke <org.hibernate.query.criteria.internal.compile.CriteriaCompiler: org.hibernate.engine.spi.SharedSessionContractImplementor access$000(org.hibernate.query.criteria.internal.compile.CriteriaCompiler)>($r1);	r3 = interfaceinvoke $r2.<org.hibernate.engine.spi.SharedSessionContractImplementor: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$r6 = interfaceinvoke r3.<org.hibernate.engine.spi.SessionFactoryImplementor: org.hibernate.type.TypeResolver getTypeResolver()>();	$r5 = virtualinvoke r4.<java.lang.Class: java.lang.String getName()>();	r7 = virtualinvoke $r6.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r5);	if r7 != null goto $r8 = interfaceinvoke r7.<org.hibernate.type.Type: java.lang.String getName()>();	$r8 = interfaceinvoke r7.<org.hibernate.type.Type: java.lang.String getName()>();	return $r8
;block_num 2