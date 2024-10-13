(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1205 0)
(declare-sort var932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-const null-var1205 var1205)
(declare-const null-String String)
(declare-const var190 var1205) ; Statement: r5 := @this: org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping 
(assert (not (= var190 null-var1205)))
(declare-const var1835 String) ; Statement: r0 := @parameter0: java.lang.String 
(assert (not (= var1835 null-String)))
(define-const var1555 String "index") ; Statement: $r1 = "index" 
(assert true)
(define-const var1387 Bool (= var1555 var1835)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0) 
 ; Statement: if $z0 != 0 goto return 
(assert (not (= (ite var1387 1 0) 0))) ; Cond: $z0 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {}
; {var1205=org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping, var190=r5, var1835=r0, var932=null_type, var1555=$r1, var1387=$z0}
; {org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping=var1205, r5=var190, r0=var1835, null_type=var932, $r1=var1555, $z0=var1387}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r5 := @this: org.hibernate.hql.internal.ast.tree.FromElementType$SpecialManyToManyCollectionPropertyMapping;	r0 := @parameter0: java.lang.String;	$r1 = "index";	$z0 = virtualinvoke $r1.<java.lang.String: boolean equals(java.lang.Object)>(r0);	if $z0 != 0 goto return;	return
;block_num 2