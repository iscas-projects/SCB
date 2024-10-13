(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3771 0)
(declare-sort var3551 0)
(declare-sort var3791 0)
(declare-sort var1504 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun getState/-1244940321 (var3771) (Array Int var3551))
(declare-fun var3791_toString/850831938 ((Array Int var1504)) String)
(declare-fun cast-from-__Array__Int__var3551__-to-__Array__Int__var1504__ ((Array Int var3551)) (Array Int var1504))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3771 var3771)
(declare-const var2888 var3771) ; Statement: r1 := @this: org.hibernate.cache.spi.entry.CollectionCacheEntry 
(assert (not (= var2888 null-var3771)))
(define-const var2122 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2122)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2122!1 String)
(assert (= var2122!1 ""))
(assert true)
(define-const var2461 String (append/672562846 var2122!1 "CollectionCacheEntry")) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionCacheEntry") 
(declare-const var2122!2 String)
(assert (= var2122!2 (str.++ var2122!1 "CollectionCacheEntry")))
(assert true)
(define-const var2460 (Array Int var3551) (getState/-1244940321 var2888)) ; Statement: $r2 = virtualinvoke r1.<org.hibernate.cache.spi.entry.CollectionCacheEntry: java.io.Serializable[] getState()>() 
(define-const var1507 String (var3791_toString/850831938 (cast-from-__Array__Int__var3551__-to-__Array__Int__var1504__ var2460))) ; Statement: $r3 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: java.lang.String toString(java.lang.Object[])>($r2) 
(assert true)
(define-const var3786 String (append/672562846 var2461 var1507)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var2461!1 String)
(assert (= var2461!1 (str.++ var2461 var1507)))
(assert true)
(define-const var2874 String (toString/-2075883882 var3786)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r6 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), getState/-1244940321=([org.hibernate.cache.spi.entry.CollectionCacheEntry], java.io.Serializable[]), var3791_toString/850831938=([java.lang.Object[]], java.lang.String), cast-from-__Array__Int__var3551__-to-__Array__Int__var1504__=([java.io.Serializable[]], java.lang.Object[]), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3771=org.hibernate.cache.spi.entry.CollectionCacheEntry, var2888=r1, var2122=$r0, var2461=$r4, var3551=java.io.Serializable, var2460=$r2, var3791=org.hibernate.internal.util.collections.ArrayHelper, var1504=java.lang.Object, var1507=$r3, var3786=$r5, var2874=$r6}
; {org.hibernate.cache.spi.entry.CollectionCacheEntry=var3771, r1=var2888, $r0=var2122, $r4=var2461, java.io.Serializable=var3551, $r2=var2460, org.hibernate.internal.util.collections.ArrayHelper=var3791, java.lang.Object=var1504, $r3=var1507, $r5=var3786, $r6=var2874}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<org.hibernate.internal.util.collections.ArrayHelper: java.lang.String toString(java.lang.Object[])>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cache.spi.entry.CollectionCacheEntry;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("CollectionCacheEntry");	$r2 = virtualinvoke r1.<org.hibernate.cache.spi.entry.CollectionCacheEntry: java.io.Serializable[] getState()>();	$r3 = staticinvoke <org.hibernate.internal.util.collections.ArrayHelper: java.lang.String toString(java.lang.Object[])>($r2);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	return $r6
;block_num 1