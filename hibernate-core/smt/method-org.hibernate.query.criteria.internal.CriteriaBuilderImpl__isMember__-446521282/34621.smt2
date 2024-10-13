(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1127 0)
(declare-sort var184 0)
(declare-sort var2001 0)
(declare-sort var209 0)
(declare-sort var410 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var2001!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var209) Bool)
(declare-fun cast-from-var184-to-var209 (var184) var209)
(declare-fun var410-init () var410)
(declare-fun cast-from-var184-to-var2001 (var184) var2001)
(declare-fun <init>/207494006 (var410 var1127 var184 var2001) void)
(declare-const null-var1127 var1127)
(declare-const null-var184 var184)
(declare-const var474 var1127) ; Statement: r3 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var474 null-var1127)))
(declare-const var1768 var184) ; Statement: r4 := @parameter0: javax.persistence.criteria.Expression 
(assert (not (= var1768 null-var184)))
(declare-const var3006 var184) ; Statement: r0 := @parameter1: javax.persistence.criteria.Expression 
(assert (not (= var3006 null-var184)))
(define-const var1026 ClassObject var2001!class) ; Statement: $r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;" 
(assert true)
(define-const var2697 Bool (isInstance/451912363 var1026 (cast-from-var184-to-var209 var3006))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate 
(assert (not (= (ite var2697 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1212 var410 var410-init) ; Statement: $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate 
(define-const var3232 var2001 (cast-from-var184-to-var2001 var3006)) ; Statement: $r5 = (org.hibernate.query.criteria.internal.path.PluralAttributePath) r0 
(assert true)
;(assert (<init>/207494006 var1212 var474 var1768 var3232)) ; Statement: specialinvoke $r2.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: void <init>(org.hibernate.query.criteria.internal.CriteriaBuilderImpl,javax.persistence.criteria.Expression,org.hibernate.query.criteria.internal.path.PluralAttributePath)>(r3, r4, $r5) 

(declare-const var1212!1 var410)
(declare-const var474!1 var1127)
(declare-const var1768!1 var184)
(declare-const var3232!1 var2001)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var184-to-var209=([javax.persistence.criteria.Expression], java.lang.Object), var410-init=([], org.hibernate.query.criteria.internal.predicate.MemberOfPredicate), cast-from-var184-to-var2001=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.path.PluralAttributePath), <init>/207494006=([org.hibernate.query.criteria.internal.predicate.MemberOfPredicate, org.hibernate.query.criteria.internal.CriteriaBuilderImpl, javax.persistence.criteria.Expression, org.hibernate.query.criteria.internal.path.PluralAttributePath], void)}
; {var1127=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var474=r3, var184=javax.persistence.criteria.Expression, var1768=r4, var3006=r0, var2001=org.hibernate.query.criteria.internal.path.PluralAttributePath, var1026=$r1, var209=java.lang.Object, var2697=$z0, var410=org.hibernate.query.criteria.internal.predicate.MemberOfPredicate, var1212=$r2, var3232=$r5}
; {org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var1127, r3=var474, javax.persistence.criteria.Expression=var184, r4=var1768, r0=var3006, org.hibernate.query.criteria.internal.path.PluralAttributePath=var2001, $r1=var1026, java.lang.Object=var209, $z0=var2697, org.hibernate.query.criteria.internal.predicate.MemberOfPredicate=var410, $r2=var1212, $r5=var3232}
;seq 
;cnt {}
;stmts r3 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r4 := @parameter0: javax.persistence.criteria.Expression;	r0 := @parameter1: javax.persistence.criteria.Expression;	$r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate;	$r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate;	$r5 = (org.hibernate.query.criteria.internal.path.PluralAttributePath) r0;	specialinvoke $r2.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: void <init>(org.hibernate.query.criteria.internal.CriteriaBuilderImpl,javax.persistence.criteria.Expression,org.hibernate.query.criteria.internal.path.PluralAttributePath)>(r3, r4, $r5);	return $r2
;block_num 2