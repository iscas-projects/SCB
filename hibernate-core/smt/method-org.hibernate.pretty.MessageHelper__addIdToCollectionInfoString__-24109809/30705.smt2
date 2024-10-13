(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2845 0)
(declare-sort var2137 0)
(declare-sort var2662 0)
(declare-sort var2637 0)
(declare-sort var430 0)
(declare-sort var1986 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var2845_getOwnerEntityPersister/-1424196242 (var2845) var2637)
(declare-fun var2637_getIdentifierType/1645724036 (var2637) var430)
(declare-fun getClass/1258963082 (var1986) ClassObject)
(declare-fun cast-from-var2137-to-var1986 (var2137) var1986)
(declare-fun var430_getReturnedClass/-1468116676 (var430) ClassObject)
(declare-fun isAssignableFrom/-1028998700 (ClassObject ClassObject) Bool)
(declare-fun toString/-522406933 (var1986) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var2845 var2845)
(declare-const null-var2137 var2137)
(declare-const null-var2662 var2662)
(declare-const null-String String)
(declare-const var3505 var2845) ; Statement: r0 := @parameter0: org.hibernate.persister.collection.CollectionPersister 
(assert (not (= var3505 null-var2845)))
(declare-const var1644 var2137) ; Statement: r3 := @parameter1: java.io.Serializable 
(assert (not (= var1644 null-var2137)))
(declare-const var3669 var2662) ; Statement: r8 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var3669 null-var2662)))
(declare-const var2950 String) ; Statement: r6 := @parameter3: java.lang.StringBuilder 
(assert (not (= var2950 null-String)))
(define-const var2980 var2637 (var2845_getOwnerEntityPersister/-1424196242 var3505)) ; Statement: $r1 = interfaceinvoke r0.<org.hibernate.persister.collection.CollectionPersister: org.hibernate.persister.entity.EntityPersister getOwnerEntityPersister()>() 
(define-const var3801 var430 (var2637_getIdentifierType/1645724036 var2980)) ; Statement: r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>() 
(assert true)
(define-const var240 ClassObject (getClass/1258963082 (cast-from-var2137-to-var1986 var1644))) ; Statement: $r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>() 
(define-const var3170 ClassObject (var430_getReturnedClass/-1468116676 var3801)) ; Statement: $r4 = interfaceinvoke r2.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>() 
(assert true)
(define-const var445 Bool (isAssignableFrom/-1028998700 var240 var3170)) ; Statement: $z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r4) 
 ; Statement: if $z0 == 0 goto $r7 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert (= (ite var445 1 0) 0)) ; Cond: $z0 == 0 
(assert true)
(define-const var2568 String (toString/-522406933 (cast-from-var2137-to-var1986 var1644))) ; Statement: $r7 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>() 
(assert true)
;(assert (append/672562846 var2950 var2568)) ; Statement: virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var2950!1 String)
(assert (= var2950!1 (str.++ var2950 var2568)))
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var2845_getOwnerEntityPersister/-1424196242=([org.hibernate.persister.collection.CollectionPersister], org.hibernate.persister.entity.EntityPersister), var2637_getIdentifierType/1645724036=([org.hibernate.persister.entity.EntityPersister], org.hibernate.type.Type), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var2137-to-var1986=([java.io.Serializable], java.lang.Object), var430_getReturnedClass/-1468116676=([org.hibernate.type.Type], java.lang.Class), isAssignableFrom/-1028998700=([java.lang.Class, java.lang.Class], boolean), toString/-522406933=([java.lang.Object], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var2845=org.hibernate.persister.collection.CollectionPersister, var3505=r0, var2137=java.io.Serializable, var1644=r3, var2662=org.hibernate.engine.spi.SessionFactoryImplementor, var3669=r8, var2950=r6, var2637=org.hibernate.persister.entity.EntityPersister, var2980=$r1, var430=org.hibernate.type.Type, var3801=r2, var1986=java.lang.Object, var240=$r5, var3170=$r4, var445=$z0, var2568=$r7}
; {org.hibernate.persister.collection.CollectionPersister=var2845, r0=var3505, java.io.Serializable=var2137, r3=var1644, org.hibernate.engine.spi.SessionFactoryImplementor=var2662, r8=var3669, r6=var2950, org.hibernate.persister.entity.EntityPersister=var2637, $r1=var2980, org.hibernate.type.Type=var430, r2=var3801, java.lang.Object=var1986, $r5=var240, $r4=var3170, $z0=var445, $r7=var2568}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r0 := @parameter0: org.hibernate.persister.collection.CollectionPersister;	r3 := @parameter1: java.io.Serializable;	r8 := @parameter2: org.hibernate.engine.spi.SessionFactoryImplementor;	r6 := @parameter3: java.lang.StringBuilder;	$r1 = interfaceinvoke r0.<org.hibernate.persister.collection.CollectionPersister: org.hibernate.persister.entity.EntityPersister getOwnerEntityPersister()>();	r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>();	$r5 = virtualinvoke r3.<java.lang.Object: java.lang.Class getClass()>();	$r4 = interfaceinvoke r2.<org.hibernate.type.Type: java.lang.Class getReturnedClass()>();	$z0 = virtualinvoke $r5.<java.lang.Class: boolean isAssignableFrom(java.lang.Class)>($r4);	if $z0 == 0 goto $r7 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke r3.<java.lang.Object: java.lang.String toString()>();	virtualinvoke r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	return
;block_num 3