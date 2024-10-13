(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1414 0)
(declare-sort var2810 0)
(declare-sort var2069 0)
(declare-sort var812 0)
(declare-sort var128 0)
(declare-sort var3232 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getReference/-219040944 (var2810) var128)
(declare-fun var3232-init () var3232)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun toString/-522406933 (var128) String)
(declare-fun cast-from-var2810-to-var128 (var2810) var128)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/-1092629202 (var3232 String) void)
(declare-const null-var1414 var1414)
(declare-const null-var2810 var2810)
(declare-const null-var2069 var2069)
(declare-const null-var812 var812)
(declare-const null-var128 var128)
(declare-const var2706 var1414) ; Statement: r2 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper 
(assert (not (= var2706 null-var1414)))
(declare-const var3288 var2810) ; Statement: r0 := @parameter0: org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl 
(assert (not (= var3288 null-var2810)))
(declare-const var3094 var2069) ; Statement: r3 := @parameter1: org.hibernate.event.spi.EventSource 
(assert (not (= var3094 null-var2069)))
(declare-const var3984 var812) ; Statement: r4 := @parameter2: org.hibernate.engine.spi.EntityKey 
(assert (not (= var3984 null-var812)))
(assert true)
(define-const var3850 var128 (getReference/-219040944 var3288)) ; Statement: r1 = virtualinvoke r0.<org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl: java.lang.Object getReference()>() 
 ; Statement: if r1 != null goto specialinvoke r2.<org.hibernate.loader.entity.CacheEntityLoaderHelper: void makeEntityCircularReferenceSafe(org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl,org.hibernate.event.spi.EventSource,java.lang.Object,org.hibernate.engine.spi.EntityKey)>(r0, r3, r1, r4) 
(assert (not (not (= var3850 null-var128)))) ; Negate: Cond: r1 != null  
(define-const var2757 var3232 var3232-init) ; Statement: $r5 = new java.lang.IllegalStateException 
(define-const var2610 String String-init) ; Statement: $r6 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2610)) ; Statement: specialinvoke $r6.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2610!1 String)
(assert (= var2610!1 ""))
(assert true)
(define-const var997 String (append/672562846 var2610!1 "Reference cache entry contained null : ")) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reference cache entry contained null : ") 
(declare-const var2610!2 String)
(assert (= var2610!2 (str.++ var2610!1 "Reference cache entry contained null : ")))
(assert true)
(define-const var2037 String (toString/-522406933 (cast-from-var2810-to-var128 var3288))) ; Statement: $r7 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var2034 String (append/672562846 var997 var2037)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var997!1 String)
(assert (= var997!1 (str.++ var997 var2037)))
(assert true)
(define-const var1058 String (toString/-2075883882 var2034)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/-1092629202 var2757 var1058)) ; Statement: specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10) 

(declare-const var2757!1 var3232)
(declare-const var1058!1 String)
 ; Statement: throw $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {getReference/-219040944=([org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl], java.lang.Object), var3232-init=([], java.lang.IllegalStateException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var2810-to-var128=([org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var1414=org.hibernate.loader.entity.CacheEntityLoaderHelper, var2706=r2, var2810=org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl, var3288=r0, var2069=org.hibernate.event.spi.EventSource, var3094=r3, var812=org.hibernate.engine.spi.EntityKey, var3984=r4, var128=java.lang.Object, var3850=r1, var3232=java.lang.IllegalStateException, var2757=$r5, var2610=$r6, var997=$r8, var2037=$r7, var2034=$r9, var1058=$r10}
; {org.hibernate.loader.entity.CacheEntityLoaderHelper=var1414, r2=var2706, org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl=var2810, r0=var3288, org.hibernate.event.spi.EventSource=var2069, r3=var3094, org.hibernate.engine.spi.EntityKey=var812, r4=var3984, java.lang.Object=var128, r1=var3850, java.lang.IllegalStateException=var3232, $r5=var2757, $r6=var2610, $r8=var997, $r7=var2037, $r9=var2034, $r10=var1058}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r2 := @this: org.hibernate.loader.entity.CacheEntityLoaderHelper;	r0 := @parameter0: org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl;	r3 := @parameter1: org.hibernate.event.spi.EventSource;	r4 := @parameter2: org.hibernate.engine.spi.EntityKey;	r1 = virtualinvoke r0.<org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl: java.lang.Object getReference()>();	if r1 != null goto specialinvoke r2.<org.hibernate.loader.entity.CacheEntityLoaderHelper: void makeEntityCircularReferenceSafe(org.hibernate.cache.spi.entry.ReferenceCacheEntryImpl,org.hibernate.event.spi.EventSource,java.lang.Object,org.hibernate.engine.spi.EntityKey)>(r0, r3, r1, r4);	$r5 = new java.lang.IllegalStateException;	$r6 = new java.lang.StringBuilder;	specialinvoke $r6.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Reference cache entry contained null : ");	$r7 = virtualinvoke r0.<java.lang.Object: java.lang.String toString()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r5.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r10);	throw $r5
;block_num 2