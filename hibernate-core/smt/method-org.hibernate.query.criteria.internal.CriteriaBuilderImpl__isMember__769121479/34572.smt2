(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var776 0)
(declare-sort var780 0)
(declare-sort var1886 0)
(declare-sort var3999 0)
(declare-sort var260 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const var3999!class ClassObject)
(declare-fun isInstance/451912363 (ClassObject var780) Bool)
(declare-fun cast-from-var1886-to-var780 (var1886) var780)
(declare-fun var260-init () var260)
(declare-fun cast-from-var1886-to-var3999 (var1886) var3999)
(declare-fun <init>/1879613821 (var260 var776 var780 var3999) void)
(declare-const null-var776 var776)
(declare-const null-var780 var780)
(declare-const null-var1886 var1886)
(declare-const var1650 var776) ; Statement: r3 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl 
(assert (not (= var1650 null-var776)))
(declare-const var3087 var780) ; Statement: r4 := @parameter0: java.lang.Object 
(assert (not (= var3087 null-var780)))
(declare-const var3112 var1886) ; Statement: r0 := @parameter1: javax.persistence.criteria.Expression 
(assert (not (= var3112 null-var1886)))
(define-const var2989 ClassObject var3999!class) ; Statement: $r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;" 
(assert true)
(define-const var1708 Bool (isInstance/451912363 var2989 (cast-from-var1886-to-var780 var3112))) ; Statement: $z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate 
(assert (not (= (ite var1708 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1293 var260 var260-init) ; Statement: $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate 
(define-const var3923 var3999 (cast-from-var1886-to-var3999 var3112)) ; Statement: $r5 = (org.hibernate.query.criteria.internal.path.PluralAttributePath) r0 
(assert true)
;(assert (<init>/1879613821 var1293 var1650 var3087 var3923)) ; Statement: specialinvoke $r2.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: void <init>(org.hibernate.query.criteria.internal.CriteriaBuilderImpl,java.lang.Object,org.hibernate.query.criteria.internal.path.PluralAttributePath)>(r3, r4, $r5) 

(declare-const var1293!1 var260)
(declare-const var1650!1 var776)
(declare-const var3087!1 var780)
(declare-const var3923!1 var3999)
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {isInstance/451912363=([java.lang.Class, java.lang.Object], boolean), cast-from-var1886-to-var780=([javax.persistence.criteria.Expression], java.lang.Object), var260-init=([], org.hibernate.query.criteria.internal.predicate.MemberOfPredicate), cast-from-var1886-to-var3999=([javax.persistence.criteria.Expression], org.hibernate.query.criteria.internal.path.PluralAttributePath), <init>/1879613821=([org.hibernate.query.criteria.internal.predicate.MemberOfPredicate, org.hibernate.query.criteria.internal.CriteriaBuilderImpl, java.lang.Object, org.hibernate.query.criteria.internal.path.PluralAttributePath], void)}
; {var776=org.hibernate.query.criteria.internal.CriteriaBuilderImpl, var1650=r3, var780=java.lang.Object, var3087=r4, var1886=javax.persistence.criteria.Expression, var3112=r0, var3999=org.hibernate.query.criteria.internal.path.PluralAttributePath, var2989=$r1, var1708=$z0, var260=org.hibernate.query.criteria.internal.predicate.MemberOfPredicate, var1293=$r2, var3923=$r5}
; {org.hibernate.query.criteria.internal.CriteriaBuilderImpl=var776, r3=var1650, java.lang.Object=var780, r4=var3087, javax.persistence.criteria.Expression=var1886, r0=var3112, org.hibernate.query.criteria.internal.path.PluralAttributePath=var3999, $r1=var2989, $z0=var1708, org.hibernate.query.criteria.internal.predicate.MemberOfPredicate=var260, $r2=var1293, $r5=var3923}
;seq 
;cnt {}
;stmts r3 := @this: org.hibernate.query.criteria.internal.CriteriaBuilderImpl;	r4 := @parameter0: java.lang.Object;	r0 := @parameter1: javax.persistence.criteria.Expression;	$r1 = class "Lorg/hibernate/query/criteria/internal/path/PluralAttributePath;";	$z0 = virtualinvoke $r1.<java.lang.Class: boolean isInstance(java.lang.Object)>(r0);	if $z0 != 0 goto $r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate;	$r2 = new org.hibernate.query.criteria.internal.predicate.MemberOfPredicate;	$r5 = (org.hibernate.query.criteria.internal.path.PluralAttributePath) r0;	specialinvoke $r2.<org.hibernate.query.criteria.internal.predicate.MemberOfPredicate: void <init>(org.hibernate.query.criteria.internal.CriteriaBuilderImpl,java.lang.Object,org.hibernate.query.criteria.internal.path.PluralAttributePath)>(r3, r4, $r5);	return $r2
;block_num 2