(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3437 0)
(declare-sort var2845 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-fun loaderName/1454253499 (var3437) String)
(declare-const null-var3437 var3437)
(declare-const null-String String)
(declare-const var1210 var3437) ; Statement: r0 := @this: org.hibernate.mapping.PersistentClass 
(assert (not (= var1210 null-var3437)))
(declare-const var1718 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1718 null-String)))
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var1718 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var2256 String (intern/-1326102057 var1718)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var1210!1 var3437)
(assert (not (= var1210!1 null-var3437)))
(assert (= (loaderName/1454253499 var1210!1) var2256)) ; Statement: r0.<org.hibernate.mapping.PersistentClass: java.lang.String loaderName> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String), loaderName/1454253499=([org.hibernate.mapping.PersistentClass], java.lang.String)}
; {var3437=org.hibernate.mapping.PersistentClass, var1210=r0, var1718=r1, var2845=null_type, var2256=$r2}
; {org.hibernate.mapping.PersistentClass=var3437, r0=var1210, r1=var1718, null_type=var2845, $r2=var2256}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.PersistentClass;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.PersistentClass: java.lang.String loaderName> = $r2;	return
;block_num 3