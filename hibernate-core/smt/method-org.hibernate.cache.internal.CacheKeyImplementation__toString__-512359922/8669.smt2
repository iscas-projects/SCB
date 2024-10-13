(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2335 0)
(declare-sort var260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun entityOrRoleName/-1086721810 (var2335) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun id/-1086721810 (var2335) var260)
(declare-fun toString/-522406933 (var260) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var2335 var2335)
(declare-const var1314 var2335) ; Statement: r1 := @this: org.hibernate.cache.internal.CacheKeyImplementation 
(assert (not (= var1314 null-var2335)))
(define-const var2420 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2420)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2420!1 String)
(assert (= var2420!1 ""))
(define-const var2758 String (entityOrRoleName/-1086721810 var1314)) ; Statement: $r2 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.String entityOrRoleName> 
(assert true)
(define-const var599 String (append/672562846 var2420!1 var2758)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var2420!2 String)
(assert (= var2420!2 (str.++ var2420!1 var2758)))
(assert true)
(define-const var727 String (append/-1166366385 var599 35)) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35) 
(declare-const var599!1 String)
(assert (str.prefixof var599 var599!1))
(define-const var1438 var260 (id/-1086721810 var1314)) ; Statement: $r4 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.Object id> 
(assert true)
(define-const var2124 String (toString/-522406933 var1438)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var594 String (append/672562846 var727 var2124)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var727!1 String)
(assert (= var727!1 (str.++ var727 var2124)))
(assert true)
(define-const var648 String (toString/-2075883882 var594)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), entityOrRoleName/-1086721810=([org.hibernate.cache.internal.CacheKeyImplementation], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), id/-1086721810=([org.hibernate.cache.internal.CacheKeyImplementation], java.lang.Object), toString/-522406933=([java.lang.Object], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var2335=org.hibernate.cache.internal.CacheKeyImplementation, var1314=r1, var2420=$r0, var2758=$r2, var599=$r3, var727=$r6, var260=java.lang.Object, var1438=$r4, var2124=$r5, var594=$r7, var648=$r8}
; {org.hibernate.cache.internal.CacheKeyImplementation=var2335, r1=var1314, $r0=var2420, $r2=var2758, $r3=var599, $r6=var727, java.lang.Object=var260, $r4=var1438, $r5=var2124, $r7=var594, $r8=var648}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cache.internal.CacheKeyImplementation;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.String entityOrRoleName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(35);	$r4 = r1.<org.hibernate.cache.internal.CacheKeyImplementation: java.lang.Object id>;	$r5 = virtualinvoke $r4.<java.lang.Object: java.lang.String toString()>();	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r8
;block_num 1