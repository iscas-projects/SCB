(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1991 0)
(declare-sort var2624 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-fun className/1454253499 (var1991) String)
(declare-fun mappedClass/1454253499 (var1991) ClassObject)
(declare-const null-var1991 var1991)
(declare-const null-String String)
(declare-const null-ClassObject ClassObject)
(declare-const var3503 var1991) ; Statement: r0 := @this: org.hibernate.mapping.PersistentClass 
(assert (not (= var3503 null-var1991)))
(declare-const var1600 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1600 null-String)))
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var1600 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var415 String (intern/-1326102057 var1600)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var3503!1 var1991)
(assert (not (= var3503!1 null-var1991)))
(assert (= (className/1454253499 var3503!1) var415)) ; Statement: r0.<org.hibernate.mapping.PersistentClass: java.lang.String className> = $r2 
(declare-const var3503!2 var1991)
(assert (not (= var3503!2 null-var1991)))
(assert (= (mappedClass/1454253499 var3503!2) null-ClassObject)) ; Statement: r0.<org.hibernate.mapping.PersistentClass: java.lang.Class mappedClass> = null 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String), className/1454253499=([org.hibernate.mapping.PersistentClass], java.lang.String), mappedClass/1454253499=([org.hibernate.mapping.PersistentClass], java.lang.Class)}
; {var1991=org.hibernate.mapping.PersistentClass, var3503=r0, var1600=r1, var2624=null_type, var415=$r2}
; {org.hibernate.mapping.PersistentClass=var1991, r0=var3503, r1=var1600, null_type=var2624, $r2=var415}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.PersistentClass;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.PersistentClass: java.lang.String className> = $r2;	r0.<org.hibernate.mapping.PersistentClass: java.lang.Class mappedClass> = null;	return
;block_num 3