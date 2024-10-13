(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2028 0)
(declare-sort var1007 0)
(declare-sort var601 0)
(declare-sort var452 0)
(declare-sort var3108 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun createFromElement/1674376573 (var2028 var601) var3108)
(declare-fun initializeAndAddFromElement/-360232603 (var2028 var3108 String String var601 var452 String) void)
(declare-const null-var2028 var2028)
(declare-const null-String String)
(declare-const null-var601 var601)
(declare-const null-var452 var452)
(declare-const var12 var2028) ; Statement: r1 := @this: org.hibernate.hql.internal.ast.tree.FromElementFactory 
(assert (not (= var12 null-var2028)))
(declare-const var1989 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1989 null-String)))
(declare-const var2263 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2263 null-String)))
(declare-const var2925 var601) ; Statement: r0 := @parameter2: org.hibernate.persister.entity.EntityPersister 
(assert (not (= var2925 null-var601)))
(declare-const var1640 var452) ; Statement: r5 := @parameter3: org.hibernate.type.EntityType 
(assert (not (= var1640 null-var452)))
(declare-const var2184 String) ; Statement: r6 := @parameter4: java.lang.String 
(assert (not (= var2184 null-String)))
(define-const var583 Bool true) ; Statement: $z0 = r0 instanceof org.hibernate.persister.entity.Joinable 
 ; Statement: if $z0 != 0 goto r2 = specialinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement createFromElement(org.hibernate.persister.entity.EntityPersister)>(r0) 
(assert (not (= (ite var583 1 0) 0))) ; Cond: $z0 != 0 
(assert true)
(define-const var1066 var3108 (createFromElement/1674376573 var12 var2925)) ; Statement: r2 = specialinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement createFromElement(org.hibernate.persister.entity.EntityPersister)>(r0) 
(assert true)
;(assert (initializeAndAddFromElement/-360232603 var12 var1066 var1989 var2263 var2925 var1640 var2184)) ; Statement: specialinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElementFactory: void initializeAndAddFromElement(org.hibernate.hql.internal.ast.tree.FromElement,java.lang.String,java.lang.String,org.hibernate.persister.entity.EntityPersister,org.hibernate.type.EntityType,java.lang.String)>(r2, r3, r4, r0, r5, r6) 

(declare-const var12!1 var2028)
(declare-const var1066!1 var3108)
(declare-const var1989!1 String)
(declare-const var2263!1 String)
(declare-const var2925!1 var601)
(declare-const var1640!1 var452)
(declare-const var2184!1 String)
 ; Statement: return r2 
(check-sat)
(get-model)
(get-unsat-core)
; {createFromElement/1674376573=([org.hibernate.hql.internal.ast.tree.FromElementFactory, org.hibernate.persister.entity.EntityPersister], org.hibernate.hql.internal.ast.tree.FromElement), initializeAndAddFromElement/-360232603=([org.hibernate.hql.internal.ast.tree.FromElementFactory, org.hibernate.hql.internal.ast.tree.FromElement, java.lang.String, java.lang.String, org.hibernate.persister.entity.EntityPersister, org.hibernate.type.EntityType, java.lang.String], void)}
; {var2028=org.hibernate.hql.internal.ast.tree.FromElementFactory, var12=r1, var1989=r3, var1007=null_type, var2263=r4, var601=org.hibernate.persister.entity.EntityPersister, var2925=r0, var452=org.hibernate.type.EntityType, var1640=r5, var2184=r6, var583=$z0, var3108=org.hibernate.hql.internal.ast.tree.FromElement, var1066=r2}
; {org.hibernate.hql.internal.ast.tree.FromElementFactory=var2028, r1=var12, r3=var1989, null_type=var1007, r4=var2263, org.hibernate.persister.entity.EntityPersister=var601, r0=var2925, org.hibernate.type.EntityType=var452, r5=var1640, r6=var2184, $z0=var583, org.hibernate.hql.internal.ast.tree.FromElement=var3108, r2=var1066}
;seq 
;cnt {}
;stmts r1 := @this: org.hibernate.hql.internal.ast.tree.FromElementFactory;	r3 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	r0 := @parameter2: org.hibernate.persister.entity.EntityPersister;	r5 := @parameter3: org.hibernate.type.EntityType;	r6 := @parameter4: java.lang.String;	$z0 = r0 instanceof org.hibernate.persister.entity.Joinable;	if $z0 != 0 goto r2 = specialinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement createFromElement(org.hibernate.persister.entity.EntityPersister)>(r0);	r2 = specialinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElementFactory: org.hibernate.hql.internal.ast.tree.FromElement createFromElement(org.hibernate.persister.entity.EntityPersister)>(r0);	specialinvoke r1.<org.hibernate.hql.internal.ast.tree.FromElementFactory: void initializeAndAddFromElement(org.hibernate.hql.internal.ast.tree.FromElement,java.lang.String,java.lang.String,org.hibernate.persister.entity.EntityPersister,org.hibernate.type.EntityType,java.lang.String)>(r2, r3, r4, r0, r5, r6);	return r2
;block_num 2