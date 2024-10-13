(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2729 0)
(declare-sort var1046 0)
(declare-sort var2244 0)
(declare-sort var1702 0)
(declare-sort var1853 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun id/-1086721810 (var2729) var1702)
(declare-fun var1046_getHashCode/735069886 (var1046 var1702 var2244) Int)
(declare-fun tenantId/-1086721810 (var2729) String)
(declare-const null-var2729 var2729)
(declare-const null-var1046 var1046)
(declare-const null-var2244 var2244)
(declare-const null-String String)
(declare-const var1480 var2729) ; Statement: r1 := @this: org.hibernate.cache.internal.CacheKeyImplementation 
(assert (not (= var1480 null-var2729)))
(declare-const var2923 var1046) ; Statement: r0 := @parameter0: org.hibernate.type.Type 
(assert (not (= var2923 null-var1046)))
(declare-const var211 var2244) ; Statement: r2 := @parameter1: org.hibernate.engine.spi.SessionFactoryImplementor 
(assert (not (= var211 null-var2244)))
(define-const var3429 var1702 (id/-1086721810 var1480)) ; Statement: $r3 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.Object id> 
(define-const var1581 Int (var1046_getHashCode/735069886 var2923 var3429 var211)) ; Statement: i2 = interfaceinvoke r0.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r3, r2) 
(define-const var2306 Int (* 31 var1581)) ; Statement: $i0 = 31 * i2 
(define-const var3227 String (tenantId/-1086721810 var1480)) ; Statement: $r4 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.String tenantId> 
 ; Statement: if $r4 == null goto $i3 = 0 
(assert (= var3227 null-String)) ; Cond: $r4 == null 
(define-const var2307 Int 0) ; Statement: $i3 = 0 
(assert true) ; Non Conditional
(define-const var358 Int (+ var2306 var2307)) ; Statement: $i1 = $i0 + $i3 
 ; Statement: return $i1 
(check-sat)
(get-model)
(get-unsat-core)
; {id/-1086721810=([org.hibernate.cache.internal.CacheKeyImplementation], java.lang.Object), var1046_getHashCode/735069886=([org.hibernate.type.Type, java.lang.Object, org.hibernate.engine.spi.SessionFactoryImplementor], int), tenantId/-1086721810=([org.hibernate.cache.internal.CacheKeyImplementation], java.lang.String)}
; {var2729=org.hibernate.cache.internal.CacheKeyImplementation, var1480=r1, var1046=org.hibernate.type.Type, var2923=r0, var2244=org.hibernate.engine.spi.SessionFactoryImplementor, var211=r2, var1702=java.lang.Object, var3429=$r3, var1581=i2, var2306=$i0, var3227=$r4, var1853=null_type, var2307=$i3, var358=$i1}
; {org.hibernate.cache.internal.CacheKeyImplementation=var2729, r1=var1480, org.hibernate.type.Type=var1046, r0=var2923, org.hibernate.engine.spi.SessionFactoryImplementor=var2244, r2=var211, java.lang.Object=var1702, $r3=var3429, i2=var1581, $i0=var2306, $r4=var3227, null_type=var1853, $i3=var2307, $i1=var358}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.cache.internal.CacheKeyImplementation;	r0 := @parameter0: org.hibernate.type.Type;	r2 := @parameter1: org.hibernate.engine.spi.SessionFactoryImplementor;	$r3 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.Object id>;	i2 = interfaceinvoke r0.<org.hibernate.type.Type: int getHashCode(java.lang.Object,org.hibernate.engine.spi.SessionFactoryImplementor)>($r3, r2);	$i0 = 31 * i2;	$r4 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.String tenantId>;	if $r4 == null goto $i3 = 0;	$i3 = 0;	$i1 = $i0 + $i3;	return $i1
;block_num 3