(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3573 0)
(declare-sort var2269 0)
(declare-sort var553 0)
(declare-sort var2977 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entitiesByKey/298931879 (var3573) var2269)
(declare-fun keySet/1586104932 (var2269) var553)
(declare-fun toString/-522406933 (var2977) String)
(declare-fun cast-from-var553-to-var2977 (var553) var2977)
(declare-fun collectionsByKey/298931879 (var3573) var2269)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3573 var3573)
(declare-const null-var2269 var2269)
(declare-const var2334 var3573) ; Statement: r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var2334 null-var3573)))
(define-const var1710 var2269 (entitiesByKey/298931879 var2334)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
(assert (not (= var1710 null-var2269))) ; Cond: $r1 != null 
(define-const var3804 var2269 (entitiesByKey/298931879 var2334)) ; Statement: $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
(assert true)
(define-const var1564 var553 (keySet/1586104932 var3804)) ; Statement: $r3 = virtualinvoke $r2.<java.util.HashMap: java.util.Set keySet()>() 
(assert true)
(define-const var913 String (toString/-522406933 (cast-from-var553-to-var2977 var1564))) ; Statement: $r15 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var621 String var913) ; Statement: r4 = $r15 
(define-const var2946 var2269 (collectionsByKey/298931879 var2334)) ; Statement: $r5 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
(assert (not (= var2946 null-var2269))) ; Cond: $r5 != null 
(define-const var285 var2269 (collectionsByKey/298931879 var2334)) ; Statement: $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
(assert true)
(define-const var959 var553 (keySet/1586104932 var285)) ; Statement: $r7 = virtualinvoke $r6.<java.util.HashMap: java.util.Set keySet()>() 
(assert true)
(define-const var3469 String (toString/-522406933 (cast-from-var553-to-var2977 var959))) ; Statement: $r16 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var995 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var995)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var995!1 String)
(assert (= var995!1 ""))
(assert true)
(define-const var2675 String (append/672562846 var995!1 "PersistenceContext[entityKeys=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PersistenceContext[entityKeys=") 
(declare-const var995!2 String)
(assert (= var995!2 (str.++ var995!1 "PersistenceContext[entityKeys=")))
(assert true)
(define-const var2954 String (append/672562846 var2675 var621)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2675!1 String)
(assert (= var2675!1 (str.++ var2675 var621)))
(assert true)
(define-const var2839 String (append/672562846 var2954 ", collectionKeys=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", collectionKeys=") 
(declare-const var2954!1 String)
(assert (= var2954!1 (str.++ var2954 ", collectionKeys=")))
(assert true)
(define-const var1971 String (append/672562846 var2839 var3469)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var2839!1 String)
(assert (= var2839!1 (str.++ var2839 var3469)))
(assert true)
(define-const var3513 String (append/672562846 var1971 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1971!1 String)
(assert (= var1971!1 (str.++ var1971 "]")))
(assert true)
(define-const var398 String (toString/-2075883882 var3513)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {entitiesByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), keySet/1586104932=([java.util.HashMap], java.util.Set), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var553-to-var2977=([java.util.Set], java.lang.Object), collectionsByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3573=org.hibernate.engine.internal.StatefulPersistenceContext, var2334=r0, var2269=java.util.HashMap, var1710=$r1, var3804=$r2, var553=java.util.Set, var1564=$r3, var2977=java.lang.Object, var913=$r15, var621=r4, var2946=$r5, var285=$r6, var959=$r7, var3469=$r16, var995=$r8, var2675=$r9, var2954=$r10, var2839=$r11, var1971=$r12, var3513=$r13, var398=$r14}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var3573, r0=var2334, java.util.HashMap=var2269, $r1=var1710, $r2=var3804, java.util.Set=var553, $r3=var1564, java.lang.Object=var2977, $r15=var913, r4=var621, $r5=var2946, $r6=var285, $r7=var959, $r16=var3469, $r8=var995, $r9=var2675, $r10=var2954, $r11=var2839, $r12=var1971, $r13=var3513, $r14=var398}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	$r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	$r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	$r3 = virtualinvoke $r2.<java.util.HashMap: java.util.Set keySet()>();	$r15 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>();	r4 = $r15;	$r5 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	if $r5 != null goto $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	$r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	$r7 = virtualinvoke $r6.<java.util.HashMap: java.util.Set keySet()>();	$r16 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PersistenceContext[entityKeys=");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", collectionKeys=");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 5