(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var496 0)
(declare-sort var1118 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyPath/-1937907098 (var496) String)
(declare-fun getPropertyMapping/-1605408675 (var496) var1118)
(declare-fun currentName/2096745176 (var496) String)
(declare-fun var1118_toColumns/701355653 (var1118 String String) (Array Int String))
(declare-const null-var496 var496)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const var3253 var496) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var3253 null-var496)))
(assert true)
(define-const var3661 String (getPropertyPath/-1937907098 var3253)) ; Statement: r1 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String getPropertyPath()>() 
(assert true)
(define-const var547 var1118 (getPropertyMapping/-1605408675 var3253)) ; Statement: $r3 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>() 
(define-const var2156 String (currentName/2096745176 var3253)) ; Statement: $r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName> 
(define-const var2700 (Array Int String) (var1118_toColumns/701355653 var547 var2156 var3661)) ; Statement: r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r2, r1) 
 ; Statement: if r4 != null goto return r4 
(assert (not (= var2700 null-__Array__Int__String__))) ; Cond: r4 != null 
 ; Statement: return r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyPath/-1937907098=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), getPropertyMapping/-1605408675=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.persister.entity.PropertyMapping), currentName/2096745176=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), var1118_toColumns/701355653=([org.hibernate.persister.entity.PropertyMapping, java.lang.String, java.lang.String], java.lang.String[])}
; {var496=org.hibernate.hql.internal.classic.PathExpressionParser, var3253=r0, var3661=r1, var1118=org.hibernate.persister.entity.PropertyMapping, var547=$r3, var2156=$r2, var2700=r4}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var496, r0=var3253, r1=var3661, org.hibernate.persister.entity.PropertyMapping=var1118, $r3=var547, $r2=var2156, r4=var2700}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r1 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String getPropertyPath()>();	$r3 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>();	$r2 = r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String currentName>;	r4 = interfaceinvoke $r3.<org.hibernate.persister.entity.PropertyMapping: java.lang.String[] toColumns(java.lang.String,java.lang.String)>($r2, r1);	if r4 != null goto return r4;	return r4
;block_num 2