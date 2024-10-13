(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var691 0)
(declare-sort var2267 0)
(declare-sort var120 0)
(declare-sort var2625 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var120_getReturnedClass/-1468116676 (var120) ClassObject)
(declare-fun getClass/1258963082 (var2267) ClassObject)
(declare-fun equals/-1650223740 (var2267 var2267) Bool)
(declare-fun cast-from-ClassObject-to-var2267 (ClassObject) var2267)
(declare-fun typeResolver/-278095735 (var691) var2625)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun heuristicType/653904078 (var2625 String) var120)
(declare-fun String_valueOf/-333372740 (var2267) String)
(declare-const null-var691 var691)
(declare-const null-var2267 var2267)
(declare-const null-var120 var120)
(declare-const var2403 var691) ; Statement: r6 := @this: org.hibernate.hql.spi.id.inline.IdsClauseBuilder 
(assert (not (= var2403 null-var691)))
(declare-const var868 var2267) ; Statement: r1 := @parameter0: java.lang.Object 
(assert (not (= var868 null-var2267)))
(declare-const var1089 var120) ; Statement: r0 := @parameter1: org.hibernate.type.Type 
(assert (not (= var1089 null-var120)))
(define-const var1282 ClassObject (var120_getReturnedClass/-1468116676 var1089)) ; Statement: $r3 = interfaceinvoke r0.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var3428 ClassObject (getClass/1258963082 var868)) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var2799 Bool (equals/-1650223740 (cast-from-ClassObject-to-var2267 var1282) (cast-from-ClassObject-to-var2267 var3428))) ; Statement: $z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2) 
 ; Statement: if $z0 != 0 goto $r14 = r0 
(assert (not (not (= (ite var2799 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var781 var2625 (typeResolver/-278095735 var2403)) ; Statement: $r9 = r6.<org.hibernate.hql.spi.id.inline.IdsClauseBuilder: org.hibernate.type.TypeResolver typeResolver> 
(assert true)
(define-const var853 ClassObject (getClass/1258963082 var868)) ; Statement: $r10 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3969 String (getName/-1958580599 var853)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var3084 var120 (heuristicType/653904078 var781 var3969)) ; Statement: $r14 = virtualinvoke $r9.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r11) 
 ; Statement: goto [?= $z1 = $r14 instanceof org.hibernate.type.LiteralType] 
(assert true) ; Non Conditional
(define-const var1020 Bool true) ; Statement: $z1 = $r14 instanceof org.hibernate.type.LiteralType 
 ; Statement: if $z1 == 0 goto $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
(assert (= (ite var1020 1 0) 0)) ; Cond: $z1 == 0 
(define-const var1318 String (String_valueOf/-333372740 var868)) ; Statement: $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {var120_getReturnedClass/-1468116676=([org.hibernate.type.Type], java.lang.Class), getClass/1258963082=([java.lang.Object], java.lang.Class), equals/-1650223740=([java.lang.Object, java.lang.Object], boolean), cast-from-ClassObject-to-var2267=([java.lang.Class], java.lang.Object), typeResolver/-278095735=([org.hibernate.hql.spi.id.inline.IdsClauseBuilder], org.hibernate.type.TypeResolver), getName/-1958580599=([java.lang.Class], java.lang.String), heuristicType/653904078=([org.hibernate.type.TypeResolver, java.lang.String], org.hibernate.type.Type), String_valueOf/-333372740=([java.lang.Object], java.lang.String)}
; {var691=org.hibernate.hql.spi.id.inline.IdsClauseBuilder, var2403=r6, var2267=java.lang.Object, var868=r1, var120=org.hibernate.type.Type, var1089=r0, var1282=$r3, var3428=$r2, var2799=$z0, var2625=org.hibernate.type.TypeResolver, var781=$r9, var853=$r10, var3969=$r11, var3084=$r14, var1020=$z1, var1318=$r4}
; {org.hibernate.hql.spi.id.inline.IdsClauseBuilder=var691, r6=var2403, java.lang.Object=var2267, r1=var868, org.hibernate.type.Type=var120, r0=var1089, $r3=var1282, $r2=var3428, $z0=var2799, org.hibernate.type.TypeResolver=var2625, $r9=var781, $r10=var853, $r11=var3969, $r14=var3084, $z1=var1020, $r4=var1318}
;seq <java.lang.String: java.lang.String valueOf(java.lang.Object)>
;cnt {"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1}
;stmts r6 := @this: org.hibernate.hql.spi.id.inline.IdsClauseBuilder;	r1 := @parameter0: java.lang.Object;	r0 := @parameter1: org.hibernate.type.Type;	$r3 = interfaceinvoke r0.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$z0 = virtualinvoke $r3.<java.lang.Object: boolean equals(java.lang.Object)>($r2);	if $z0 != 0 goto $r14 = r0;	$r9 = r6.<org.hibernate.hql.spi.id.inline.IdsClauseBuilder: org.hibernate.type.TypeResolver typeResolver>;	$r10 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	$r11 = virtualinvoke $r10.<java.lang.Class: java.lang.String getName()>();	$r14 = virtualinvoke $r9.<org.hibernate.type.TypeResolver: org.hibernate.type.Type heuristicType(java.lang.String)>($r11);	goto [?= $z1 = $r14 instanceof org.hibernate.type.LiteralType];	$z1 = $r14 instanceof org.hibernate.type.LiteralType;	if $z1 == 0 goto $r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	$r4 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>(r1);	return $r4
;block_num 4