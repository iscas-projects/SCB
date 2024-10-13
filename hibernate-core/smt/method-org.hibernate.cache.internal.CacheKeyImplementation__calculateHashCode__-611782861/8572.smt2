(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var986 0)
(declare-sort var66 0)
(declare-sort var167 0)
(declare-sort var3808 0)
(declare-sort var812 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun id/-1086721810 (var986) var3808)
(declare-fun var66_getHashCode/735069886 (var66 var3808 var167) Int)
(declare-fun tenantId/-1086721810 (var986) String)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var986 var986)
(declare-const null-var66 var66)
(declare-const null-var167 var167)
(declare-const null-String String)
(declare-const var1630 var986) ; Statement: r1 := @this: org.hibernate.cache.internal.CacheKeyImplementation 
(assert (not (= var1630 null-var986)))
(declare-const var3635 var66) ; Statement: r0 := @parameter0: org.hibernate.type.Type 
(assert (not (= var3635 null-var66)))
(declare-const var1539 var167) ; Statement: r2 := @parameter1: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var1539 null-var167)))
(define-const var3009 var3808 (id/-1086721810 var1630)) ; Statement: $r3 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.Object id> 
(define-const var3467 Int (var66_getHashCode/735069886 var3635 var3009 var1539)) ; Statement: i2 = interfaceinvoke r0.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r3, r2) 
(define-const var788 Int (* 31 var3467)) ; Statement: $i0 = 31 * i2 
(define-const var276 String (tenantId/-1086721810 var1630)) ; Statement: $r4 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.String tenantId> 
 ; Statement: if $r4 == null goto $i3 = 0 
(assert (not (= var276 null-String))) ; Negate: Cond: $r4 == null  
(define-const var2582 String (tenantId/-1086721810 var1630)) ; Statement: $r5 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.String tenantId> 
(assert true)
(define-const var1732 Int (hashCode/-467973558 var2582)) ; Statement: $i3 = virtualinvoke $r5.<java.lang.String: int hashCode()>() 
 ; Statement: goto [?= $i1 = $i0 + $i3] 
(assert true) ; Non Conditional
(define-const var1920 Int (+ var788 var1732)) ; Statement: $i1 = $i0 + $i3 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {id/-1086721810=([org.hibernate.cache.internal.CacheKeyImplementation], java.lang.Object), var66_getHashCode/735069886=([org.hibernate.type.Type, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], int), tenantId/-1086721810=([org.hibernate.cache.internal.CacheKeyImplementation], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var986=org.hibernate.cache.internal.CacheKeyImplementation, var1630=r1, var66=org.hibernate.type.Type, var3635=r0, var167=org.hibernate.engine.spi.SessionFactoryImplementor, var1539=r2, var3808=java.lang.Object, var3009=$r3, var3467=i2, var788=$i0, var276=$r4, var812=null_type, var2582=$r5, var1732=$i3, var1920=$i1}
; {org.hibernate.cache.internal.CacheKeyImplementation=var986, r1=var1630, org.hibernate.type.Type=var66, r0=var3635, org.hibernate.engine.spi.SessionFactoryImplementor=var167, r2=var1539, java.lang.Object=var3808, $r3=var3009, i2=var3467, $i0=var788, $r4=var276, null_type=var812, $r5=var2582, $i3=var1732, $i1=var1920}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r1 := @this: org.hibernate.cache.internal.CacheKeyImplementation;	r0 := @parameter0: org.hibernate.type.Type;	r2 := @parameter1: org.hibernate.engine.spi.SessionFactoryImplementor;	$r3 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.Object id>;	i2 = interfaceinvoke r0.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r3, r2);	$i0 = 31 * i2;	$r4 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.String tenantId>;	if $r4 == null goto $i3 = 0;	$r5 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.String tenantId>;	$i3 = virtualinvoke $r5.<java.lang.String: int hashCode()>();	goto [?= $i1 = $i0 + $i3];	$i1 = $i0 + $i3;	return $i1
;block_num 3