(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1033 0)
(declare-sort var35 0)
(declare-sort var347 0)
(declare-sort var669 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entitiesByKey/298931879 (var1033) var35)
(declare-fun keySet/1586104932 (var35) var347)
(declare-fun toString/-522406933 (var669) String)
(declare-fun cast-from-var347-to-var669 (var347) var669)
(declare-fun collectionsByKey/298931879 (var1033) var35)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1033 var1033)
(declare-const null-var35 var35)
(declare-const var3656 var1033) ; Statement: r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var3656 null-var1033)))
(define-const var3529 var35 (entitiesByKey/298931879 var3656)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
(assert (not (= var3529 null-var35))) ; Cond: $r1 != null 
(define-const var766 var35 (entitiesByKey/298931879 var3656)) ; Statement: $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
(assert true)
(define-const var3141 var347 (keySet/1586104932 var766)) ; Statement: $r3 = virtualinvoke $r2.<java.util.HashMap: java.util.Set keySet()>() 
(assert true)
(define-const var918 String (toString/-522406933 (cast-from-var347-to-var669 var3141))) ; Statement: $r15 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>() 
(assert true) ; Non Conditional
(define-const var2282 String var918) ; Statement: r4 = $r15 
(define-const var287 var35 (collectionsByKey/298931879 var3656)) ; Statement: $r5 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
(assert (not (not (= var287 null-var35)))) ; Negate: Cond: $r5 != null  
(define-const var2249 String "[]") ; Statement: $r16 = "[]" 
 ; Statement: goto [?= $r8 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var2426 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2426)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2426!1 String)
(assert (= var2426!1 ""))
(assert true)
(define-const var525 String (append/672562846 var2426!1 "PersistenceContext[entityKeys=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PersistenceContext[entityKeys=") 
(declare-const var2426!2 String)
(assert (= var2426!2 (str.++ var2426!1 "PersistenceContext[entityKeys=")))
(assert true)
(define-const var2748 String (append/672562846 var525 var2282)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var525!1 String)
(assert (= var525!1 (str.++ var525 var2282)))
(assert true)
(define-const var891 String (append/672562846 var2748 ", collectionKeys=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", collectionKeys=") 
(declare-const var2748!1 String)
(assert (= var2748!1 (str.++ var2748 ", collectionKeys=")))
(assert true)
(define-const var1842 String (append/672562846 var891 var2249)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var891!1 String)
(assert (= var891!1 (str.++ var891 var2249)))
(assert true)
(define-const var1237 String (append/672562846 var1842 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var1842!1 String)
(assert (= var1842!1 (str.++ var1842 "]")))
(assert true)
(define-const var3806 String (toString/-2075883882 var1237)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {entitiesByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), keySet/1586104932=([java.util.HashMap], java.util.Set), toString/-522406933=([java.lang.Object], java.lang.String), cast-from-var347-to-var669=([java.util.Set], java.lang.Object), collectionsByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1033=org.hibernate.engine.internal.StatefulPersistenceContext, var3656=r0, var35=java.util.HashMap, var3529=$r1, var766=$r2, var347=java.util.Set, var3141=$r3, var669=java.lang.Object, var918=$r15, var2282=r4, var287=$r5, var2249=$r16, var2426=$r8, var525=$r9, var2748=$r10, var891=$r11, var1842=$r12, var1237=$r13, var3806=$r14}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var1033, r0=var3656, java.util.HashMap=var35, $r1=var3529, $r2=var766, java.util.Set=var347, $r3=var3141, java.lang.Object=var669, $r15=var918, r4=var2282, $r5=var287, $r16=var2249, $r8=var2426, $r9=var525, $r10=var2748, $r11=var891, $r12=var1842, $r13=var1237, $r14=var3806}
;seq <java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	$r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	$r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	$r3 = virtualinvoke $r2.<java.util.HashMap: java.util.Set keySet()>();	$r15 = virtualinvoke $r3.<java.lang.Object: java.lang.String toString()>();	r4 = $r15;	$r5 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	if $r5 != null goto $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	$r16 = "[]";	goto [?= $r8 = new java.lang.StringBuilder];	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PersistenceContext[entityKeys=");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", collectionKeys=");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 5