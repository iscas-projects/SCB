(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2346 0)
(declare-sort var3091 0)
(declare-sort var3319 0)
(declare-sort var2740 0)
(declare-sort var24 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var3091-to-var2346 (var3091) var2346)
(declare-fun collectionRole/-1521350829 (var2346) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-fun persister/-1521350829 (var2346) var3319)
(declare-fun var3319_getKeyType/-1088195622 (var3319) var2740)
(declare-fun key/-1521350829 (var2346) var24)
(declare-fun var2740_compare/2041770427 (var2740 var3091 var3091) Int)
(declare-fun cast-from-var24-to-var3091 (var24) var3091)
(declare-const null-var2346 var2346)
(declare-const null-var3091 var3091)
(declare-const var3622 var2346) ; Statement: r2 := @this: org.hibernate.action.internal.CollectionAction 
(assert (not (= var3622 null-var2346)))
(declare-const var508 var3091) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var508 null-var3091)))
(define-const var2665 var2346 (cast-from-var3091-to-var2346 var508)) ; Statement: r1 = (org.hibernate.action.internal.CollectionAction) r0 
(define-const var1737 String (collectionRole/-1521350829 var3622)) ; Statement: $r4 = r2.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole> 
(define-const var2528 String (collectionRole/-1521350829 var2665)) ; Statement: $r3 = r1.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole> 
(assert true)
(define-const var1247 Int (compareTo/1411385946 var1737 var2528)) ; Statement: i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3) 
(assert (let ((this<other (str.< var1737 var2528)) (this<=other (str.<= var1737 var2528)) (compareRes (compareTo/1411385946 var1737 var2528))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 == 0 goto $r5 = r2.<org.hibernate.action.internal.CollectionAction: org.hibernate.persister.collection.CollectionPersister persister> 
(assert (= var1247 0)) ; Cond: i0 == 0 
(define-const var556 var3319 (persister/-1521350829 var3622)) ; Statement: $r5 = r2.<org.hibernate.action.internal.CollectionAction: org.hibernate.persister.collection.CollectionPersister persister> 
(define-const var704 var2740 (var3319_getKeyType/-1088195622 var556)) ; Statement: $r8 = interfaceinvoke $r5.<org.hibernate.persister.collection.CollectionPersister: org.hibernate.type.Type getKeyType()>() 
(define-const var1966 var24 (key/-1521350829 var3622)) ; Statement: $r7 = r2.<org.hibernate.action.internal.CollectionAction: java.io.Serializable key> 
(define-const var3880 var24 (key/-1521350829 var2665)) ; Statement: $r6 = r1.<org.hibernate.action.internal.CollectionAction: java.io.Serializable key> 
(define-const var735 Int (var2740_compare/2041770427 var704 (cast-from-var24-to-var3091 var1966) (cast-from-var24-to-var3091 var3880))) ; Statement: $i1 = interfaceinvoke $r8.<org.hibernate.type.Type: int compare(java.lang.Object,java.lang.Object)>($r7, $r6) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var3091-to-var2346=([java.lang.Object], org.hibernate.action.internal.CollectionAction), collectionRole/-1521350829=([org.hibernate.action.internal.CollectionAction], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int), persister/-1521350829=([org.hibernate.action.internal.CollectionAction], org.hibernate.persister.collection.CollectionPersister), var3319_getKeyType/-1088195622=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.type.Type), key/-1521350829=([org.hibernate.action.internal.CollectionAction], java.io.Serializable), var2740_compare/2041770427=([org.hibernate.type.Type, java.lang.Object, java.lang.Object], int), cast-from-var24-to-var3091=([java.io.Serializable], java.lang.Object)}
; {var2346=org.hibernate.action.internal.CollectionAction, var3622=r2, var3091=java.lang.Object, var508=r0, var2665=r1, var1737=$r4, var2528=$r3, var1247=i0, var3319=org.hibernate.persister.collection.CollectionPersister, var556=$r5, var2740=org.hibernate.type.Type, var704=$r8, var24=java.io.Serializable, var1966=$r7, var3880=$r6, var735=$i1}
; {org.hibernate.action.internal.CollectionAction=var2346, r2=var3622, java.lang.Object=var3091, r0=var508, r1=var2665, $r4=var1737, $r3=var2528, i0=var1247, org.hibernate.persister.collection.CollectionPersister=var3319, $r5=var556, org.hibernate.type.Type=var2740, $r8=var704, java.io.Serializable=var24, $r7=var1966, $r6=var3880, $i1=var735}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.action.internal.CollectionAction;	r0 := @parameter0: java.lang.Object;	r1 = (org.hibernate.action.internal.CollectionAction) r0;	$r4 = r2.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole>;	$r3 = r1.<org.hibernate.action.internal.CollectionAction: java.lang.String collectionRole>;	i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3);	if i0 == 0 goto $r5 = r2.<org.hibernate.action.internal.CollectionAction: org.hibernate.persister.collection.CollectionPersister persister>;	$r5 = r2.<org.hibernate.action.internal.CollectionAction: org.hibernate.persister.collection.CollectionPersister persister>;	$r8 = interfaceinvoke $r5.<org.hibernate.persister.collection.CollectionPersister: org.hibernate.type.Type getKeyType()>();	$r7 = r2.<org.hibernate.action.internal.CollectionAction: java.io.Serializable key>;	$r6 = r1.<org.hibernate.action.internal.CollectionAction: java.io.Serializable key>;	$i1 = interfaceinvoke $r8.<org.hibernate.type.Type: int compare(java.lang.Object,java.lang.Object)>($r7, $r6);	return $i1
;block_num 2