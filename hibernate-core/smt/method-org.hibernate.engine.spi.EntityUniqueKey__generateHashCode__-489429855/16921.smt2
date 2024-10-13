(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1609 0)
(declare-sort var2850 0)
(declare-sort var2387 0)
(declare-sort var3804 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entityName/-556841469 (var1609) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-fun uniqueKeyName/-556841469 (var1609) String)
(declare-fun keyType/-556841469 (var1609) var2387)
(declare-fun key/-556841469 (var1609) var3804)
(declare-fun var2387_getHashCode/735069886 (var2387 var3804 var2850) Int)
(declare-const null-var1609 var1609)
(declare-const null-var2850 var2850)
(declare-const var1150 var1609) ; Statement: r0 := @this: org.hibernate.engine.spi.EntityUniqueKey 
(assert (not (= var1150 null-var1609)))
(declare-const var325 var2850) ; Statement: r3 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var325 null-var2850)))
(define-const var3237 String (entityName/-556841469 var1150)) ; Statement: $r1 = r0.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.String entityName> 
(assert true)
(define-const var2447 Int (hashCode/-467973558 var3237)) ; Statement: $i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>() 
(define-const var3281 Int (+ 629 var2447)) ; Statement: i5 = 629 + $i0 
(define-const var2099 Int (* 37 var3281)) ; Statement: $i2 = 37 * i5 
(define-const var600 String (uniqueKeyName/-556841469 var1150)) ; Statement: $r2 = r0.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.String uniqueKeyName> 
(assert true)
(define-const var1513 Int (hashCode/-467973558 var600)) ; Statement: $i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>() 
(define-const var3849 Int (+ var2099 var1513)) ; Statement: i6 = $i2 + $i1 
(define-const var1947 Int (* 37 var3849)) ; Statement: $i4 = 37 * i6 
(define-const var1287 var2387 (keyType/-556841469 var1150)) ; Statement: $r5 = r0.<org.hibernate.engine.spi.EntityUniqueKey: org.hibernate.type.Type keyType> 
(define-const var1145 var3804 (key/-556841469 var1150)) ; Statement: $r4 = r0.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.Object key> 
(define-const var1558 Int (var2387_getHashCode/735069886 var1287 var1145 var325)) ; Statement: $i3 = interfaceinvoke $r5.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r4, r3) 
(define-const var1357 Int (+ var1947 var1558)) ; Statement: i7 = $i4 + $i3 
 ; Statement: return i7 
(check-sat)
(get-model)
(get-unsat-core)
; {entityName/-556841469=([org.hibernate.engine.spi.EntityUniqueKey], java.lang.String), hashCode/-467973558=([java.lang.String], int), uniqueKeyName/-556841469=([org.hibernate.engine.spi.EntityUniqueKey], java.lang.String), keyType/-556841469=([org.hibernate.engine.spi.EntityUniqueKey], org.hibernate.type.Type), key/-556841469=([org.hibernate.engine.spi.EntityUniqueKey], java.lang.Object), var2387_getHashCode/735069886=([org.hibernate.type.Type, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], int)}
; {var1609=org.hibernate.engine.spi.EntityUniqueKey, var1150=r0, var2850=org.hibernate.engine.spi.SessionFactoryImplementor, var325=r3, var3237=$r1, var2447=$i0, var3281=i5, var2099=$i2, var600=$r2, var1513=$i1, var3849=i6, var1947=$i4, var2387=org.hibernate.type.Type, var1287=$r5, var3804=java.lang.Object, var1145=$r4, var1558=$i3, var1357=i7}
; {org.hibernate.engine.spi.EntityUniqueKey=var1609, r0=var1150, org.hibernate.engine.spi.SessionFactoryImplementor=var2850, r3=var325, $r1=var3237, $i0=var2447, i5=var3281, $i2=var2099, $r2=var600, $i1=var1513, i6=var3849, $i4=var1947, org.hibernate.type.Type=var2387, $r5=var1287, java.lang.Object=var3804, $r4=var1145, $i3=var1558, i7=var1357}
;seq <java.lang.String: int hashCode()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 2}
;stmts r0 := @this: org.hibernate.engine.spi.EntityUniqueKey;	r3 := @parameter0: org.hibernate.engine.spi.SessionFactoryImplementor;	$r1 = r0.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.String entityName>;	$i0 = virtualinvoke $r1.<java.lang.String: int hashCode()>();	i5 = 629 + $i0;	$i2 = 37 * i5;	$r2 = r0.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.String uniqueKeyName>;	$i1 = virtualinvoke $r2.<java.lang.String: int hashCode()>();	i6 = $i2 + $i1;	$i4 = 37 * i6;	$r5 = r0.<org.hibernate.engine.spi.EntityUniqueKey: org.hibernate.type.Type keyType>;	$r4 = r0.<org.hibernate.engine.spi.EntityUniqueKey: java.lang.Object key>;	$i3 = interfaceinvoke $r5.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r4, r3);	i7 = $i4 + $i3;	return i7
;block_num 1