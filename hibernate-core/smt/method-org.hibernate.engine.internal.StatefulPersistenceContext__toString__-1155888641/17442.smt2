(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3320 0)
(declare-sort var2097 0)
(declare-sort var303 0)
(declare-sort var1457 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entitiesByKey/298931879 (var3320) var2097)
(declare-fun collectionsByKey/298931879 (var3320) var2097)
(declare-fun keySet/1586104932 (var2097) var303)
(declare-fun toString/-522406933 (var1457) String)
(declare-fun cast-from-var303-to-var1457 (var303) var1457)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3320 var3320)
(declare-const null-var2097 var2097)
(declare-const var2134 var3320) ; Statement: r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var2134 null-var3320)))
(define-const var2697 var2097 (entitiesByKey/298931879 var2134)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
(assert (not (not (= var2697 null-var2097)))) ; Negate: Cond: $r1 != null  
(define-const var3997 String "[]") ; Statement: $r15 = "[]" 
 ; Statement: goto [?= r4 = $r15] 
(assert true) ; Non Conditional
(define-const var2109 String var3997) ; Statement: r4 = $r15 
(define-const var3187 var2097 (collectionsByKey/298931879 var2134)) ; Statement: $r5 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
(assert (not (= var3187 null-var2097))) ; Cond: $r5 != null 
(define-const var667 var2097 (collectionsByKey/298931879 var2134)) ; Statement: $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
(assert true)
(define-const var357 var303 (keySet/1586104932 var667)) ; Statement: $r7 = virtualinvoke $r6.<java.util.HashMap: java.util.Set keySet()>() 
(assert true)
(define-const var3806 String (toString/-522406933 (cast-from-var303-to-var1457 var357))) ; Statement: $r16 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var1656 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1656)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1656!1 String)
(assert (= var1656!1 ""))
(assert true)
(define-const var2409 String (append/672562846 var1656!1 "PersistenceContext[entityKeys=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PersistenceContext[entityKeys=") 
(declare-const var1656!2 String)
(assert (= var1656!2 (str.++ var1656!1 "PersistenceContext[entityKeys=")))
(assert true)
(define-const var173 String (append/672562846 var2409 var2109)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var2409!1 String)
(assert (= var2409!1 (str.++ var2409 var2109)))
(assert true)
(define-const var875 String (append/672562846 var173 ", collectionKeys=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", collectionKeys=") 
(declare-const var173!1 String)
(assert (= var173!1 (str.++ var173 ", collectionKeys=")))
(assert true)
(define-const var2888 String (append/672562846 var875 var3806)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var875!1 String)
(assert (= var875!1 (str.++ var875 var3806)))
(assert true)
(define-const var288 String (append/672562846 var2888 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var2888!1 String)
(assert (= var2888!1 (str.++ var2888 "]")))
(assert true)
(define-const var1084 String (toString/-2075883882 var288)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {entitiesByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), collectionsByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), keySet/1586104932=([java.util.HashMap], java.util.Set), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var303-to-var1457=([java.util.Set], java.lang.Object), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3320=org.hibernate.engine.internal.StatefulPersistenceContext, var2134=r0, var2097=java.util.HashMap, var2697=$r1, var3997=$r15, var2109=r4, var3187=$r5, var667=$r6, var303=java.util.Set, var357=$r7, var1457=java.lang.Object, var3806=$r16, var1656=$r8, var2409=$r9, var173=$r10, var875=$r11, var2888=$r12, var288=$r13, var1084=$r14}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var3320, r0=var2134, java.util.HashMap=var2097, $r1=var2697, $r15=var3997, r4=var2109, $r5=var3187, $r6=var667, java.util.Set=var303, $r7=var357, java.lang.Object=var1457, $r16=var3806, $r8=var1656, $r9=var2409, $r10=var173, $r11=var875, $r12=var2888, $r13=var288, $r14=var1084}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	$r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	$r15 = "[]";	goto [?= r4 = $r15];	r4 = $r15;	$r5 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	if $r5 != null goto $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	$r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	$r7 = virtualinvoke $r6.<java.util.HashMap: java.util.Set keySet()>();	$r16 = virtualinvoke $r7.<java.lang.Object: java.lang.String toString()>();	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PersistenceContext[entityKeys=");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", collectionKeys=");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 5