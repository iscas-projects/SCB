(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2777 0)
(declare-sort var246 0)
(declare-sort var1666 0)
(declare-sort var3356 0)
(declare-sort var3537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun cast-from-var246-to-var2777 (var246) var2777)
(declare-fun entityName/369343576 (var2777) String)
(declare-fun compareTo/1411385946 (String String) Int)
(declare-fun persister/369343576 (var2777) var1666)
(declare-fun var1666_getIdentifierType/1645724036 (var1666) var3356)
(declare-fun id/369343576 (var2777) var3537)
(declare-fun var3356_compare/2041770427 (var3356 var246 var246) Int)
(declare-fun cast-from-var3537-to-var246 (var3537) var246)
(declare-const null-var2777 var2777)
(declare-const null-var246 var246)
(declare-const var3541 var2777) ; Statement: r2 := @this: org.hibernate.action.internal.EntityAction 
(assert (not (= var3541 null-var2777)))
(declare-const var340 var246) ; Statement: r0 := @parameter0: java.lang.Object 
(assert (not (= var340 null-var246)))
(define-const var1467 var2777 (cast-from-var246-to-var2777 var340)) ; Statement: r1 = (org.hibernate.action.internal.EntityAction) r0 
(define-const var3269 String (entityName/369343576 var3541)) ; Statement: $r4 = r2.<org.hibernate.action.internal.EntityAction: java.lang.String entityName> 
(define-const var3378 String (entityName/369343576 var1467)) ; Statement: $r3 = r1.<org.hibernate.action.internal.EntityAction: java.lang.String entityName> 
(assert true)
(define-const var3954 Int (compareTo/1411385946 var3269 var3378)) ; Statement: i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3) 
(assert (let ((this<other (str.< var3269 var3378)) (this<=other (str.<= var3269 var3378)) (compareRes (compareTo/1411385946 var3269 var3378))) (or (and (> compareRes 0) (not this<=other)) (and (< compareRes 0) this<other) (and (= compareRes 0) (not this<other) this<=other))))
 ; Statement: if i0 == 0 goto $r5 = r2.<org.hibernate.action.internal.EntityAction: org.hibernate.persister.entity.EntityPersister persister> 
(assert (= var3954 0)) ; Cond: i0 == 0 
(define-const var575 var1666 (persister/369343576 var3541)) ; Statement: $r5 = r2.<org.hibernate.action.internal.EntityAction: org.hibernate.persister.entity.EntityPersister persister> 
(define-const var2604 var3356 (var1666_getIdentifierType/1645724036 var575)) ; Statement: $r8 = interfaceinvoke $r5.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>() 
(define-const var1557 var3537 (id/369343576 var3541)) ; Statement: $r7 = r2.<org.hibernate.action.internal.EntityAction: java.io.Serializable id> 
(define-const var454 var3537 (id/369343576 var1467)) ; Statement: $r6 = r1.<org.hibernate.action.internal.EntityAction: java.io.Serializable id> 
(define-const var3373 Int (var3356_compare/2041770427 var2604 (cast-from-var3537-to-var246 var1557) (cast-from-var3537-to-var246 var454))) ; Statement: $i1 = interfaceinvoke $r8.<org.hibernate.type.Type: int compare(java.lang.Object,java.lang.Object)>($r7, $r6) 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {cast-from-var246-to-var2777=([java.lang.Object], org.hibernate.action.internal.EntityAction), entityName/369343576=([org.hibernate.action.internal.EntityAction], java.lang.String), compareTo/1411385946=([java.lang.String, java.lang.String], int), persister/369343576=([org.hibernate.action.internal.EntityAction], org.hibernate.persister.entity.EntityPersister), var1666_getIdentifierType/1645724036=([org.hibernate.persister.entity.EntityPersister], org.hibernate.type.Type), id/369343576=([org.hibernate.action.internal.EntityAction], java.io.Serializable), var3356_compare/2041770427=([org.hibernate.type.Type, java.lang.Object, java.lang.Object], int), cast-from-var3537-to-var246=([java.io.Serializable], java.lang.Object)}
; {var2777=org.hibernate.action.internal.EntityAction, var3541=r2, var246=java.lang.Object, var340=r0, var1467=r1, var3269=$r4, var3378=$r3, var3954=i0, var1666=org.hibernate.persister.entity.EntityPersister, var575=$r5, var3356=org.hibernate.type.Type, var2604=$r8, var3537=java.io.Serializable, var1557=$r7, var454=$r6, var3373=$i1}
; {org.hibernate.action.internal.EntityAction=var2777, r2=var3541, java.lang.Object=var246, r0=var340, r1=var1467, $r4=var3269, $r3=var3378, i0=var3954, org.hibernate.persister.entity.EntityPersister=var1666, $r5=var575, org.hibernate.type.Type=var3356, $r8=var2604, java.io.Serializable=var3537, $r7=var1557, $r6=var454, $i1=var3373}
;seq <java.lang.String: int compareTo(java.lang.String)>
;cnt {"<java.lang.String: int compareTo(java.lang.String)>": 1}
;stmts r2 := @this: org.hibernate.action.internal.EntityAction;	r0 := @parameter0: java.lang.Object;	r1 = (org.hibernate.action.internal.EntityAction) r0;	$r4 = r2.<org.hibernate.action.internal.EntityAction: java.lang.String entityName>;	$r3 = r1.<org.hibernate.action.internal.EntityAction: java.lang.String entityName>;	i0 = virtualinvoke $r4.<java.lang.String: int compareTo(java.lang.String)>($r3);	if i0 == 0 goto $r5 = r2.<org.hibernate.action.internal.EntityAction: org.hibernate.persister.entity.EntityPersister persister>;	$r5 = r2.<org.hibernate.action.internal.EntityAction: org.hibernate.persister.entity.EntityPersister persister>;	$r8 = interfaceinvoke $r5.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>();	$r7 = r2.<org.hibernate.action.internal.EntityAction: java.io.Serializable id>;	$r6 = r1.<org.hibernate.action.internal.EntityAction: java.io.Serializable id>;	$i1 = interfaceinvoke $r8.<org.hibernate.type.Type: int compare(java.lang.Object,java.lang.Object)>($r7, $r6);	return $i1
;block_num 2