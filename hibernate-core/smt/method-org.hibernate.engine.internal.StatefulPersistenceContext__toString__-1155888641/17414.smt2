(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1998 0)
(declare-sort var2837 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun entitiesByKey/298931879 (var1998) var2837)
(declare-fun collectionsByKey/298931879 (var1998) var2837)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1998 var1998)
(declare-const null-var2837 var2837)
(declare-const var2052 var1998) ; Statement: r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext 
(assert (not (= var2052 null-var1998)))
(define-const var1941 var2837 (entitiesByKey/298931879 var2052)) ; Statement: $r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey> 
(assert (not (not (= var1941 null-var2837)))) ; Negate: Cond: $r1 != null  
(define-const var2035 String "[]") ; Statement: $r15 = "[]" 
 ; Statement: goto [?= r4 = $r15] 
(assert true) ; Non Conditional
(define-const var177 String var2035) ; Statement: r4 = $r15 
(define-const var1876 var2837 (collectionsByKey/298931879 var2052)) ; Statement: $r5 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
 ; Statement: if $r5 != null goto $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey> 
(assert (not (not (= var1876 null-var2837)))) ; Negate: Cond: $r5 != null  
(define-const var42 String "[]") ; Statement: $r16 = "[]" 
 ; Statement: goto [?= $r8 = new java.lang.StringBuilder] 
(assert true) ; Non Conditional
(define-const var1063 String String-init) ; Statement: $r8 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1063)) ; Statement: specialinvoke $r8.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1063!1 String)
(assert (= var1063!1 ""))
(assert true)
(define-const var1509 String (append/672562846 var1063!1 "PersistenceContext[entityKeys=")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PersistenceContext[entityKeys=") 
(declare-const var1063!2 String)
(assert (= var1063!2 (str.++ var1063!1 "PersistenceContext[entityKeys=")))
(assert true)
(define-const var460 String (append/672562846 var1509 var177)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1509!1 String)
(assert (= var1509!1 (str.++ var1509 var177)))
(assert true)
(define-const var918 String (append/672562846 var460 ", collectionKeys=")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", collectionKeys=") 
(declare-const var460!1 String)
(assert (= var460!1 (str.++ var460 ", collectionKeys=")))
(assert true)
(define-const var131 String (append/672562846 var918 var42)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16) 
(declare-const var918!1 String)
(assert (= var918!1 (str.++ var918 var42)))
(assert true)
(define-const var440 String (append/672562846 var131 "]")) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]") 
(declare-const var131!1 String)
(assert (= var131!1 (str.++ var131 "]")))
(assert true)
(define-const var2442 String (toString/-2075883882 var440)) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r14 
(check-sat)
(get-model)
(get-unsat-core)
; {entitiesByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), collectionsByKey/298931879=([org.hibernate.engine.internal.StatefulPersistenceContext], java.util.HashMap), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1998=org.hibernate.engine.internal.StatefulPersistenceContext, var2052=r0, var2837=java.util.HashMap, var1941=$r1, var2035=$r15, var177=r4, var1876=$r5, var42=$r16, var1063=$r8, var1509=$r9, var460=$r10, var918=$r11, var131=$r12, var440=$r13, var2442=$r14}
; {org.hibernate.engine.internal.StatefulPersistenceContext=var1998, r0=var2052, java.util.HashMap=var2837, $r1=var1941, $r15=var2035, r4=var177, $r5=var1876, $r16=var42, $r8=var1063, $r9=var1509, $r10=var460, $r11=var918, $r12=var131, $r13=var440, $r14=var2442}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 5,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.engine.internal.StatefulPersistenceContext;	$r1 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	if $r1 != null goto $r2 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap entitiesByKey>;	$r15 = "[]";	goto [?= r4 = $r15];	r4 = $r15;	$r5 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	if $r5 != null goto $r6 = r0.<org.hibernate.engine.internal.StatefulPersistenceContext: java.util.HashMap collectionsByKey>;	$r16 = "[]";	goto [?= $r8 = new java.lang.StringBuilder];	$r8 = new java.lang.StringBuilder;	specialinvoke $r8.<java.lang.StringBuilder: void <init>()>();	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("PersistenceContext[entityKeys=");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", collectionKeys=");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r16);	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("]");	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.String toString()>();	return $r14
;block_num 5