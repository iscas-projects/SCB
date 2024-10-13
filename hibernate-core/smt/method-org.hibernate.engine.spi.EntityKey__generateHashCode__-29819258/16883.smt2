(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2177 0)
(declare-sort var153 0)
(declare-sort var858 0)
(declare-sort var3842 0)
(declare-sort var3755 0)
(declare-sort var2128 0)
(declare-sort var1437 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun persister/-683707564 (var2177) var153)
(declare-fun var153_getRootEntityName/775871466 (var153) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun var153_getIdentifierType/1645724036 (var153) var3842)
(declare-fun identifier/-683707564 (var2177) var3755)
(declare-fun var153_getFactory/1868753243 (var153) var2128)
(declare-fun var3842_getHashCode/735069886 (var3842 var1437 var2128) Int)
(declare-fun cast-from-var3755-to-var1437 (var3755) var1437)
(declare-const null-var2177 var2177)
(declare-const null-String String)
(declare-const var3328 var2177) ; Statement: r0 := @this: org.hibernate.engine.spi.EntityKey 
(assert (not (= var3328 null-var2177)))
(define-const var332 var153 (persister/-683707564 var3328)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister> 
(define-const var2158 String (var153_getRootEntityName/775871466 var332)) ; Statement: r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getRootEntityName()>() 
 ; Statement: if r2 == null goto $i4 = 0 
(assert (not (= var2158 null-String))) ; Negate: Cond: r2 == null  
(assert true)
(define-const var1865 Int (hashCode/-467973558 var2158)) ; Statement: $i4 = virtualinvoke r2.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i2 = 629 + $i4] 
(assert true) ; Non Conditional
(define-const var2238 Int (+ 629 var1865)) ; Statement: $i2 = 629 + $i4 
(define-const var2435 Int (* 37 var2238)) ; Statement: $i1 = 37 * $i2 
(define-const var111 var153 (persister/-683707564 var3328)) ; Statement: $r3 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister> 
(define-const var2271 var3842 (var153_getIdentifierType/1645724036 var111)) ; Statement: $r7 = interfaceinvoke $r3.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>() 
(define-const var877 var3755 (identifier/-683707564 var3328)) ; Statement: $r5 = r0.<org.hibernate.engine.spi.EntityKey: java.io.Serializable identifier> 
(define-const var2545 var153 (persister/-683707564 var3328)) ; Statement: $r4 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister> 
(define-const var3234 var2128 (var153_getFactory/1868753243 var2545)) ; Statement: $r6 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>() 
(define-const var3051 Int (var3842_getHashCode/735069886 var2271 (cast-from-var3755-to-var1437 var877) var3234)) ; Statement: $i0 = interfaceinvoke $r7.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r5, $r6) 
(define-const var3635 Int (+ var2435 var3051)) ; Statement: $i3 = $i1 + $i0 
 ; Statement: return $i3 
(check-sat)
(get-model)
(get-unsat-core)
; {persister/-683707564=([org.hibernate.engine.spi.EntityKey], org.hibernate.persister.entity.EntityPersister), var153_getRootEntityName/775871466=([org.hibernate.persister.entity.EntityPersister], java.lang.String), hashCode/-467973558=([java.lang.String], int), var153_getIdentifierType/1645724036=([org.hibernate.persister.entity.EntityPersister], org.hibernate.type.Type), identifier/-683707564=([org.hibernate.engine.spi.EntityKey], java.io.Serializable), var153_getFactory/1868753243=([org.hibernate.persister.entity.EntityPersister], org.hibernate.engine.spi.SessionFactoryImplementor), var3842_getHashCode/735069886=([org.hibernate.type.Type, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], int), cast-from-var3755-to-var1437=([java.io.Serializable], java.lang.Object)}
; {var2177=org.hibernate.engine.spi.EntityKey, var3328=r0, var153=org.hibernate.persister.entity.EntityPersister, var332=$r1, var2158=r2, var858=null_type, var1865=$i4, var2238=$i2, var2435=$i1, var111=$r3, var3842=org.hibernate.type.Type, var2271=$r7, var3755=java.io.Serializable, var877=$r5, var2545=$r4, var2128=org.hibernate.engine.spi.SessionFactoryImplementor, var3234=$r6, var1437=java.lang.Object, var3051=$i0, var3635=$i3}
; {org.hibernate.engine.spi.EntityKey=var2177, r0=var3328, org.hibernate.persister.entity.EntityPersister=var153, $r1=var332, r2=var2158, null_type=var858, $i4=var1865, $i2=var2238, $i1=var2435, $r3=var111, org.hibernate.type.Type=var3842, $r7=var2271, java.io.Serializable=var3755, $r5=var877, $r4=var2545, org.hibernate.engine.spi.SessionFactoryImplementor=var2128, $r6=var3234, java.lang.Object=var1437, $i0=var3051, $i3=var3635}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r0 := @this: org.hibernate.engine.spi.EntityKey;	$r1 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister>;	r2 = interfaceinvoke $r1.<org.hibernate.persister.entity.EntityPersister: java.lang.String getRootEntityName()>();	if r2 == null goto $i4 = 0;	$i4 = virtualinvoke r2.<java.lang.String: int hashCode()>();	goto [?= $i2 = 629 + $i4];	$i2 = 629 + $i4;	$i1 = 37 * $i2;	$r3 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister>;	$r7 = interfaceinvoke $r3.<org.hibernate.persister.entity.EntityPersister: org.hibernate.type.Type getIdentifierType()>();	$r5 = r0.<org.hibernate.engine.spi.EntityKey: java.io.Serializable identifier>;	$r4 = r0.<org.hibernate.engine.spi.EntityKey: org.hibernate.persister.entity.EntityPersister persister>;	$r6 = interfaceinvoke $r4.<org.hibernate.persister.entity.EntityPersister: org.hibernate.engine.spi.SessionFactoryImplementor getFactory()>();	$i0 = interfaceinvoke $r7.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r5, $r6);	$i3 = $i1 + $i0;	return $i3
;block_num 3