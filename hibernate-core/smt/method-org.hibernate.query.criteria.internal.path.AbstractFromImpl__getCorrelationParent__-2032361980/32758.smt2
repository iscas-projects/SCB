(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3187 0)
(declare-sort var755 0)
(declare-sort var394 0)
(declare-sort var332 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun correlationParent/-124924633 (var3187) var755)
(declare-fun var394-init () var394)
(declare-fun arr-var332-init () (Array Int var332))
(declare-fun getPathIdentifier/-501480733 (var3187) String)
(declare-fun cast-from-String-to-var332 (String) var332)
(declare-fun String_format/1339386452 (String (Array Int var332)) String)
(declare-fun <init>/-1092629202 (var394 String) void)
(declare-const null-var3187 var3187)
(declare-const null-var755 var755)
(declare-const null-__Array__Int__var332__ (Array Int var332))
(declare-const var3628 var3187) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.path.AbstractFromImpl 
(assert (not (= var3628 null-var3187)))
(define-const var1716 var755 (correlationParent/-124924633 var3628)) ; Statement: $r1 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent> 
 ; Statement: if $r1 != null goto $r2 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent> 
(assert (not (not (= var1716 null-var755)))) ; Negate: Cond: $r1 != null  
(define-const var866 var394 var394-init) ; Statement: $r3 = new java.lang.IllegalStateException 
(define-const var2126 (Array Int var332) arr-var332-init) ; Statement: $r4 = newarray (java.lang.Object)[1] 
(assert true)
(define-const var153 String (getPathIdentifier/-501480733 var3628)) ; Statement: $r5 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: java.lang.String getPathIdentifier()>() 
(declare-const var2126!1 (Array Int var332))
(assert (not (= var2126!1 null-__Array__Int__var332__)))
(assert (= (select var2126!1 0) (cast-from-String-to-var332 var153))) ; Statement: $r4[0] = $r5 
(define-const var2224 String (String_format/1339386452 "Criteria query From node [%s] is not part of a subquery correlation" var2126!1)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Criteria query From node [%s] is not part of a subquery correlation", $r4) 
(assert true)
;(assert (<init>/-1092629202 var866 var2224)) ; Statement: specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6) 

(declare-const var866!1 var394)
(declare-const var2224!1 String)
 ; Statement: throw $r3 
(check-sat)
(get-model)
(get-unsat-core)
; {correlationParent/-124924633=([org.hibernate.query.criteria.internal.path.AbstractFromImpl], org.hibernate.query.criteria.internal.FromImplementor), var394-init=([], java.lang.IllegalStateException), arr-var332-init=([], java.lang.Object[]), getPathIdentifier/-501480733=([org.hibernate.query.criteria.internal.path.AbstractFromImpl], java.lang.String), cast-from-String-to-var332=([java.lang.String], java.lang.Object), String_format/1339386452=([java.lang.String, java.lang.Object[]], java.lang.String), <init>/-1092629202=([java.lang.IllegalStateException, java.lang.String], void)}
; {var3187=org.hibernate.query.criteria.internal.path.AbstractFromImpl, var3628=r0, var755=org.hibernate.query.criteria.internal.FromImplementor, var1716=$r1, var394=java.lang.IllegalStateException, var866=$r3, var332=java.lang.Object, var2126=$r4, var153=$r5, var2224=$r6}
; {org.hibernate.query.criteria.internal.path.AbstractFromImpl=var3187, r0=var3628, org.hibernate.query.criteria.internal.FromImplementor=var755, $r1=var1716, java.lang.IllegalStateException=var394, $r3=var866, java.lang.Object=var332, $r4=var2126, $r5=var153, $r6=var2224}
;seq <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>
;cnt {"<java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.path.AbstractFromImpl;	$r1 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent>;	if $r1 != null goto $r2 = r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: org.hibernate.query.criteria.internal.FromImplementor correlationParent>;	$r3 = new java.lang.IllegalStateException;	$r4 = newarray (java.lang.Object)[1];	$r5 = virtualinvoke r0.<org.hibernate.query.criteria.internal.path.AbstractFromImpl: java.lang.String getPathIdentifier()>();	$r4[0] = $r5;	$r6 = staticinvoke <java.lang.String: java.lang.String format(java.lang.String,java.lang.Object[])>("Criteria query From node [%s] is not part of a subquery correlation", $r4);	specialinvoke $r3.<java.lang.IllegalStateException: void <init>(java.lang.String)>($r6);	throw $r3
;block_num 2