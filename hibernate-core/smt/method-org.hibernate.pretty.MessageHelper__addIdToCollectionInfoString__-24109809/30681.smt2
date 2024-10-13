(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2145 0)
(declare-sort var87 0)
(declare-sort var915 0)
(declare-sort var1006 0)
(declare-sort var1382 0)
(declare-sort var1164 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2145_getOwnerEntityPersister/-1424196242 (var2145) var1006)
(declare-fun var1006_getIdentifierType/1645724036 (var1006) var1382)
(declare-fun getClass/1258963082 (var1164) ClassObject)
(declare-fun cast-from-var87-to-var1164 (var87) var1164)
(declare-fun var1382_getReturnedClass/-1468116676 (var1382) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun var1382_toLoggableString/-1786537726 (var1382 var1164 var915) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2145 var2145)
(declare-const null-var87 var87)
(declare-const null-var915 var915)
(declare-const null-String String)
(declare-const var119 var2145) ; Statement: r0 := @parameter0: org.hibernate.persister.collection.CollectionPersister 
(assert (not (= var119 null-var2145)))
(declare-const var2713 var87) ; Statement: r3 := @parameter1: java.io.Serializable 
(assert (not (= var2713 null-var87)))
(declare-const var2902 var915) ; Statement: r8 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var2902 null-var915)))
(declare-const var2251 String) ; Statement: r6 := @parameter3: java.lang.StringBuilder 
(assert (not (= var2251 null-String)))
(define-const var3946 var1006 (var2145_getOwnerEntityPersister/-1424196242 var119)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.persister.collection.CollectionPersister: org.hibernate.persister.entity.EntityPersister getOwnerEntityPersister()>() 
(define-const var1679 var1382 (var1006_getIdentifierType/1645724036 var3946)) ; Statement: r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>() 
(assert true)
(define-const var1638 ClassObject (getClass/1258963082 (cast-from-var87-to-var1164 var2713))) ; Statement: $r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var2420 ClassObject (var1382_getReturnedClass/-1468116676 var1679)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var3277 Bool (isAssignableFrom/-1028998700 var1638 var2420)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r4) 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert (not (= (ite var3277 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var3201 String (var1382_toLoggableString/-1786537726 var1679 (cast-from-var87-to-var1164 var2713) var2902)) ; Statement: $r9 = interfaceinvoke r2.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r8) 
(assert true)
;(assert (append/672562846 var2251 var3201)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9) 
(declare-const var2251!1 String)
(assert (= var2251!1 (str.++ var2251 var3201)))
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2145_getOwnerEntityPersister/-1424196242=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.persister.entity.EntityPersister), var1006_getIdentifierType/1645724036=([org.hibernate.persister.entity.EntityPersister], org.hibernate.type.Type), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var87-to-var1164=([java.io.Serializable], java.lang.Object), var1382_getReturnedClass/-1468116676=([org.hibernate.type.Type], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), var1382_toLoggableString/-1786537726=([org.hibernate.type.Type, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2145=org.hibernate.persister.collection.CollectionPersister, var119=r0, var87=java.io.Serializable, var2713=r3, var915=org.hibernate.engine.spi.SessionFactoryImplementor, var2902=r8, var2251=r6, var1006=org.hibernate.persister.entity.EntityPersister, var3946=$r1, var1382=org.hibernate.type.Type, var1679=r2, var1164=java.lang.Object, var1638=$r5, var2420=$r4, var3277=$z0, var3201=$r9}
; {org.hibernate.persister.collection.CollectionPersister=var2145, r0=var119, java.io.Serializable=var87, r3=var2713, org.hibernate.engine.spi.SessionFactoryImplementor=var915, r8=var2902, r6=var2251, org.hibernate.persister.entity.EntityPersister=var1006, $r1=var3946, org.hibernate.type.Type=var1382, r2=var1679, java.lang.Object=var1164, $r5=var1638, $r4=var2420, $z0=var3277, $r9=var3201}
;seq <java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.hibernate.persister.collection.CollectionPersister;	r3 := @parameter1: java.io.Serializable;	r8 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	r6 := @parameter3: java.lang.StringBuilder;	$r1 = interfaceinvoke r0.<org.hibernate.persister.collection.CollectionPersister: org.hibernate.persister.entity.EntityPersister getOwnerEntityPersister()>();	r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>();	$r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r4 = interfaceinvoke r2.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>();	$z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r4);	if $z0 == 0 goto $r7 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$r9 = interfaceinvoke r2.<org.hibernate.type.Type: java.lang.String toLoggableString(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>(r3, r8);	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r9);	goto [?= return];	return
;block_num 3