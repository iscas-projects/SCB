(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1815 0)
(declare-sort var3259 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun intern/-1326102057 (String) String)
(declare-fun name/75367035 (var1815) String)
(declare-const null-var1815 var1815)
(declare-const null-String String)
(declare-const var2206 var1815) ; Statement: r0 := @this: org.hibernate.mapping.Property 
(assert (not (= var2206 null-var1815)))
(declare-const var642 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var642 null-String)))
 ; Statement: if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert (not (= var642 null-String))) ; Cond: r1 != null 
(assert true)
(define-const var3748 String (intern/-1326102057 var642)) ; Statement: $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>() 
(assert true) ; Non Conditional
(declare-const var2206!1 var1815)
(assert (not (= var2206!1 null-var1815)))
(assert (= (name/75367035 var2206!1) var3748)) ; Statement: r0.<org.hibernate.mapping.Property: java.lang.String name> = $r2 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {intern/-1326102057=([java.lang.String], java.lang.String), name/75367035=([org.hibernate.mapping.Property], java.lang.String)}
; {var1815=org.hibernate.mapping.Property, var2206=r0, var642=r1, var3259=null_type, var3748=$r2}
; {org.hibernate.mapping.Property=var1815, r0=var2206, r1=var642, null_type=var3259, $r2=var3748}
;seq <java.lang.String: java.lang.String intern()>
;cnt {"<java.lang.String: java.lang.String intern()>": 1}
;stmts r0 := @this: org.hibernate.mapping.Property;	r1 := @parameter0: java.lang.String;	if r1 != null goto $r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	$r2 = virtualinvoke r1.<java.lang.String: java.lang.String intern()>();	r0.<org.hibernate.mapping.Property: java.lang.String name> = $r2;	return
;block_num 3