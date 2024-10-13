(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var895 0)
(declare-sort var108 0)
(declare-sort var1362 0)
(declare-sort var3791 0)
(declare-sort var2135 0)
(declare-sort var2223 0)
(declare-sort var1634 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun persister/-683707564 (var895) var108)
(declare-fun var108_getRootEntityName/775871466 (var108) String)
(declare-fun var108_getIdentifierType/1645724036 (var108) var3791)
(declare-fun identifier/-683707564 (var895) var2135)
(declare-fun var108_getFactory/1868753243 (var108) var2223)
(declare-fun var3791_getHashCode/735069886 (var3791 var1634 var2223) Int)
(declare-fun cast-from-var2135-to-var1634 (var2135) var1634)
(declare-const null-var895 var895)
(declare-const null-String String)
(declare-const var158 var895) ; Statement: r0 := @this: org.hibernate.engine.spi.EntityKey 
(assert (not (= var158 null-var895)))
(define-const var2754 var108 (persister/-683707564 var158)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister> 
(define-const var973 String (var108_getRootEntityName/775871466 var2754)) ; Statement: r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getRootEntityName()>() 
 ; Statement: if r2 == null goto $i4 = 0 
(assert (= var973 null-String)) ; Cond: r2 == null 
(define-const var1197 Int 0) ; Statement: $i4 = 0 
(assert true) ; Non Conditional
(define-const var1869 Int (+ 629 var1197)) ; Statement: $i2 = 629 + $i4 
(define-const var197 Int (* 37 var1869)) ; Statement: $i1 = 37 * $i2 
(define-const var937 var108 (persister/-683707564 var158)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister> 
(define-const var3637 var3791 (var108_getIdentifierType/1645724036 var937)) ; Statement: $r7 = interfaceinvoke $r3.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>() 
(define-const var691 var2135 (identifier/-683707564 var158)) ; Statement: $r5 = r0.<org.hibernate.engine.spi.EntityKey: java.io.Serializable identifier> 
(define-const var2483 var108 (persister/-683707564 var158)) ; Statement: $r4 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister> 
(define-const var91 var2223 (var108_getFactory/1868753243 var2483)) ; Statement: $r6 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var2696 Int (var3791_getHashCode/735069886 var3637 (cast-from-var2135-to-var1634 var691) var91)) ; Statement: $i0 = interfaceinvoke $r7.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r5, $r6) 
(define-const var968 Int (+ var197 var2696)) ; Statement: $i3 = $i1 + $i0 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {persister/-683707564=([org.hibernate.engine.spi.EntityKey], org.hibernate.persister.entity.EntityPersister), var108_getRootEntityName/775871466=([org.hibernate.persister.entity.EntityPersister], java.lang.String), var108_getIdentifierType/1645724036=([org.hibernate.persister.entity.EntityPersister], org.hibernate.type.Type), identifier/-683707564=([org.hibernate.engine.spi.EntityKey], java.io.Serializable), var108_getFactory/1868753243=([org.hibernate.persister.entity.EntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var3791_getHashCode/735069886=([org.hibernate.type.Type, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], int), cast-from-var2135-to-var1634=([java.io.Serializable], java.lang.Object)}
; {var895=org.hibernate.engine.spi.EntityKey, var158=r0, var108=org.hibernate.persister.entity.EntityPersister, var2754=$r1, var973=r2, var1362=null_type, var1197=$i4, var1869=$i2, var197=$i1, var937=$r3, var3791=org.hibernate.type.Type, var3637=$r7, var2135=java.io.Serializable, var691=$r5, var2483=$r4, var2223=org.hibernate.engine.spi.SessionFactoryImplementor, var91=$r6, var1634=java.lang.Object, var2696=$i0, var968=$i3}
; {org.hibernate.engine.spi.EntityKey=var895, r0=var158, org.hibernate.persister.entity.EntityPersister=var108, $r1=var2754, r2=var973, null_type=var1362, $i4=var1197, $i2=var1869, $i1=var197, $r3=var937, org.hibernate.type.Type=var3791, $r7=var3637, java.io.Serializable=var2135, $r5=var691, $r4=var2483, org.hibernate.engine.spi.SessionFactoryImplementor=var2223, $r6=var91, java.lang.Object=var1634, $i0=var2696, $i3=var968}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.engine.spi.EntityKey;	$r1 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister>;	r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getRootEntityName()>();	if r2 == null goto $i4 = 0;	$i4 = 0;	$i2 = 629 + $i4;	$i1 = 37 * $i2;	$r3 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister>;	$r7 = interfaceinvoke $r3.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>();	$r5 = r0.<org.hibernate.engine.spi.EntityKey: java.io.Serializable identifier>;	$r4 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister>;	$r6 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$i0 = interfaceinvoke $r7.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r5, $r6);	$i3 = $i1 + $i0;	return $i3
;block_num 3