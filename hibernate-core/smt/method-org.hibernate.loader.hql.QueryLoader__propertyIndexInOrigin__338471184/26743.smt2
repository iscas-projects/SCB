(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3968 0)
(declare-sort var2281 0)
(declare-sort var223 0)
(declare-sort var2777 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getOrigin/-2076893813 (var3968) var3968)
(declare-fun getClassName/-733363923 (var3968) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(declare-fun getRole/-1186763148 (var3968) String)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(declare-fun var2777_getEntityMetamodel/-746850244 (var2777) var223)
(declare-fun cast-from-var2281-to-var2777 (var2281) var2777)
(declare-fun getPropertyIndexOrNull/-1370338729 (var223 String) Int)
(declare-const null-var3968 var3968)
(declare-const null-var2281 var2281)
(declare-const var3354 var3968) ; Statement: r0 := @parameter0: org.hibernate.hql.internal.ast.tree.FromElement 
(assert (not (= var3354 null-var3968)))
(declare-const var1514 var2281) ; Statement: r5 := @parameter1: org.hibernate.persister.entity.Queryable 
(assert (not (= var1514 null-var2281)))
(assert true)
(define-const var2304 var3968 (getOrigin/-2076893813 var3354)) ; Statement: $r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getOrigin()>() 
(assert true)
(define-const var844 String (getClassName/-733363923 var2304)) ; Statement: $r2 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassName()>() 
(assert true)
(define-const var1344 Int (length/-134980193 var844)) ; Statement: $i0 = virtualinvoke $r2.<java.lang.String: int length()>() 
(define-const var2129 Int (+ var1344 1)) ; Statement: i1 = $i0 + 1 
(assert true)
(define-const var2516 String (getRole/-1186763148 var3354)) ; Statement: r3 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getRole()>() 
(assert true)
(define-const var2729 Int (length/-134980193 var2516)) ; Statement: $i2 = virtualinvoke r3.<java.lang.String: int length()>() 
 ; Statement: if i1 < $i2 goto r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i1) 
(assert (< var2129 var2729)) ; Cond: i1 < $i2 
(assert (and true (and (>= var2129 0) (>= (str.len var2516) var2129))))
(define-const var3079 String (substring/850833817 var2516 var2129)) ; Statement: r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i1) 
(define-const var2754 var223 (var2777_getEntityMetamodel/-746850244 (cast-from-var2281-to-var2777 var1514))) ; Statement: $r6 = interfaceinvoke r5.<org.hibernate.persister.entity.Queryable: org.hibernate.tuple.entity.EntityMetamodel getEntityMetamodel()>() 
(assert true)
(define-const var1515 Int (getPropertyIndexOrNull/-1370338729 var2754 var3079)) ; Statement: $r7 = virtualinvoke $r6.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r4) 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {getOrigin/-2076893813=([org.hibernate.hql.internal.ast.tree.FromElement], org.hibernate.hql.internal.ast.tree.FromElement), getClassName/-733363923=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), length/-134980193=([java.lang.String], int), getRole/-1186763148=([org.hibernate.hql.internal.ast.tree.FromElement], java.lang.String), substring/850833817=([java.lang.String, int], java.lang.String), var2777_getEntityMetamodel/-746850244=([org.hibernate.persister.entity.EntityPersister], org.hibernate.tuple.entity.EntityMetamodel), cast-from-var2281-to-var2777=([org.hibernate.persister.entity.Queryable], org.hibernate.persister.entity.EntityPersister), getPropertyIndexOrNull/-1370338729=([org.hibernate.tuple.entity.EntityMetamodel, java.lang.String], java.lang.Integer)}
; {var3968=org.hibernate.hql.internal.ast.tree.FromElement, var3354=r0, var2281=org.hibernate.persister.entity.Queryable, var1514=r5, var2304=$r1, var844=$r2, var1344=$i0, var2129=i1, var2516=r3, var2729=$i2, var3079=r4, var223=org.hibernate.tuple.entity.EntityMetamodel, var2777=org.hibernate.persister.entity.EntityPersister, var2754=$r6, var1515=$r7}
; {org.hibernate.hql.internal.ast.tree.FromElement=var3968, r0=var3354, org.hibernate.persister.entity.Queryable=var2281, r5=var1514, $r1=var2304, $r2=var844, $i0=var1344, i1=var2129, r3=var2516, $i2=var2729, r4=var3079, org.hibernate.tuple.entity.EntityMetamodel=var223, org.hibernate.persister.entity.EntityPersister=var2777, $r6=var2754, $r7=var1515}
;seq <java.lang.String: int length()>;	<java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int)>
;cnt {"<java.lang.String: int length()>": 2,"<java.lang.String: java.lang.String substring(int)>": 1}
;stmts r0 := @parameter0: org.hibernate.hql.internal.ast.tree.FromElement;	r5 := @parameter1: org.hibernate.persister.entity.Queryable;	$r1 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: org.hibernate.hql.internal.ast.tree.FromElement getOrigin()>();	$r2 = virtualinvoke $r1.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getClassName()>();	$i0 = virtualinvoke $r2.<java.lang.String: int length()>();	i1 = $i0 + 1;	r3 = virtualinvoke r0.<org.hibernate.hql.internal.ast.tree.FromElement: java.lang.String getRole()>();	$i2 = virtualinvoke r3.<java.lang.String: int length()>();	if i1 < $i2 goto r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i1);	r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>(i1);	$r6 = interfaceinvoke r5.<org.hibernate.persister.entity.Queryable: org.hibernate.tuple.entity.EntityMetamodel getEntityMetamodel()>();	$r7 = virtualinvoke $r6.<org.hibernate.tuple.entity.EntityMetamodel: java.lang.Integer getPropertyIndexOrNull(java.lang.String)>(r4);	return $r7
;block_num 2