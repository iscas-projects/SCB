(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3028 0)
(declare-sort var507 0)
(declare-sort var1475 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getCorrelationRestrictionsWhereFragment/833732409 (var3028) String)
(declare-fun getRestriction/1009987473 (var3028) var1475)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-const null-var3028 var3028)
(declare-const null-String String)
(declare-const null-var507 var507)
(declare-const null-var1475 var1475)
(declare-const var1338 var3028) ; Statement: r0 := @this: org.hibernate.query.criteria.internal.QueryStructure 
(assert (not (= var1338 null-var3028)))
(declare-const var1976 String) ; Statement: r6 := @parameter0: java.lang.StringBuilder 
(assert (not (= var1976 null-String)))
(declare-const var3294 var507) ; Statement: r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext 
(assert (not (= var3294 null-var507)))
(assert true)
(define-const var2784 String (getCorrelationRestrictionsWhereFragment/833732409 var1338)) ; Statement: r1 = specialinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: java.lang.String getCorrelationRestrictionsWhereFragment()>() 
(assert true)
(define-const var2449 var1475 (getRestriction/1009987473 var1338)) ; Statement: $r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: javax.persistence.criteria.Predicate getRestriction()>() 
 ; Statement: if $r2 != null goto $r5 = interfaceinvoke r3.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>() 
(assert (not (not (= var2449 null-var1475)))) ; Negate: Cond: $r2 != null  
(assert true)
(define-const var3022 Bool (isEmpty/-1285796103 var2784)) ; Statement: $z2 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z2 == 0 goto $r5 = interfaceinvoke r3.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>() 
(assert (not (= (ite var3022 1 0) 0))) ; Negate: Cond: $z2 == 0  
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getCorrelationRestrictionsWhereFragment/833732409=([org.hibernate.query.criteria.internal.QueryStructure], java.lang.String), getRestriction/1009987473=([org.hibernate.query.criteria.internal.QueryStructure], javax.persistence.criteria.Predicate), isEmpty/-1285796103=([java.lang.String], boolean)}
; {var3028=org.hibernate.query.criteria.internal.QueryStructure, var1338=r0, var1976=r6, var507=org.hibernate.query.criteria.internal.compile.RenderingContext, var3294=r3, var2784=r1, var1475=javax.persistence.criteria.Predicate, var2449=$r2, var3022=$z2}
; {org.hibernate.query.criteria.internal.QueryStructure=var3028, r0=var1338, r6=var1976, org.hibernate.query.criteria.internal.compile.RenderingContext=var507, r3=var3294, r1=var2784, javax.persistence.criteria.Predicate=var1475, $r2=var2449, $z2=var3022}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: org.hibernate.query.criteria.internal.QueryStructure;	r6 := @parameter0: java.lang.StringBuilder;	r3 := @parameter1: org.hibernate.query.criteria.internal.compile.RenderingContext;	r1 = specialinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: java.lang.String getCorrelationRestrictionsWhereFragment()>();	$r2 = virtualinvoke r0.<org.hibernate.query.criteria.internal.QueryStructure: javax.persistence.criteria.Predicate getRestriction()>();	if $r2 != null goto $r5 = interfaceinvoke r3.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>();	$z2 = virtualinvoke r1.<java.lang.String: boolean isEmpty()>();	if $z2 == 0 goto $r5 = interfaceinvoke r3.<org.hibernate.query.criteria.internal.compile.RenderingContext: org.hibernate.internal.util.collections.Stack getClauseStack()>();	return
;block_num 3