(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1757 0)
(declare-sort var466 0)
(declare-sort var652 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPropertyPath/-1937907098 (var1757) String)
(declare-fun getPropertyMapping/-1605408675 (var1757) var466)
(declare-fun var466_toType/-7252846 (var466 String) var652)
(declare-const null-var1757 var1757)
(declare-const null-var652 var652)
(declare-const var307 var1757) ; Statement: r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser 
(assert (not (= var307 null-var1757)))
(assert true)
(define-const var3650 String (getPropertyPath/-1937907098 var307)) ; Statement: r1 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String getPropertyPath()>() 
(assert true)
(define-const var1157 var466 (getPropertyMapping/-1605408675 var307)) ; Statement: $r2 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>() 
(define-const var1054 var652 (var466_toType/-7252846 var1157 var3650)) ; Statement: r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.PropertyMapping: org.hibernate.type.Type toType(java.lang.String)>(r1) 
 ; Statement: if r3 != null goto return r3 
(assert (not (= var1054 null-var652))) ; Cond: r3 != null 
 ; Statement: return r3 
(check-sat)
(get-model)
(get-unsat-core)
; {getPropertyPath/-1937907098=([org.hibernate.hql.internal.classic.PathExpressionParser], java.lang.String), getPropertyMapping/-1605408675=([org.hibernate.hql.internal.classic.PathExpressionParser], org.hibernate.persister.entity.PropertyMapping), var466_toType/-7252846=([org.hibernate.persister.entity.PropertyMapping, java.lang.String], org.hibernate.type.Type)}
; {var1757=org.hibernate.hql.internal.classic.PathExpressionParser, var307=r0, var3650=r1, var466=org.hibernate.persister.entity.PropertyMapping, var1157=$r2, var652=org.hibernate.type.Type, var1054=r3}
; {org.hibernate.hql.internal.classic.PathExpressionParser=var1757, r0=var307, r1=var3650, org.hibernate.persister.entity.PropertyMapping=var466, $r2=var1157, org.hibernate.type.Type=var652, r3=var1054}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.hql.internal.classic.PathExpressionParser;	r1 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: java.lang.String getPropertyPath()>();	$r2 = specialinvoke r0.<org.hibernate.hql.internal.classic.PathExpressionParser: org.hibernate.persister.entity.PropertyMapping getPropertyMapping()>();	r3 = interfaceinvoke $r2.<org.hibernate.persister.entity.PropertyMapping: org.hibernate.type.Type toType(java.lang.String)>(r1);	if r3 != null goto return r3;	return r3
;block_num 2